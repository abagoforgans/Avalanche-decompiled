contract main {




// =====================  Runtime code  =====================


#
#  - sub_091c82f4(?)
#  - redeem(address arg1)
#  - earn(uint256 arg1)
#  - _fallback()
#
address owner;
uint256 stor1;
uint8 stor2;
address sub_135c404eAddress; offset 8
address stakingContractAddress;
address stakeTokenAddress;
address token0Address;
address token1Address;
address earnTokenAddress;
array of address extraEarnTokens;
uint32 stor9;
address swapRouterAddress;
uint256 stor9;
uint32 stor10;
address liquidityRouterAddress;
uint256 stor10;
uint8 stor11; offset 160
uint128 stor11; offset 160
address WNATIVEAddress;
uint256 sub_d20e286b;
uint256 sub_2940ec00;
uint256 sub_33aa1f35;
uint8 sub_9e7afdd6;
array of struct swapPath;
uint256 sharesTotal;
uint256 sub_9b913877;
uint8 stor19;

function swapRouterEnabled() {
    return bool(uint8(stor11.field_160))
}

function token0() {
    return token0Address
}

function sub_135c404e(?) {
    return sub_135c404eAddress
}

function initialized() {
    return bool(stor19)
}

function swapPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 < swapPath[arg1][arg2].field_0
    return swapPath[arg1][arg2][arg3].field_0
}

function liquidityRouter() {
    return address(liquidityRouterAddress)
}

function sub_2940ec00(?) {
    return sub_2940ec00
}

function sub_33aa1f35(?) {
    return sub_33aa1f35
}

function sharesTotal() {
    return sharesTotal
}

function stakeToken() {
    return stakeTokenAddress
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_9b913877(?) {
    return sub_9b913877
}

function sub_9e7afdd6(?) {
    return bool(sub_9e7afdd6)
}

function WNATIVE() {
    return WNATIVEAddress
}

function swapRouter() {
    return address(swapRouterAddress)
}

function sub_d20e286b(?) {
    return sub_d20e286b
}

function token1() {
    return token1Address
}

function extraEarnTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < extraEarnTokens.length
    return address(extraEarnTokens[arg1])
}

function stakingContract() {
    return stakingContractAddress
}

function earnToken() {
    return earnTokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function wrapNative() {
    if eth.balance(this.address):
        require ext_code.size(WNATIVEAddress)
        call WNATIVEAddress.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit WrapNative()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function pause() {
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x13e7c9d8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    emit Pause()
}

function sub_0b92655e(?) {
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x13e7c9d8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if not stor2:
        stor2 = 1
        emit Paused(msg.sender);
    sub_9e7afdd6 = 1
    emit 0x37e58a08 
}

function setSwapRouterEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x13e7c9d8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg1)
    emit 0xe8007e88: arg1
}

function unpause() {
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x13e7c9d8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if sub_9e7afdd6:
        revert with 0, 'unpause: CANNOT_UNPAUSE_AFTER_INSTANT_WITHDRAW_ENABLE'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    emit Unpause()
}

function setExtraEarnTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    extraEarnTokens.length = arg1.length
    if not arg1.length:
        idx = 0
        while extraEarnTokens.length > idx:
            uint256(extraEarnTokens[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(extraEarnTokens[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while extraEarnTokens.length > idx:
            uint256(extraEarnTokens[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_945f3353(?) {
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    return (((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00)
}

function setSwapPath(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x13e7c9d8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if arg3.length == 1:
        revert with 0, 'setSwapPath: INVALID_PATH'
    if not arg3.length:
        swapPath[address(arg1)][address(arg2)].field_0 = arg3.length
        idx = 0
        while swapPath[address(arg1)][address(arg2)].field_0 > idx:
            swapPath[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if 0 >= arg3.length:
            revert with 0, 50
        require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
        if address(cd[(arg3 + 36)]) != arg1:
            revert with 0, 'setSwapPath: INVALID_PATH'
        if arg3.length < 1:
            revert with 0, 17
        if arg3.length - 1 >= arg3.length:
            revert with 0, 50
        require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
        if address(cd[((32 * arg3.length - 1) + arg3 + 36)]) != arg2:
            revert with 0, 'setSwapPath: INVALID_PATH'
        swapPath[address(arg1)][address(arg2)].field_0 = arg3.length
        if not arg3.length:
            idx = 0
            while swapPath[address(arg1)][address(arg2)].field_0 > idx:
                swapPath[address(arg1)][address(arg2)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg3 + 36
            while arg3 + (32 * arg3.length) + 36 > idx:
                swapPath[address(arg1)][address(arg2)][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while swapPath[address(arg1)][address(arg2)].field_0 > idx:
                swapPath[address(arg1)][address(arg2)][idx].field_0 = 0
                idx = idx + 1
                continue 
    idx = 0
    s = ceil32(return_data.size) + 224
    t = arg3 + 36
    while idx < arg3.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xb94d069c: address(arg1), address(arg2), Array(len=arg3.length, data=mem[ceil32(return_data.size) + 224 len 32 * arg3.length])
}

function sub_ccc143b8(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    if arg1 and sharesTotal > -1 / arg1:
        revert with 0, 17
    if arg1 * sharesTotal < 1:
        revert with 0, 17
    if not ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00:
        revert with 0, 18
    if 1 > !((arg1 * sharesTotal) - 1 / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00):
        revert with 0, 17
    if ((arg1 * sharesTotal) - 1 / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00) + 1 <= sharesTotal:
        if sharesTotal < ((arg1 * sharesTotal) - 1 / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00) + 1:
            revert with 0, 17
        sharesTotal = sharesTotal + -((arg1 * sharesTotal) - 1 / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00) - 1
        if sub_2940ec00 > !arg1:
            revert with 0, 17
        sub_2940ec00 += arg1
        stor1 = 1
        return (((arg1 * sharesTotal) - 1 / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00) + 1)
    if sharesTotal < sharesTotal:
        revert with 0, 17
    sharesTotal = 0
    if sub_2940ec00 > !arg1:
        revert with 0, 17
    sub_2940ec00 += arg1
    stor1 = 1
    return sharesTotal
}

function farm(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    emit Farm()
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_135c404eAddress)
    staticcall sub_135c404eAddress.0x87788782 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.bondInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > !ext_call.return_data[0]:
        revert with 0, 17
    if ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] < sub_2940ec00:
        revert with 0, 17
    if not ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00:
        if sharesTotal > !0:
            revert with 0, 17
        stor1 = 1
        return 0
    if sharesTotal <= 0:
        if sharesTotal > !0:
            revert with 0, 17
        stor1 = 1
        return 0
    if 0 and sharesTotal > -1 / 0:
        revert with 0, 17
    if not ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00:
        revert with 0, 18
    if sharesTotal > !(((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00):
        revert with 0, 17
    sharesTotal += ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00
    stor1 = 1
    return (((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ext_call.return_data[0] - sub_2940ec00)
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(earnTokenAddress)
    staticcall earnTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if arg1 <= sub_2940ec00:
            if sub_33aa1f35 > ext_call.return_data[0]:
                sub_33aa1f35 = ext_call.return_data[0]
            if sub_2940ec00 < arg1:
                revert with 0, 17
            sub_2940ec00 -= arg1
            if sub_33aa1f35 < arg1:
                revert with 0, 17
            sub_33aa1f35 -= arg1
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(earnTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call earnTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor1 = 1
            return arg1
    else:
        if ext_call.return_data[0] <= sub_2940ec00:
            if sub_33aa1f35 > ext_call.return_data[0]:
                sub_33aa1f35 = ext_call.return_data[0]
            if sub_2940ec00 < ext_call.return_data[0]:
                revert with 0, 17
            sub_2940ec00 -= ext_call.return_data[0]
            if sub_33aa1f35 < ext_call.return_data[0]:
                revert with 0, 17
            sub_33aa1f35 -= ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(earnTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call earnTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor1 = 1
            return ext_call.return_data[0]
    if sub_33aa1f35 > ext_call.return_data[0]:
        sub_33aa1f35 = ext_call.return_data[0]
    if sub_2940ec00 < sub_2940ec00:
        revert with 0, 17
    sub_2940ec00 = 0
    if sub_33aa1f35 < sub_2940ec00:
        revert with 0, 17
    sub_33aa1f35 -= sub_2940ec00
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = sub_2940ec00
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(earnTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, sub_2940ec00, 0
    mem[ceil32(return_data.size) + 328] = 0
    call earnTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, sub_2940ec00, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, sub_2940ec00, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    return sub_2940ec00
}

function tokenToEarn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if earnTokenAddress != arg1:
            if stakeTokenAddress != arg1:
                mem[0] = earnTokenAddress
                mem[32] = sha3(address(arg1), 16)
                mem[ceil32(return_data.size) + 96] = swapPath[address(arg1)][stor7].field_0
                if not swapPath[address(arg1)][stor7].field_0:
                    if 0 == swapPath[address(arg1)][stor7].field_0:
                        if WNATIVEAddress == arg1:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 2
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 192] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                    if uint8(stor11.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + -mem[64] + 480]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228 len ceil32(return_data.size) + 64]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = (5 * ceil32(return_data.size)) + 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len 28] = Mask(224, 0, stor9)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                                            if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                                                mem[(10 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 0
                                            call arg1.mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392 len (13 * ceil32(return_data.size)) + 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584 len 64]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + -mem[64] + 480]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228 len ceil32(return_data.size) + 64]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = (5 * ceil32(return_data.size)) + 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len 28] = Mask(224, 0, stor10)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                                            if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                                                mem[(10 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 0
                                            call arg1.mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392 len (13 * ceil32(return_data.size)) + 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584 len 64]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 3
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 192] = WNATIVEAddress
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                    if uint8(stor11.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + -mem[64] + 544]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len ceil32(return_data.size) + 64]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = (5 * ceil32(return_data.size)) + 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 28] = Mask(224, 0, stor9)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                                            if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                                                mem[(10 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0
                                            call arg1.mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424 len (13 * ceil32(return_data.size)) + 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616 len 96]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617 len 96]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + -mem[64] + 544]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len ceil32(return_data.size) + 64]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = (5 * ceil32(return_data.size)) + 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 28] = Mask(224, 0, stor10)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                                            if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                                                mem[(10 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0
                                            call arg1.mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424 len (13 * ceil32(return_data.size)) + 64]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616 len 96]
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not swapPath[address(arg1)][stor7].field_0:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 140 len 20] != earnTokenAddress:
                            if not swapPath[address(arg1)][stor7].field_0:
                                revert with 0, 50
                            if mem[ceil32(return_data.size) + 140 len 20] != stakeTokenAddress:
                                if 0 >= swapPath[address(arg1)][stor7].field_0:
                                    revert with 0, 50
                                if uint8(stor11.field_160):
                                    _43 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                    require ext_code.size(address(_43))
                                    staticcall address(_43).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(swapRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = swapPath[address(arg1)][stor7].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor7].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                    else:
                                        if 0 >= swapPath[address(arg1)][stor7].field_0:
                                            revert with 0, 50
                                        _80 = mem[ceil32(return_data.size) + 128]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                        require ext_code.size(address(_80))
                                        staticcall address(_80).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = ext_call.return_data[0] - 1
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 68
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164 len 28] = Mask(224, 0, stor9)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = 32
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_80)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 0
                                        call address(_80) with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 328] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324])
                                                if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 329] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 361] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                else:
                                    _46 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                    require ext_code.size(address(_46))
                                    staticcall address(_46).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(liquidityRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = swapPath[address(arg1)][stor7].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor7].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                    else:
                                        if 0 >= swapPath[address(arg1)][stor7].field_0:
                                            revert with 0, 50
                                        _82 = mem[ceil32(return_data.size) + 128]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                        require ext_code.size(address(_82))
                                        staticcall address(_82).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = ext_call.return_data[0] - 1
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 68
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164 len 28] = Mask(224, 0, stor10)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = 32
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_82)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 0
                                        call address(_82) with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 328] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324])
                                                if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 329] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 361] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = sha3(earnTokenAddress, sha3(address(arg1), 16))
                    mem[ceil32(return_data.size) + 128] = swapPath[address(arg1)][stor7].field_0
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 96 > idx:
                        mem[idx + 32] = swapPath[address(arg1)][stor7][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if swapPath[address(arg1)][stor7].field_0 != 0:
                        if not swapPath[address(arg1)][stor7].field_0:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 140 len 20] != earnTokenAddress:
                            if not swapPath[address(arg1)][stor7].field_0:
                                revert with 0, 50
                            if mem[ceil32(return_data.size) + 140 len 20] != stakeTokenAddress:
                                if 0 >= swapPath[address(arg1)][stor7].field_0:
                                    revert with 0, 50
                                if uint8(stor11.field_160):
                                    _1743 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                    require ext_code.size(address(_1743))
                                    staticcall address(_1743).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(swapRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = swapPath[address(arg1)][stor7].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor7].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                    else:
                                        if 0 >= swapPath[address(arg1)][stor7].field_0:
                                            revert with 0, 50
                                        _1780 = mem[ceil32(return_data.size) + 128]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                        require ext_code.size(address(_1780))
                                        staticcall address(_1780).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(swapRouterAddress)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = ext_call.return_data[0] - 1
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 68
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = 32
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1780)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 96] = 0, address(swapRouterAddress), ext_call.return_data[0] - 1, 0
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 0
                                        call address(_1780) with:
                                           funct Mask(32, 224, 0, address(swapRouterAddress), ext_call.return_data[0] - 1, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, address(swapRouterAddress), ext_call.return_data[0] - 1, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 328] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324])
                                                if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 329] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 361] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                else:
                                    _1746 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                    require ext_code.size(address(_1746))
                                    staticcall address(_1746).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(liquidityRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = swapPath[address(arg1)][stor7].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor7].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                    else:
                                        if 0 >= swapPath[address(arg1)][stor7].field_0:
                                            revert with 0, 50
                                        _1782 = mem[ceil32(return_data.size) + 128]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 132] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                        require ext_code.size(address(_1782))
                                        staticcall address(_1782).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 164] = address(liquidityRouterAddress)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 196] = ext_call.return_data[0] - 1
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 68
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = 32
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1782)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 96] = 0, address(liquidityRouterAddress), ext_call.return_data[0] - 1, 0
                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 0
                                        call address(_1782) with:
                                           funct Mask(32, 224, 0, address(liquidityRouterAddress), ext_call.return_data[0] - 1, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, address(liquidityRouterAddress), ext_call.return_data[0] - 1, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 328] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 360] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 296 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324])
                                                if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 329] = 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 361] = 160
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor7].field_0
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489
                                            t = ceil32(return_data.size) + 128
                                            while idx < swapPath[address(arg1)][stor7].field_0:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = this.address
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor7].field_0) + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if WNATIVEAddress == arg1:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 2
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 192] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                    if uint8(stor11.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]) + 32]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(swapRouterAddress)
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(swapRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len 28] = Mask(224, 0, stor9)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 0
                                            call arg1 with:
                                               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388
                                                           len (5 * ceil32(return_data.size)) + 132
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584 len 64]
                                            else:
                                                mem[64] = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = return_data.size
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                           len (5 * ceil32(return_data.size)) + 132
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 0
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 160
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 553] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = this.address
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = block.timestamp
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + -mem[64] + 645]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]) + 32]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 228] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(liquidityRouterAddress)
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = address(liquidityRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260 len 28] = Mask(224, 0, stor10)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 0
                                            call arg1 with:
                                               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 392] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388
                                                           len (5 * ceil32(return_data.size)) + 132
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 584 len 64]
                                            else:
                                                mem[64] = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = return_data.size
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389
                                                           len (5 * ceil32(return_data.size)) + 132
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 0
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 160
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 553] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = this.address
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = block.timestamp
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + -mem[64] + 645]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128] = 3
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 192] = WNATIVEAddress
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 224] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                    if uint8(stor11.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]) + 32]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(swapRouterAddress)
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(swapRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 28] = Mask(224, 0, stor9)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0
                                            call arg1 with:
                                               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0] - 1, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 520] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                                           len (5 * ceil32(return_data.size)) + 132
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616 len 96]
                                            else:
                                                mem[64] = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = return_data.size
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                           len (5 * ceil32(return_data.size)) + 132
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 0
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 160
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585] = 3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = this.address
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 553] = block.timestamp
                                                require ext_code.size(address(swapRouterAddress))
                                                call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + -mem[64] + 709]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]) + 32]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 260] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                            require ext_code.size(arg1)
                                            staticcall arg1.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(liquidityRouterAddress)
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0:
                                                revert with 0, 17
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292] = address(liquidityRouterAddress)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 324] = ext_call.return_data[0] - 1
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 256] = 68
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 292 len 28] = Mask(224, 0, stor10)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 388] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(arg1):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 0
                                            call arg1 with:
                                               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - 1, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                    if not uint32(this.address), mem[132 len 28]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 424] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 456] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 488] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 520] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420
                                                           len (5 * ceil32(return_data.size)) + 132
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 616 len 96]
                                            else:
                                                mem[64] = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 420] = return_data.size
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 32
                                                    mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452] == bool(mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452])
                                                    if not mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + 452]:
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = 32
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 42
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: ERC20 operation did n'
                                                        mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421
                                                           len (5 * ceil32(return_data.size)) + 132
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 457] = 0
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 489] = 160
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 585] = 3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 617
                                                t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 160
                                                while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor7].field_0) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 521] = this.address
                                                mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + 553] = block.timestamp
                                                require ext_code.size(address(liquidityRouterAddress))
                                                call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor7].field_0) + ceil32(return_data.size) + -mem[64] + 709]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                emit TokenToEarn(arg1);
    stor1 = 1
}



}
