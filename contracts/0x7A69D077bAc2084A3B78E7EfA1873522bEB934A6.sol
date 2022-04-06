contract main {




// =====================  Runtime code  =====================


address sphereAddress;
uint256 startReleaseBlock;
uint256 endBlock;
uint256 totalLocked;
uint256 totalClaimed;
uint256 totalBurned;
mapping of struct lockOf;
mapping of uint256 released;
mapping of uint256 burned;

function getStartReleaseBlock() payable {
    return startReleaseBlock
}

function totalLocked() payable {
    return totalLocked
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)].field_0
}

function startReleaseBlock() payable {
    return startReleaseBlock
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[address(arg1)]
}

function sphere() payable {
    return sphereAddress
}

function burned(address arg1) payable {
    require calldata.size - 4 >= 32
    return burned[address(arg1)]
}

function endReleaseBlock() payable {
    return endBlock
}

function totalClaimed() payable {
    return totalClaimed
}

function totalBurned() payable {
    return totalBurned
}

function getEndBlock() payable {
    return endBlock
}

function _fallback() payable {
    revert
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.number >= endBlock:
        revert with 0, 'no more lock'
    if not arg1:
        revert with 0, 'no lock to address(0)'
    if arg2 <= 0:
        revert with 0, 'zero lock'
    if arg2 + lockOf[address(arg1)].field_0 < lockOf[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)].field_0 += arg2
    if arg2 + totalLocked < totalLocked:
        revert with 0, 'SafeMath: addition overflow'
    totalLocked += arg2
    emit Lock(arg2, arg1);
}

function unlock() payable {
    if block.number <= startReleaseBlock:
        revert with 0, 'is still locked'
    if not lockOf[msg.sender].field_0:
        revert with 0, 'nothing is locked'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sphereAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sphereAddress):
        revert with 0, 'Address: call to non-contract'
    if block.number <= endBlock:
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, lockOf[msg.sender].field_32
        call sphereAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args lockOf[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, lockOf[msg.sender].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if lockOf[msg.sender].field_0 + released[msg.sender] < released[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        released[msg.sender] += lockOf[msg.sender].field_0
        if lockOf[msg.sender].field_0 + totalClaimed < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += lockOf[msg.sender].field_0
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), 0, 0, lockOf[msg.sender].field_32
        call sphereAddress.0xdead with:
             gas gas_remaining wei
            args lockOf[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), 0, 0, lockOf[msg.sender].field_0
            if not unknown_0xa9059cbb(?????), 0:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if lockOf[msg.sender].field_0 + burned[msg.sender] < burned[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        burned[msg.sender] += lockOf[msg.sender].field_0
        if lockOf[msg.sender].field_0 + totalBurned < totalBurned:
            revert with 0, 'SafeMath: addition overflow'
        totalBurned += lockOf[msg.sender].field_0
    if lockOf[msg.sender].field_0 > totalLocked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalLocked -= lockOf[msg.sender].field_0
    lockOf[msg.sender].field_0 = 0
}



}
