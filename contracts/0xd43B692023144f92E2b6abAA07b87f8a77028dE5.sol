contract main {




// =====================  Runtime code  =====================


address owner;
address managerAddress;
address tokenAddress;
address daoAddress;
address poolAddress;
uint256 daoFee;
uint256 claimFee;
uint256 stor7;

function pool() payable {
    return poolAddress
}

function daoFee() payable {
    return daoFee
}

function dao() payable {
    return daoAddress
}

function manager() payable {
    return managerAddress
}

function owner() payable {
    return owner
}

function claimFee() payable {
    return claimFee
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_60e4b226(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    daoFee = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateClaimFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimFee = arg1
}

function updateDaoAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    daoAddress = arg1
}

function sub_9f17ae32(?) payable {
    require ext_code.size(managerAddress)
    call managerAddress.0x84984f46 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ba31694e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(managerAddress)
    call managerAddress.0x79b112ca with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updatePoolAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    poolAddress = arg1
}

function claimAll() payable {
    require ext_code.size(managerAddress)
    call managerAddress.claimAll(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'HELPER: You don't have enough reward to cash out'
    if ext_call.return_data[0] and claimFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args daoAddress, ext_call.return_data[0] * claimFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] < ext_call.return_data[0] * claimFee / 100:
        revert with 0, 17
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(managerAddress)
    call managerAddress.claim(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'HELPER: You don't have enough reward to cash out'
    if ext_call.return_data[0] and claimFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args daoAddress, ext_call.return_data[0] * claimFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] < ext_call.return_data[0] * claimFee / 100:
        revert with 0, 17
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function createNodeWithTokens(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 0:
        revert with 0, 'HELPER: name size is invalid'
    if arg1.length >= 33:
        revert with 0, 'HELPER: name size is invalid'
    if not msg.sender:
        revert with 0, 'HELPER:  Creation from the zero address'
    mem[ceil32(arg1.length) + 132] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] < arg2:
        revert with 0, 'HELPER: Balance too low for creation.'
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 164] = this.address
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 196] = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and daoFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = daoAddress
    mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * daoFee / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args daoAddress, ext_call.return_data[0] * daoFee / 100
    mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] < ext_call.return_data[0] * daoFee / 100:
        revert with 0, 17
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = poolAddress
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * daoFee / 100)
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolAddress, ext_call.return_data[0] - (ext_call.return_data[0] * daoFee / 100)
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor7 > -2:
        revert with 0, 17
    stor7++
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 160] = block.difficulty
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 192] = block.timestamp
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 224] = stor7
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128] = 96
    mem[64] = ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 256
    idx = 0
    while idx <= 5:
        if idx != sha3(block.difficulty, block.timestamp, stor7) % 100:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + arg1.length + 420] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x8d590803 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420 len ceil32(arg1.length)]), 1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 6
    while idx <= 19:
        if idx != sha3(block.difficulty, block.timestamp, stor7) % 100:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + arg1.length + 420] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x8d590803 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420 len ceil32(arg1.length)]), 2, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 20
    while idx <= 40:
        if idx != sha3(block.difficulty, block.timestamp, stor7) % 100:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + arg1.length + 420] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x8d590803 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420 len ceil32(arg1.length)]), 3, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 41
    while idx <= 66:
        if idx != sha3(block.difficulty, block.timestamp, stor7) % 100:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + arg1.length + 420] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x8d590803 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420 len ceil32(arg1.length)]), 4, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 67
    while idx <= 99:
        if idx != sha3(block.difficulty, block.timestamp, stor7) % 100:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + arg1.length + 420] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x8d590803 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 420 len ceil32(arg1.length)]), 5, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(managerAddress)
    call managerAddress.0x8d590803 with:
         gas gas_remaining wei
        args msg.sender, 128, 0, arg2, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
