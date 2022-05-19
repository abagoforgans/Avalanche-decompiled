contract main {




// =====================  Runtime code  =====================


#
#  - mintFor(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - mintForV2(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#
const MAXIMUS_AVAX = 0xd9b1f890a7ebf861737d890d49dc1fe4f7d782f

const MAXIMUS = 0x885d748c00a279b67a7749ec6b03301700dd0455

const MAXIMUS_POOL = 0x5f51b49187db2024ea408e7e21a784a1a34cdb07

const AVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const DEV = 0x697154aeafa1b88a688d159f2bfd90da2cacd108

const FEE_MAX = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address maximusChefAddress;
mapping of uint8 stor102;
uint256 PERFORMANCE_FEE;
uint256 WITHDRAWAL_FEE_PERIOD;
uint256 WITHDRAWAL_FEE;
uint256 stor106;
uint256 stor107;
uint256 sub_be0c29db;
uint256 lastDay;
uint256 sub_b7c140dd;

function lastDay() {
    return lastDay
}

function owner() {
    return owner
}

function maximusChef() {
    return maximusChefAddress
}

function WITHDRAWAL_FEE() {
    return WITHDRAWAL_FEE
}

function sub_b7c140dd(?) {
    return sub_b7c140dd
}

function sub_be0c29db(?) {
    return sub_be0c29db
}

function WITHDRAWAL_FEE_PERIOD() {
    return WITHDRAWAL_FEE_PERIOD
}

function PERFORMANCE_FEE() {
    return PERFORMANCE_FEE
}

function _fallback() payable {
    revert
}

function freThreshold() {
    if 0 == stor107:
        return 500 * 10^18
    return stor107
}

function floatingRateEmission() {
    if 0 == stor106:
        return 2 * 10^18
    return stor106
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f2de0327(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_be0c29db = arg1
    emit 0x9ff90fbe: arg1
}

function setFREThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor107 = arg1
    emit 0x1296da73: arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 500:
        revert with 0, 'wrong fee'
    WITHDRAWAL_FEE = arg1
    emit 0x48dcfdaa: arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 5000:
        revert with 0, 'wrong fee'
    PERFORMANCE_FEE = arg1
    emit PerformanceFeeSet(arg1);
}

function sub_455f9cb4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 720 * 24 * 3600:
        revert with 0, 'wrong withdrawal fee period'
    WITHDRAWAL_FEE_PERIOD = arg1
    emit 0xd56b53a0: arg1
}

function setMinter(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        stor102[address(arg1)] = 0
    else:
        stor102[address(arg1)] = uint8(arg2)
    emit MinterSet(address(arg1), arg2);
}

function transferMaximusOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
    call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function performanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if PERFORMANCE_FEE * arg1 / arg1 != PERFORMANCE_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (PERFORMANCE_FEE * arg1 / 10000)
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
    staticcall 0x885d748c00a279b67a7749ec6b03301700dd0455.0x893d20e8 with:
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
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaximusChef(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if maximusChefAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d6178696d75734d696e7465723a207365744d6178696d757343686566206f6e6c79206f6e63,
                    mem[203 len 25]
    maximusChefAddress = arg1
    emit 0x3ffa848c: arg1
}

function withdrawalFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if WITHDRAWAL_FEE_PERIOD + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if WITHDRAWAL_FEE_PERIOD + arg2 <= block.timestamp:
        return 0
    if not arg1:
        return 0
    if WITHDRAWAL_FEE * arg1 / arg1 != WITHDRAWAL_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (WITHDRAWAL_FEE * arg1 / 10000)
}

function setFloatingRateEmission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    emit 0x95416338: arg1
}

function shouldMarketBuy() {
    require ext_code.size(0xeabe3a541058f6894c97ac11c257c7a3755f1741)
    staticcall 0xeabe3a541058f6894c97ac11c257c7a3755f1741.0xaa17c423 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xeabe3a541058f6894c97ac11c257c7a3755f1741)
    staticcall 0xeabe3a541058f6894c97ac11c257c7a3755f1741.0xb61d8c00 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] < 999999999999999000)
    if 0 == stor107:
        if 500 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 500 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (500 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 999999999999999000)
    if stor107 * ext_call.return_data[0] / ext_call.return_data[0] != stor107:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (stor107 * ext_call.return_data[0] / ext_call.return_data[0] < 999999999999999000)
}

function mintGov(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1:
        require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
        call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0x697154aeafa1b88a688d159f2bfd90da2cacd108 != this.address:
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x697154aeafa1b88a688d159f2bfd90da2cacd108, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
            sub_b7c140dd += arg1
        if not arg1:
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x697154aeafa1b88a688d159f2bfd90da2cacd108, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 15 * arg1 / arg1 != 15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
                 gas gas_remaining wei
                args (15 * arg1 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x697154aeafa1b88a688d159f2bfd90da2cacd108, 15 * arg1 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (15 * arg1 / 100) + sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
            sub_b7c140dd += 15 * arg1 / 100
}

function amountMaximusToMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xeabe3a541058f6894c97ac11c257c7a3755f1741)
    staticcall 0xeabe3a541058f6894c97ac11c257c7a3755f1741.0xb61d8c00 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(0xeabe3a541058f6894c97ac11c257c7a3755f1741)
    staticcall 0xeabe3a541058f6894c97ac11c257c7a3755f1741.0xaa17c423 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == stor106:
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                return 0
            if 2 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return (2 * 10^18 * 0 / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            return 0
        if 2 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 2 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18)
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            return 0
        if stor106 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor106:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (stor106 * 0 / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
        return 0
    if stor106 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != stor106:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (stor106 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18)
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if maximusChefAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x724d6178696d75734d696e7465723a2063616c6c6572206e6f7420746865206d6178696d757320636865,
                    mem[206 len 22]
    if arg1:
        require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
        call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if this.address != this.address:
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
            sub_b7c140dd += arg1
        if not arg1:
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x697154aeafa1b88a688d159f2bfd90da2cacd108, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 15 * arg1 / arg1 != 15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa0712d68 with:
                 gas gas_remaining wei
                args (15 * arg1 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
            call 0x885d748c00a279b67a7749ec6b03301700dd0455.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x697154aeafa1b88a688d159f2bfd90da2cacd108, 15 * arg1 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (15 * arg1 / 100) + sub_b7c140dd < sub_b7c140dd:
                revert with 0, 'SafeMath: addition overflow'
            sub_b7c140dd += 15 * arg1 / 100
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
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
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
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
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
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
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
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
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    WITHDRAWAL_FEE_PERIOD = 72 * 24 * 3600
    WITHDRAWAL_FEE = 50
    PERFORMANCE_FEE = 3000
    require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
    call 0x885d748c00a279b67a7749ec6b03301700dd0455.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5f51b49187db2024ea408e7e21a784a1a34cdb07, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function safeMaximusTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if maximusChefAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x724d6178696d75734d696e7465723a2063616c6c6572206e6f7420746865206d6178696d757320636865,
                    mem[206 len 22]
    if arg2:
        require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
        staticcall 0x885d748c00a279b67a7749ec6b03301700dd0455.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x885d748c00a279b67a7749ec6b03301700dd0455):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0x885d748c00a279b67a7749ec6b03301700dd0455):
            revert with 0, 'Address: call to non-contract'
        if arg2 > ext_call.return_data[0]:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call 0x885d748c00a279b67a7749ec6b03301700dd0455 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call 0x885d748c00a279b67a7749ec6b03301700dd0455 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x665361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
}



}
