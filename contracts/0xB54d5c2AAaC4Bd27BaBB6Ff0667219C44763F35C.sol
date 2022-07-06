contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
array of address stor3;

function sub_8c831b70(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function setWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller must be WL'
    stor3.length++
    stor3[stor3.length] = arg1
}

function sub_f7cb885a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, 'Caller must be owner'
    stor0[address(arg1)] = uint8(bool(arg2))
}

function withdraw_token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller must be WL'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7f456802(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller must be WL'
    if cd[4] > stor3.length:
        revert with 0, 'Need to add wallets to proceed'
    idx = 0
    while idx == cd[4]:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        _10 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = cd[36] / 3
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        s = 0
        t = cd[68] + 36
        u = mem[64] + 196
        while s < ('cd', 68).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_10 + 100] = stor3[idx]
        mem[_10 + 132] = block.timestamp
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _10 + (32 * ('cd', 68).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_20d12a63(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller must be WL'
    if arg1 > stor3.length:
        revert with 0, 'Need to add wallets to proceed'
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(arg4)
    mem[160] = address(arg3)
    idx = 0
    while idx == arg1:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        _20 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = arg2 / 3
        mem[mem[64] + 68] = 160
        _21 = mem[96]
        mem[mem[64] + 164] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 196
        while s < _21:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_20 + 100] = stor3[idx]
        mem[_20 + 132] = block.timestamp
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _20 + (32 * _21) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] <= test266151307()
        require _31 + mem[_31] + 31 < _31 + return_data.size
        _33 = mem[_31 + mem[_31]]
        if mem[_31 + mem[_31]] > test266151307():
            revert with 'NH{q', 65
        if _31 + ceil32(return_data.size) + floor32(mem[_31 + mem[_31]]) + 1 > test266151307() or floor32(mem[_31 + mem[_31]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _31 + ceil32(return_data.size) + floor32(mem[_31 + mem[_31]]) + 1
        mem[_31 + ceil32(return_data.size)] = _33
        require _32 + (32 * _33) + 32 <= return_data.size
        s = 0
        t = _31 + _32 + 32
        u = _31 + ceil32(return_data.size) + 32
        while s < _33:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
