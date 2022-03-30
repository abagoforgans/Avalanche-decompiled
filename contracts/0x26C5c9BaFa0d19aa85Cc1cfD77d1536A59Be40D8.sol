contract main {




// =====================  Runtime code  =====================


const FEE_MAX = 10000


address owner;
uint256 PERFORMANCE_FEE;
uint256 WITHDRAWAL_FEE_FREE_PERIOD;
uint256 WITHDRAWAL_FEE;
uint32 stor4;
address feeToAddress;

function feeTo() {
    return address(feeToAddress)
}

function owner() {
    return owner
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(feeToAddress) = arg1
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

function performanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if PERFORMANCE_FEE * arg1 / arg1 != PERFORMANCE_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (PERFORMANCE_FEE * arg1 / 10000)
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
    if WITHDRAWAL_FEE_FREE_PERIOD + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if WITHDRAWAL_FEE_FREE_PERIOD + arg2 <= block.timestamp:
        return 0
    if not arg1:
        return 0
    if WITHDRAWAL_FEE * arg1 / arg1 != WITHDRAWAL_FEE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (WITHDRAWAL_FEE * arg1 / 10000)
}

function sub_039135db(?) payable {
    require calldata.size - 4 >= 96
    if arg2 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        require msg.value >= arg2 + arg3
    else:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(feeToAddress), Mask(224, 32, arg2 + arg3) >> 32
        mem[416 len 4] = 0
        call arg1 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg2 + arg3) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(feeToAddress), arg2 + arg3
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
}



}
