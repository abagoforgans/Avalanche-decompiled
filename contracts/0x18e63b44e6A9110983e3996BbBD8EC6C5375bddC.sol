contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint8 stor3;

function _fallback() payable {
    revert
}

function sub_6edf2bb2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3[address(arg1)]:
        revert with 0, 'Have already marketed to them'
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Owner can do Mu Marketing...'
    require ext_code.size(stor0)
    staticcall stor0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 0, 'Need to approve more $MUG'
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 0, 'Need to approve more $MU'
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3[address(arg1)] = 1
}

function sub_d41e0fdb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if stor3[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Have already marketed to them'
        if stor2 != msg.sender:
            revert with 0, 'Only Owner can do Mu Marketing...'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] == mem[_82]
        if mem[_82] < 1:
            revert with 0, 'Need to approve more $MUG'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_88] == mem[_88]
        if mem[_88] < 1:
            revert with 0, 'Need to approve more $MU'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _92 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_92)
        mem[mem[64] + 68] = 1
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_92), 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == bool(mem[_96])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _99 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_99)
        mem[mem[64] + 68] = 1
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_99), 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_102] == bool(mem[_102])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
