contract main {




// =====================  Runtime code  =====================


#
#  - mintFor(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - mintForV2(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#
const MAXIMUS_AVAX = 0xa67404fd7c5625eddb8c00dfae9ca576c14d531b

const MAXIMUS = 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36

const MAXIMUS_POOL = 0x53ea5a25f1048deedf429fbb97a8f08e6f31e36f

const AVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const DEV = 0xf80633724f03dd47d708bde889a283233f2121c1

const FEE_MAX = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address maximusChefAddress;
mapping of uint8 stor102;
uint256 PERFORMANCE_FEE;
uint256 WITHDRAWAL_FEE_FREE_PERIOD;
uint256 WITHDRAWAL_FEE;
uint256 stor106;
uint256 stor107;

function owner() {
    return owner
}

function maximusChef() {
    return maximusChefAddress
}

function WITHDRAWAL_FEE() {
    return WITHDRAWAL_FEE
}

function PERFORMANCE_FEE() {
    return PERFORMANCE_FEE
}

function WITHDRAWAL_FEE_FREE_PERIOD() {
    return WITHDRAWAL_FEE_FREE_PERIOD
}

function _fallback() payable {
    revert
}

function freThreshold() {
    if not stor107:
        return 500 * 10^18
    return stor107
}

function floatingRateEmission() {
    if not stor106:
        return 2 * 10^18
    return stor106
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFREThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor107 = arg1
}

function setWithdrawalFeeFreePeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WITHDRAWAL_FEE_FREE_PERIOD = arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 500:
        revert with 0, 'wrong fee'
    WITHDRAWAL_FEE = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 5000:
        revert with 0, 'wrong fee'
    PERFORMANCE_FEE = arg1
}

function setMinter(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor102[address(arg1)] = 0
    else:
        stor102[address(arg1)] = uint8(arg2)
}

function transferMaximusOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
    call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function performanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require arg1
    if arg1 * PERFORMANCE_FEE / arg1 != PERFORMANCE_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * PERFORMANCE_FEE / 10000)
}

function setMaximusChef(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if maximusChefAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d6178696d75734d696e7465723a207365744d6178696d757343686566206f6e6c79206f6e63,
                    mem[203 len 25]
    maximusChefAddress = arg1
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
    staticcall 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.getOwner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        return bool(stor102[address(arg1)])
    else:
        return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawalFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + WITHDRAWAL_FEE_FREE_PERIOD < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + WITHDRAWAL_FEE_FREE_PERIOD <= block.timestamp:
        return 0
    if not arg1:
        return 0
    require arg1
    if arg1 * WITHDRAWAL_FEE / arg1 != WITHDRAWAL_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * WITHDRAWAL_FEE / 10000)
}

function setFloatingRateEmission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734d6178696d75734d696e7465723a20666c6f6174696e6752617465456d697373696f6e2077726f6e672072616e67,
                    mem[211 len 17]
    if arg1 >= 10 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734d6178696d75734d696e7465723a20666c6f6174696e6752617465456d697373696f6e2077726f6e672072616e67,
                    mem[211 len 17]
    stor106 = arg1
}

function shouldMarketBuy() {
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0xaa17c423 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0xb61d8c00 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor107:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0] < 999999999999999000)
        else:
            if ext_call.return_data[0]:
                if 500 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 500 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (500 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 999999999999999000)
    else:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0] < 999999999999999000)
        else:
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * stor107 / ext_call.return_data[0] != stor107:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (ext_call.return_data[0] * stor107 / ext_call.return_data[0] < 999999999999999000)
    revert
}

function mintGov(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
        call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if this.address != 0xf80633724f03dd47d708bde889a283233f2121c1:
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xf80633724f03dd47d708bde889a283233f2121c1, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if not arg1:
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xf80633724f03dd47d708bde889a283233f2121c1, 0
        else:
            require arg1
            if 15 * arg1 / arg1 != 15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
                 gas gas_remaining wei
                args (15 * arg1 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xf80633724f03dd47d708bde889a283233f2121c1, 15 * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if maximusChefAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x774d6178696d75734d696e7465723a2063616c6c6572206e6f7420746865206d6178696d757320636865,
                    mem[206 len 22]
    if arg1:
        require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
        call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if this.address != this.address:
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if not arg1:
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xf80633724f03dd47d708bde889a283233f2121c1, 0
        else:
            require arg1
            if 15 * arg1 / arg1 != 15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0xa0712d68 with:
                 gas gas_remaining wei
                args (15 * arg1 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xf80633724f03dd47d708bde889a283233f2121c1, 15 * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address) > 0:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if ext_code.size(this.address) > 0:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address) > 0:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
    WITHDRAWAL_FEE_FREE_PERIOD = 72 * 24 * 3600
    WITHDRAWAL_FEE = 50
    PERFORMANCE_FEE = 3000
    require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
    call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x53ea5a25f1048deedf429fbb97a8f08e6f31e36f, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function amountMaximusToMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0xb61d8c00 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0xb61d8c00 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0xaa17c423 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor106:
        if not arg1:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0]
            if 2 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return (2 * 10^18 * 0 / ext_call.return_data[0] / 10^18)
        require arg1
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        require arg1 * ext_call.return_data[0] / ext_call.return_data[0]
        if 2 * 10^18 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != 2 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * 10^18 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 0 / ext_call.return_data[0] * stor106 / 0 / ext_call.return_data[0] != stor106:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (0 / ext_call.return_data[0] * stor106 / 10^18)
    require arg1
    if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    require arg1 * ext_call.return_data[0] / ext_call.return_data[0]
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] * stor106 / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != stor106:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg1 * ext_call.return_data[0] / ext_call.return_data[0] * stor106 / 10^18)
}

function safeMaximusTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if maximusChefAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x774d6178696d75734d696e7465723a2063616c6c6572206e6f7420746865206d6178696d757320636865,
                    mem[206 len 22]
    if arg2:
        require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
        staticcall 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
            revert with 0, 'Address: call to non-contract'
        if arg2 > ext_call.return_data[0]:
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0]
                if not transfer(address rg1, uint256 rg2), address(arg1) << 64:
                    revert with 0, 32, 42, 0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, arg2
                if not transfer(address rg1, uint256 rg2), address(arg1) << 64:
                    revert with 0, 32, 42, 0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
}



}
