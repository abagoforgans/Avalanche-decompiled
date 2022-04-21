contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#
address owner;
uint256 releaseTime;
uint256 releasePeriod;
uint256 sub_4409adb2;
address tokenAddress;
mapping of struct sub_e96c06fc;

function sub_4409adb2(?) payable {
    return sub_4409adb2
}

function releasePeriod() payable {
    return releasePeriod
}

function owner() payable {
    return owner
}

function releaseTime() payable {
    return releaseTime
}

function sub_e96c06fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e96c06fc[arg1].field_0, sub_e96c06fc[arg1].field_256, sub_e96c06fc[arg1].field_512, sub_e96c06fc[arg1].field_768
}

function token() payable {
    return tokenAddress
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

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f753eef7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenLocker::addReleaseTask WRONG_DATA'
    idx = 0
    while idx < ('cd', 4).length:
        _80 = mem[64]
        mem[64] = mem[64] + 128
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[_80] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if not sub_4409adb2:
            revert with 'NH{q', 18
        mem[_80 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / sub_4409adb2
        mem[_80 + 64] = 0
        mem[_80 + 96] = releaseTime
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        sub_e96c06fc[mem[(32 * idx) + 140 len 20]].field_0 = mem[_80]
        sub_e96c06fc[mem[(32 * idx) + 140 len 20]].field_256 = mem[_80 + 32]
        sub_e96c06fc[mem[(32 * idx) + 140 len 20]].field_512 = 0
        sub_e96c06fc[mem[(32 * idx) + 140 len 20]].field_768 = releaseTime
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _93 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        emit 0xfdea3f49: mem[mem[64]], address(_93)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
