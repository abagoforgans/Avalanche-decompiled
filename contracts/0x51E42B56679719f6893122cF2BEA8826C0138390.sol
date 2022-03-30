contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - incrementLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
address owner;
uint256 stor1;
address uniswapFactoryAddress;
array of struct userLockedTokenAtIndex;
array of struct lockedTokenAtIndex;
mapping of uint256 stor5;
array of struct numLocksForToken;

function getLockedTokenAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= lockedTokenAtIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return lockedTokenAtIndex[arg1].field_0
}

function getNumLocksForToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numLocksForToken[address(arg1)].field_0
}

function getNumLockedTokens() {
    return lockedTokenAtIndex.length
}

function uniswapFactory() {
    return uniswapFactoryAddress
}

function owner() {
    return owner
}

function getUserLockedTokenAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= userLockedTokenAtIndex[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return userLockedTokenAtIndex[address(arg1)][arg2].field_0
}

function getUserNumLockedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userLockedTokenAtIndex[address(arg1)].field_0
}

function getUserNumLocksForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userLockedTokenAtIndex[address(arg1)][2][address(arg2)].field_0
}

function tokenLocks(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < numLocksForToken[arg1].field_0
    return numLocksForToken[arg1][arg2].field_0, 
           numLocksForToken[arg1][arg2].field_256,
           numLocksForToken[arg1][arg2].field_512,
           numLocksForToken[arg1][arg2].field_768,
           numLocksForToken[arg1][arg2].field_1024,
           numLocksForToken[arg1][arg2].field_1280
}

function getUserLockForTokenAtIndex(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= userLockedTokenAtIndex[address(arg1)][2][address(arg2)].field_0:
        revert with 0, 50
    if userLockedTokenAtIndex[address(arg1)][2][address(arg2)][arg3].field_0 >= numLocksForToken[address(arg2)].field_0:
        revert with 0, 50
    return numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_0, 
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_256,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_512,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_768,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_1024,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_1280
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function relock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    if arg2 >= userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0:
        revert with 0, 50
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 >= numLocksForToken[address(arg1)].field_0:
        revert with 0, 50
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 >= arg4:
        revert with 0, 'UNLOCK BEFORE'
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 = arg4
    stor1 = 1
}

function transferLockOwnership(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 == msg.sender:
        revert with 0, 'OWNER'
    if arg2 >= userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0:
        revert with 0, 50
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 >= numLocksForToken[address(arg1)].field_0:
        revert with 0, 50
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
        userLockedTokenAtIndex[address(arg4)].field_0++
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
        userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1024
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0 < 1:
        revert with 0, 17
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0 - 1 >= userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0:
        revert with 0, 50
    if arg2 >= userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0:
        revert with 0, 50
    userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 = userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0
    if not userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0:
        revert with 0, 49
    userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0 = 0
    userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0--
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 = arg4
}

function lockLPToken(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg3 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    if arg2 <= 0:
        revert with 0, 'INSUFFICIENT'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(uniswapFactoryAddress)
    staticcall uniswapFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'NOT UNIV2'
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[(4 * ceil32(return_data.size)) + 228 len 28]
    call arg1.mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
            if not mem[(4 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    numLocksForToken[address(arg1)].field_0++
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
    if not stor5[address(arg1)]:
        lockedTokenAtIndex.length++
        lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
        lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
        stor5[address(arg1)] = lockedTokenAtIndex.length
    if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
        userLockedTokenAtIndex[address(arg4)].field_0++
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
        userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
    emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
    stor1 = 1
}



}
