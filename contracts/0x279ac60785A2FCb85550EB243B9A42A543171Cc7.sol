contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ef6626b(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor1;
uint8 paused;
address stor151;
uint64 stor152;
uint128 stor152; offset 64
address owner;
address stor202;
uint128 stor252;
uint128 stor252; offset 128
uint256 baseGas;
address executorManagerAddress;
address tokenManagerAddress;
address sub_a2419a6bAddress;
mapping of uint8 stor256;
mapping of uint256 gasFeeAccumulatedByToken;
mapping of uint256 sub_f16c2c25;
mapping of uint256 sub_a4479b48;
uint256 stor5682;
mapping of uint256 stor63557454141581845908429032852841228930687806245018113172728652390011399336861;
uint256 storFC69;

function tokenManager() {
    return tokenManagerAddress
}

function baseGas() {
    return baseGas
}

function paused() {
    return bool(paused)
}

function processedHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor256[arg1])
}

function owner() {
    return owner
}

function sub_a2419a6b(?) {
    return sub_a2419a6bAddress
}

function sub_a4479b48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a4479b48[arg1]
}

function getExecutorManager() {
    return executorManagerAddress
}

function gasFeeAccumulatedByToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return gasFeeAccumulatedByToken[arg1]
}

function sub_f16c2c25(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_f16c2c25[arg1][arg2]
}

function _fallback() payable {
    revert
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor151)
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor202)
}

function renouncePauser() {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    emit PauserChanged(stor151, 0);
    stor151 = 0
}

function changePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    require arg1
    emit PauserChanged(stor151, arg1);
    stor151 = arg1
}

function renounceOwnership() {
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor202 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor202 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function setBaseGas(uint128 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    uint128(stor252.field_0) = arg1
    uint128(stor252.field_128) = 0
}

function setExecutorManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Executor Manager cannot be 0'
    executorManagerAddress = arg1
}

function setTokenManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'TokenManager can't be 0'
    tokenManagerAddress = arg1
    emit 0x331ea0c3: arg1
}

function checkHashStatus(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return sha3(address(arg1), arg2, address(arg3), sha3(arg4[all])), 
           bool(stor256[address(arg1)][arg2][address(arg3)][sha3(arg4[all])])
}

function setTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'TrustedForwarder can't be 0'
    stor202 = arg1
    emit TrustedForwarderChanged(arg1);
}

function sub_59ca6c01(?) {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'LiquidityProviders can't be 0'
    sub_a2419a6bAddress = address(cd[4])
    emit 0x988d9952: address(cd[4])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor202 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ca2ba943(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(arg1)]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(arg1)] < sub_a4479b48[address(arg1)]:
        revert with 0, 17
    return (-gasFeeAccumulatedByToken[address(arg1)] - sub_a4479b48[address(arg1)])
}

function getRewardAmount(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(arg2)]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(arg2)] < sub_a4479b48[address(arg2)]:
        revert with 0, 17
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -gasFeeAccumulatedByToken[address(arg2)] - sub_a4479b48[address(arg2)] >= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(arg2)] - sub_a4479b48[address(arg2)]:
        revert with 0, 17
    if arg1 >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(arg2)] + sub_a4479b48[address(arg2)]:
        return sub_a4479b48[address(arg2)]
    if arg1 and sub_a4479b48[address(arg2)] > -1 / arg1:
        revert with 0, 17
    if arg1 * sub_a4479b48[address(arg2)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(arg2)] + sub_a4479b48[address(arg2)]:
        revert with 0, 18
    return (10^10 * arg1 * sub_a4479b48[address(arg2)] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(arg2)] + sub_a4479b48[address(arg2)] / 10^10)
}

function sub_da6f6794(?) {
    require ext_code.size(executorManagerAddress)
    if stor202 != msg.sender:
        staticcall executorManagerAddress.getExecutorStatus(address arg1) with:
                gas gas_remaining wei
               args msg.sender
    else:
        staticcall executorManagerAddress.getExecutorStatus(address arg1) with:
                gas gas_remaining wei
               args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only executor is allowed'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor202 != msg.sender:
        if not stor8C84[address(msg.sender)]:
            revert with 0, 'Gas Fee earned is 0'
        if storFC69 < stor8C84[address(msg.sender)]:
            revert with 0, 17
        storFC69 -= stor8C84[address(msg.sender)]
        if stor202 != msg.sender:
            stor8C84[address(msg.sender)] = 0
            call msg.sender with:
               value stor8C84[address(msg.sender)] wei
                 gas gas_remaining wei
        else:
            stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
            call Mask(64, 96, cd[(calldata.size - 20)]) >> 96 with:
               value stor8C84[address(msg.sender)] wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native Transfer Failed'
        if stor202 != msg.sender:
            emit 0xc129cf87: this.address, msg.sender, stor8C84[address(msg.sender)]
        else:
            emit 0xc129cf87: this.address, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, stor8C84[address(msg.sender)]
    else:
        if not stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
            revert with 0, 'Gas Fee earned is 0'
        if storFC69 < stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
            revert with 0, 17
        storFC69 -= stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
        if stor202 != msg.sender:
            stor8C84[address(msg.sender)] = 0
            call msg.sender with:
               value stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96] wei
                 gas gas_remaining wei
        else:
            stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
            call Mask(64, 96, cd[(calldata.size - 20)]) >> 96 with:
               value stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96] wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native Transfer Failed'
        if stor202 != msg.sender:
            emit 0xc129cf87: this.address, msg.sender, stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
        else:
            emit 0xc129cf87: this.address, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, stor8C84[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    stor1 = 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if stor202 != msg.sender:
        if sub_a2419a6bAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only liquidityProviders is allowed'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != sub_a2419a6bAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only liquidityProviders is allowed'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, 'Invalid receiver'
    if 0xfe000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if eth.balance(this.address) < arg3:
            revert with 0, 'ERR__INSUFFICIENT_BALANCE'
        call arg2 with:
           value arg3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR__NATIVE_TRANSFER_FAILED'
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'ERR__INSUFFICIENT_BALANCE'
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
}

function getTransferFee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xfa5e2abc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(arg1)]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(arg1)] < sub_a4479b48[address(arg1)]:
        revert with 0, 17
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -gasFeeAccumulatedByToken[address(arg1)] - sub_a4479b48[address(arg1)] < arg2:
        revert with 0, 17
    if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[64] and ext_call.return_data[96] > -1 / ext_call.return_data[0] * ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[96] - ext_call.return_data[64] and -gasFeeAccumulatedByToken[address(arg1)] - sub_a4479b48[address(arg1)] - arg2 > -1 / ext_call.return_data[96] - ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[64] * ext_call.return_data[0] > !((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[96]) - (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[96]) - (sub_a4479b48[address(arg1)] * ext_call.return_data[96]) - (arg2 * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[64]) + (ext_call.return_data[0] * ext_call.return_data[64]) + (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[64]) + (sub_a4479b48[address(arg1)] * ext_call.return_data[64]) + (arg2 * ext_call.return_data[64])):
        revert with 0, 17
    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[96]) - (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[96]) - (sub_a4479b48[address(arg1)] * ext_call.return_data[96]) - (arg2 * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[64]) + (ext_call.return_data[0] * ext_call.return_data[64]) + (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[64]) + (sub_a4479b48[address(arg1)] * ext_call.return_data[64]) + (arg2 * ext_call.return_data[64]):
        return (ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[96] / (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[96]) - (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[96]) - (sub_a4479b48[address(arg1)] * ext_call.return_data[96]) - (arg2 * ext_call.return_data[96]) - (ext_call.return_data[0] * ext_call.return_data[64]) + (ext_call.return_data[0] * ext_call.return_data[64]) + (gasFeeAccumulatedByToken[address(arg1)] * ext_call.return_data[64]) + (sub_a4479b48[address(arg1)] * ext_call.return_data[64]) + (arg2 * ext_call.return_data[64]))
    else:
        return 0
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'ExecutorManager cannot be 0x0'
    if not arg3:
        revert with 0, 'TrustedForwarder cannot be 0x0'
    if not arg5:
        revert with 0, 'LiquidityProviders cannot be 0x0'
    if uint8(stor0.field_8):
        stor202 = arg3
        stor1 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor202 = arg3
            stor1 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor202 = arg3
                stor1 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor202 = arg3
                    stor1 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor202 = arg3
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor1 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor1 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor1 = 1
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if not uint8(stor0.field_8):
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
    if stor202 != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint64(stor152.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor152.field_64) = 0
        emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg2:
        revert with 0, 'Pauser Address cannot be 0'
    if uint8(stor0.field_8):
        paused = 0
        stor151 = arg2
        executorManagerAddress = arg1
        tokenManagerAddress = arg4
        sub_a2419a6bAddress = arg5
        baseGas = 21000
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor151 = arg2
            executorManagerAddress = arg1
            tokenManagerAddress = arg4
            sub_a2419a6bAddress = arg5
            baseGas = 21000
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor151 = arg2
                executorManagerAddress = arg1
                tokenManagerAddress = arg4
                sub_a2419a6bAddress = arg5
                baseGas = 21000
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor151 = arg2
                    executorManagerAddress = arg1
                    tokenManagerAddress = arg4
                    sub_a2419a6bAddress = arg5
                    baseGas = 21000
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    paused = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor151 = arg2
                    uint8(stor0.field_8) = 0
                    executorManagerAddress = arg1
                    tokenManagerAddress = arg4
                    sub_a2419a6bAddress = arg5
                    baseGas = 21000
                    uint8(stor0.field_8) = 0
}

function sub_ea368421(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xc0e4d627 with:
            gas gas_remaining wei
           args cd[36], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    if ext_call.return_data[0] > msg.value:
        revert with 0, 'Deposit amount not in Cap limit'
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xc0e4d627 with:
            gas gas_remaining wei
           args cd[36], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    if ext_call.return_data[32] < msg.value:
        revert with 0, 'Deposit amount not in Cap limit'
    if not address(cd[4]):
        revert with 0, 'Receiver address cannot be 0'
    if not msg.value:
        revert with 0, 'Amount cannot be 0'
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] < sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
        revert with 0, 17
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] - sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] >= ext_call.return_data[0]:
        require ext_code.size(sub_a2419a6bAddress)
        call sub_a2419a6bAddress.0x53403fb5 with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > -1:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 384 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        mem[(7 * ceil32(return_data.size)) + ('cd', 68).length + 384] = 0
        if stor202 != msg.sender:
            emit 0x522e11fa: cd[36], msg.value, 0, 128, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[(7 * ceil32(return_data.size)) + ('cd', 68).length + 384 len ceil32(('cd', 68).length) - ('cd', 68).length], msg.sender, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
        else:
            emit 0x522e11fa: cd[36], msg.value, 0, 128, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[(7 * ceil32(return_data.size)) + ('cd', 68).length + 384 len ceil32(('cd', 68).length) - ('cd', 68).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
    else:
        if ext_call.return_data[0] < -gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] - sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
            revert with 0, 17
        if msg.value >= ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
            if sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
                if stor5682 < sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
                    revert with 0, 17
                stor5682 -= sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value > !sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
                revert with 0, 17
            if stor202 != msg.sender:
                emit 0x522e11fa: cd[36], msg.value + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000], sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), msg.sender, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
            else:
                emit 0x522e11fa: cd[36], msg.value + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000], sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
        else:
            if msg.value and sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] > -1 / msg.value:
                revert with 0, 17
            if msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 0, 17
            if not ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000]:
                revert with 0, 18
            if 10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10:
                if stor5682 < 10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10:
                    revert with 0, 17
                stor5682 -= 10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value > !(10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10):
                revert with 0, 17
            if stor202 != msg.sender:
                emit 0x522e11fa: cd[36], msg.value + (10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10), 10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), msg.sender, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
            else:
                emit 0x522e11fa: cd[36], msg.value + (10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10), 10^10 * msg.value * sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / ext_call.return_data[0] + gasFeeAccumulatedByToken[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] + sub_a4479b48[0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000] / 10^10, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4])
    stor1 = 1
}

function sub_c87e4e25(?) {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor202 != msg.sender:
        mem[100] = msg.sender
        require ext_code.size(executorManagerAddress)
        staticcall executorManagerAddress.getExecutorStatus(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only executor is allowed'
        if paused:
            revert with 0, 'Pausable: paused'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if 0xfe000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[4]):
            revert with 0, 'Can't withdraw native token fee'
        if stor202 != msg.sender:
            if not sub_f16c2c25[address(cd[4])][address(msg.sender)]:
                revert with 0, 'Gas Fee earned is 0'
            if gasFeeAccumulatedByToken[address(cd[4])] < sub_f16c2c25[address(cd[4])][address(msg.sender)]:
                revert with 0, 17
            gasFeeAccumulatedByToken[address(cd[4])] -= sub_f16c2c25[address(cd[4])][address(msg.sender)]
            if stor202 != msg.sender:
                sub_f16c2c25[address(cd[4])][address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) << 288)
            else:
                sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
                mem[ceil32(return_data.size) + 132] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
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
            if stor202 != msg.sender:
                emit 0xc129cf87: address(cd[4]), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)]
            else:
                emit 0xc129cf87: address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_f16c2c25[address(cd[4])][address(msg.sender)]
        else:
            if not sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                revert with 0, 'Gas Fee earned is 0'
            if gasFeeAccumulatedByToken[address(cd[4])] < sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                revert with 0, 17
            gasFeeAccumulatedByToken[address(cd[4])] -= sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
            if stor202 != msg.sender:
                sub_f16c2c25[address(cd[4])][address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) << 288)
            else:
                sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
                mem[ceil32(return_data.size) + 132] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
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
            if stor202 != msg.sender:
                emit 0xc129cf87: address(cd[4]), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
            else:
                emit 0xc129cf87: address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    else:
        mem[100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        require ext_code.size(executorManagerAddress)
        staticcall executorManagerAddress.getExecutorStatus(address arg1) with:
                gas gas_remaining wei
               args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only executor is allowed'
        if paused:
            revert with 0, 'Pausable: paused'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if 0xfe000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[4]):
            revert with 0, 'Can't withdraw native token fee'
        if stor202 != msg.sender:
            if not sub_f16c2c25[address(cd[4])][address(msg.sender)]:
                revert with 0, 'Gas Fee earned is 0'
            if gasFeeAccumulatedByToken[address(cd[4])] < sub_f16c2c25[address(cd[4])][address(msg.sender)]:
                revert with 0, 17
            gasFeeAccumulatedByToken[address(cd[4])] -= sub_f16c2c25[address(cd[4])][address(msg.sender)]
            if stor202 != msg.sender:
                sub_f16c2c25[address(cd[4])][address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) << 288)
            else:
                sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
                mem[ceil32(return_data.size) + 132] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            if stor202 != msg.sender:
                emit 0xc129cf87: address(cd[4]), msg.sender, sub_f16c2c25[address(cd[4])][address(msg.sender)]
            else:
                emit 0xc129cf87: address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_f16c2c25[address(cd[4])][address(msg.sender)]
        else:
            if not sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                revert with 0, 'Gas Fee earned is 0'
            if gasFeeAccumulatedByToken[address(cd[4])] < sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                revert with 0, 17
            gasFeeAccumulatedByToken[address(cd[4])] -= sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
            if stor202 != msg.sender:
                sub_f16c2c25[address(cd[4])][address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) << 288)
            else:
                sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = 0
                mem[ceil32(return_data.size) + 132] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[ceil32(return_data.size) + 164] = sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            if stor202 != msg.sender:
                emit 0xc129cf87: address(cd[4]), msg.sender, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
            else:
                emit 0xc129cf87: address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_f16c2c25[address(cd[4])][Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    stor1 = 1
}

function sub_55d73595(?) {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xba8dbea2 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[160]
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(return_data.size) + 196] = address(cd[36])
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xc0e4d627 with:
            gas gas_remaining wei
           args cd[4], address(cd[36])
    mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
    if ext_call.return_data[0] > cd[100]:
        revert with 0, 'Deposit amount not in Cap limit'
    if ext_call.return_data[32] < cd[100]:
        revert with 0, 'Deposit amount not in Cap limit'
    if not address(cd[68]):
        revert with 0, 'Receiver address cannot be 0'
    if not cd[100]:
        revert with 0, 'Amount cannot be 0'
    mem[(2 * ceil32(return_data.size)) + 228] = address(cd[36])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(cd[36])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(cd[36])]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(cd[36])] < sub_a4479b48[address(cd[36])]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 228] = address(cd[36])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor202 != msg.sender:
        if -gasFeeAccumulatedByToken[address(cd[36])] - sub_a4479b48[address(cd[36])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[36]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[36])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 132).length + 580] = 0
                emit 0x522e11fa: cd[4], cd[100], 0, 128, ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[(7 * ceil32(return_data.size)) + ('cd', 132).length + 580 len ceil32(('cd', 132).length) - ('cd', 132).length], msg.sender, address(cd[36]), address(cd[68])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 132).length + 581] = 0
                emit 0x522e11fa: cd[4], cd[100], 0, 128, ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 132).length + 581 len ceil32(('cd', 132).length) - ('cd', 132).length], msg.sender, address(cd[36]), address(cd[68])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[36])] - sub_a4479b48[address(cd[36])]:
                revert with 0, 17
            if cd[100] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])]:
                if sub_a4479b48[address(cd[36])]:
                    if sub_a4479b48[address(cd[36])] < sub_a4479b48[address(cd[36])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[36])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[36])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[36]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > !sub_a4479b48[address(cd[36])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[4], cd[100] + sub_a4479b48[address(cd[36])], sub_a4479b48[address(cd[36])], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), msg.sender, address(cd[36]), address(cd[68])
            else:
                if cd[100] and sub_a4479b48[address(cd[36])] > -1 / cd[100]:
                    revert with 0, 17
                if cd[100] * sub_a4479b48[address(cd[36])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])]:
                    revert with 0, 18
                if 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10:
                    if sub_a4479b48[address(cd[36])] < 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[36])] -= 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[36])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[36]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > !(10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[4], cd[100] + (10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10), 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10, Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), msg.sender, address(cd[36]), address(cd[68])
    else:
        if -gasFeeAccumulatedByToken[address(cd[36])] - sub_a4479b48[address(cd[36])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[36]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[36])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 132).length + 580] = 0
                emit 0x522e11fa: cd[4], cd[100], 0, 128, ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[(7 * ceil32(return_data.size)) + ('cd', 132).length + 580 len ceil32(('cd', 132).length) - ('cd', 132).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[36]), address(cd[68])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 132).length + 581] = 0
                emit 0x522e11fa: cd[4], cd[100], 0, 128, ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 132).length + 581 len ceil32(('cd', 132).length) - ('cd', 132).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[36]), address(cd[68])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[36])] - sub_a4479b48[address(cd[36])]:
                revert with 0, 17
            if cd[100] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])]:
                if sub_a4479b48[address(cd[36])]:
                    if sub_a4479b48[address(cd[36])] < sub_a4479b48[address(cd[36])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[36])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[36])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[36]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > !sub_a4479b48[address(cd[36])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[4], cd[100] + sub_a4479b48[address(cd[36])], sub_a4479b48[address(cd[36])], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[36]), address(cd[68])
            else:
                if cd[100] and sub_a4479b48[address(cd[36])] > -1 / cd[100]:
                    revert with 0, 17
                if cd[100] * sub_a4479b48[address(cd[36])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])]:
                    revert with 0, 18
                if 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10:
                    if sub_a4479b48[address(cd[36])] < 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[36])] -= 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[100]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[36])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[36]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[100], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[100] > !(10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[4], cd[100] + (10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10), 10^10 * cd[100] * sub_a4479b48[address(cd[36])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[36])] + sub_a4479b48[address(cd[36])] / 10^10, Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[36]), address(cd[68])
    stor1 = 1
}

function sub_bf33e812(?) {
    require calldata.size - 4 >= 352
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require calldata.size - 132 >= 192
    require cd[324] <= test266151307()
    require cd[324] + 35 < calldata.size
    require ('cd', 324).length <= test266151307()
    require cd[324] + ('cd', 324).length + 36 <= calldata.size
    require cd[228] == uint8(cd[228])
    mem[260] = cd[260]
    mem[292] = cd[292]
    require ext_code.size(address(cd[4]))
    if stor202 != msg.sender:
        call address(cd[4]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(this.address), cd[68], cd[164], cd[228] << 248, cd[260], cd[292]
    else:
        call address(cd[4]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), cd[68], cd[164], cd[228] << 248, cd[260], cd[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xba8dbea2 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[160]
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(return_data.size) + 196] = address(cd[4])
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xc0e4d627 with:
            gas gas_remaining wei
           args cd[100], address(cd[4])
    mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
    if ext_call.return_data[0] > cd[68]:
        revert with 0, 'Deposit amount not in Cap limit'
    if ext_call.return_data[32] < cd[68]:
        revert with 0, 'Deposit amount not in Cap limit'
    if not address(cd[36]):
        revert with 0, 'Receiver address cannot be 0'
    if not cd[68]:
        revert with 0, 'Amount cannot be 0'
    mem[(2 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(cd[4])]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(cd[4])] < sub_a4479b48[address(cd[4])]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor202 != msg.sender:
        if -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[4]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580 len ceil32(('cd', 324).length) - ('cd', 324).length], msg.sender, address(cd[4]), address(cd[36])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581 len ceil32(('cd', 324).length) - ('cd', 324).length], msg.sender, address(cd[4]), address(cd[36])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])]:
                revert with 0, 17
            if cd[68] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                if sub_a4479b48[address(cd[4])]:
                    if sub_a4479b48[address(cd[4])] < sub_a4479b48[address(cd[4])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !sub_a4479b48[address(cd[4])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + sub_a4479b48[address(cd[4])], sub_a4479b48[address(cd[4])], Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), msg.sender, address(cd[4]), address(cd[36])
            else:
                if cd[68] and sub_a4479b48[address(cd[4])] > -1 / cd[68]:
                    revert with 0, 17
                if cd[68] * sub_a4479b48[address(cd[4])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                    revert with 0, 18
                if 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                    if sub_a4479b48[address(cd[4])] < 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] -= 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !(10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + (10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10), 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10, Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), msg.sender, address(cd[4]), address(cd[36])
    else:
        if -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[4]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580 len ceil32(('cd', 324).length) - ('cd', 324).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581 len ceil32(('cd', 324).length) - ('cd', 324).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])]:
                revert with 0, 17
            if cd[68] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                if sub_a4479b48[address(cd[4])]:
                    if sub_a4479b48[address(cd[4])] < sub_a4479b48[address(cd[4])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !sub_a4479b48[address(cd[4])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + sub_a4479b48[address(cd[4])], sub_a4479b48[address(cd[4])], Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
            else:
                if cd[68] and sub_a4479b48[address(cd[4])] > -1 / cd[68]:
                    revert with 0, 17
                if cd[68] * sub_a4479b48[address(cd[4])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                    revert with 0, 18
                if 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                    if sub_a4479b48[address(cd[4])] < 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] -= 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !(10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + (10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10), 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10, Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
    stor1 = 1
}

function sub_67924a56(?) {
    require calldata.size - 4 >= 352
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require calldata.size - 132 >= 192
    require cd[324] <= test266151307()
    require cd[324] + 35 < calldata.size
    require ('cd', 324).length <= test266151307()
    require cd[324] + ('cd', 324).length + 36 <= calldata.size
    require cd[196] == bool(cd[196])
    require cd[228] == uint8(cd[228])
    mem[260] = uint8(cd[228])
    mem[292] = cd[260]
    mem[324] = cd[292]
    require ext_code.size(address(cd[4]))
    if stor202 != msg.sender:
        call address(cd[4]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(this.address), cd[132], cd[164], bool(cd[196]), cd[228] << 248, cd[260], cd[292]
    else:
        call address(cd[4]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), cd[132], cd[164], bool(cd[196]), cd[228] << 248, cd[260], cd[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xba8dbea2 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[160]
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(return_data.size) + 196] = address(cd[4])
    require ext_code.size(tokenManagerAddress)
    staticcall tokenManagerAddress.0xc0e4d627 with:
            gas gas_remaining wei
           args cd[100], address(cd[4])
    mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
    if ext_call.return_data[0] > cd[68]:
        revert with 0, 'Deposit amount not in Cap limit'
    if ext_call.return_data[32] < cd[68]:
        revert with 0, 'Deposit amount not in Cap limit'
    if not address(cd[36]):
        revert with 0, 'Receiver address cannot be 0'
    if not cd[68]:
        revert with 0, 'Amount cannot be 0'
    mem[(2 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xca2ba943 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xd1b4f192 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < gasFeeAccumulatedByToken[address(cd[4])]:
        revert with 0, 17
    if -gasFeeAccumulatedByToken[address(cd[4])] < sub_a4479b48[address(cd[4])]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 228] = address(cd[4])
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor202 != msg.sender:
        if -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[4]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580 len ceil32(('cd', 324).length) - ('cd', 324).length], msg.sender, address(cd[4]), address(cd[36])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581 len ceil32(('cd', 324).length) - ('cd', 324).length], msg.sender, address(cd[4]), address(cd[36])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])]:
                revert with 0, 17
            if cd[68] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                if sub_a4479b48[address(cd[4])]:
                    if sub_a4479b48[address(cd[4])] < sub_a4479b48[address(cd[4])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !sub_a4479b48[address(cd[4])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + sub_a4479b48[address(cd[4])], sub_a4479b48[address(cd[4])], Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), msg.sender, address(cd[4]), address(cd[36])
            else:
                if cd[68] and sub_a4479b48[address(cd[4])] > -1 / cd[68]:
                    revert with 0, 17
                if cd[68] * sub_a4479b48[address(cd[4])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                    revert with 0, 18
                if 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                    if sub_a4479b48[address(cd[4])] < 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] -= 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !(10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + (10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10), 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10, Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), msg.sender, address(cd[4]), address(cd[36])
    else:
        if -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])] >= ext_call.return_data[0]:
            require ext_code.size(sub_a2419a6bAddress)
            call sub_a2419a6bAddress.0x53403fb5 with:
                 gas gas_remaining wei
                args address(cd[4]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
            mem[(7 * ceil32(return_data.size)) + 224] = 100
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 356] = 32
            mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 580 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ('cd', 324).length + 580 len ceil32(('cd', 324).length) - ('cd', 324).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
            else:
                mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                    if not mem[(7 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > -1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len ('cd', 324).length] = call.data[cd[324] + 36 len ('cd', 324).length]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581] = 0
                emit 0x522e11fa: cd[100], cd[68], 0, 128, ('cd', 324).length, call.data[cd[324] + 36 len ('cd', 324).length], mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 324).length + 581 len ceil32(('cd', 324).length) - ('cd', 324).length], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
        else:
            if ext_call.return_data[0] < -gasFeeAccumulatedByToken[address(cd[4])] - sub_a4479b48[address(cd[4])]:
                revert with 0, 17
            if cd[68] >= ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                if sub_a4479b48[address(cd[4])]:
                    if sub_a4479b48[address(cd[4])] < sub_a4479b48[address(cd[4])]:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] = 0
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !sub_a4479b48[address(cd[4])]:
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + sub_a4479b48[address(cd[4])], sub_a4479b48[address(cd[4])], Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
            else:
                if cd[68] and sub_a4479b48[address(cd[4])] > -1 / cd[68]:
                    revert with 0, 17
                if cd[68] * sub_a4479b48[address(cd[4])] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                    revert with 0, 17
                if not ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])]:
                    revert with 0, 18
                if 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                    if sub_a4479b48[address(cd[4])] < 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10:
                        revert with 0, 17
                    sub_a4479b48[address(cd[4])] -= 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10
                require ext_code.size(sub_a2419a6bAddress)
                call sub_a2419a6bAddress.0x53403fb5 with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = cd[68]
                mem[(7 * ceil32(return_data.size)) + 224] = 100
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 356] = 32
                mem[(7 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0
                mem[(7 * ceil32(return_data.size)) + 520] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, address(this.address), cd[68], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 452] == bool(mem[(7 * ceil32(return_data.size)) + 452])
                        if not mem[(7 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[68] > !(10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10):
                    revert with 0, 17
                emit 0x522e11fa: cd[100], cd[68] + (10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10), 10^10 * cd[68] * sub_a4479b48[address(cd[4])] / ext_call.return_data[0] + gasFeeAccumulatedByToken[address(cd[4])] + sub_a4479b48[address(cd[4])] / 10^10, Array(len=('cd', 324).length, data=call.data[cd[324] + 36 len ('cd', 324).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4]), address(cd[36])
    stor1 = 1
}



}
