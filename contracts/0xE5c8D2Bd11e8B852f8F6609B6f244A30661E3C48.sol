contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 totalAmount;
uint256 vestingTime;
uint256 count;
uint256 tgePercent;
uint256 startTime;
mapping of struct userInfo;

function count() payable {
    return count
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function totalAmount() payable {
    return totalAmount
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function vestingTime() payable {
    return vestingTime
}

function tgePercent() payable {
    return tgePercent
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setVestingTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not -arg1:
        revert with 0, 'zero time'
    vestingTime = arg1
}

function sync() payable {
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalAmount = ext_call.return_data[0]
}

function contractBalance() payable {
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_62536e1d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if userInfo[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    userInfo[address(arg1)].field_512 += arg2
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startTime:
        revert with 0, 17
    if not vestingTime:
        revert with 0, 18
    if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 and block.timestamp - startTime / vestingTime > -1 / userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
        revert with 0, 17
    if userInfo[address(arg1)].field_512 > !userInfo[address(arg1)].field_256:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 == userInfo[address(arg1)].field_512 + userInfo[address(arg1)].field_256:
        return 0
    if (userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12 < userInfo[address(arg1)].field_512:
        revert with 0, 17
    return (((userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12) - userInfo[address(arg1)].field_512)
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_512 > !userInfo[address(arg1)].field_256:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 != userInfo[address(arg1)].field_512 + userInfo[address(arg1)].field_256:
        if block.timestamp < startTime:
            revert with 0, 17
        if not vestingTime:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 and block.timestamp - startTime / vestingTime > -1 / userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
            revert with 0, 17
        if userInfo[address(arg1)].field_512 > !userInfo[address(arg1)].field_256:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 == userInfo[address(arg1)].field_512 + userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > -1:
                revert with 0, 17
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            if (userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12 < userInfo[address(arg1)].field_512:
                revert with 0, 17
            if userInfo[address(arg1)].field_512 > !(((userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12) - userInfo[address(arg1)].field_512):
                revert with 0, 17
            userInfo[address(arg1)].field_512 = (userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ((userInfo[address(arg1)].field_0 * block.timestamp - startTime / vestingTime) - (userInfo[address(arg1)].field_256 * block.timestamp - startTime / vestingTime) / 12) - userInfo[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2857dd65(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'mismatched length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _62 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and tgePercent > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        userInfo[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        userInfo[mem[(32 * idx) + 140 len 20]].field_256 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * tgePercent / 100
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _62 * tgePercent / 100
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _62 * tgePercent / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == bool(mem[_66])
        if not count + 1:
            revert with 0, 17
        count++
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if totalAmount > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        totalAmount += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
