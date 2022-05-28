contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address sub_b07fda2b;
uint256 stor2;
uint256 sub_3f8b3486;
address stor5;
address stor6;
address stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;

function userClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sub_3f8b3486(?) payable {
    return sub_3f8b3486
}

function sub_b07fda2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b07fda2b.length
    return sub_b07fda2b[arg1]
}

function _fallback() payable {
    revert
}

function sub_4b0e503a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor8.field_0)
    stor2 = arg1
}

function sub_ab1a04d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor8.field_0)
    sub_3f8b3486 = arg1
}

function sub_bd36d070(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(stor8.field_0)
    stor7 = address(arg1)
}

function claim() payable {
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
    mem[0] = msg.sender
    mem[32] = 0
    if stor0[address(msg.sender)]:
        revert with 0, 'You have already claimed this'
    mem[96] = 0x486af96a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor5)
    staticcall stor5.0x486af96a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _8 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _8
    require _7 + (128 * _8) + 32 <= return_data.size
    idx = 0
    s = _7 + 128
    t = ceil32(return_data.size) + 128
    while idx < _8:
        require return_data.size + -s + 96 >= 128
        _29 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s]
        mem[_29] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_29 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_29 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_29 + 96] = mem[s + 96]
        mem[t] = _29
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _28 = mem[ceil32(return_data.size) + 96]
    if mem[ceil32(return_data.size) + 96] <= 0:
        revert with 0, 'You must have nodes to claim this'
    _31 = mem[64]
    mem[64] = mem[64] + 128
    mem[_31] = 0
    mem[_31 + 32] = 0
    mem[_31 + 64] = 0
    mem[_31 + 96] = 0
    idx = 0
    s = 0
    t = 0
    u = _31
    while idx < _28:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= stor2:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = mem[(32 * idx) + ceil32(return_data.size) + 128]
            continue 
        if t > -sub_3f8b3486 - 1:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = t + sub_3f8b3486
        u = mem[(32 * idx) + ceil32(return_data.size) + 128]
        continue 
    mem[32] = 0
    stor0[address(msg.sender)] = 1
    sub_b07fda2b.length++
    mem[0] = 1
    sub_b07fda2b[sub_b07fda2b.length] = msg.sender
    mem[mem[64] + 4] = stor7
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = t
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor7, msg.sender, t
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_53] == bool(mem[_53])
    Mask(96, 0, stor8.field_160) = 0
}



}
