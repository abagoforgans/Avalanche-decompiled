contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function sub_81230923(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor2
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = stor1
    mem[ceil32(return_data.size) + 228] = stor0
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = arg2
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _25 = mem[_24]
    require mem[_24] <= test266151307()
    require _24 + mem[_24] + 31 < _24 + return_data.size
    _26 = mem[_24 + mem[_24]]
    if mem[_24 + mem[_24]] > test266151307():
        revert with 'NH{q', 65
    if _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1 > test266151307() or floor32(mem[_24 + mem[_24]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1
    mem[_24 + ceil32(return_data.size)] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = _24 + _25 + 32
    t = _24 + ceil32(return_data.size) + 32
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_b16b2924(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor1
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = stor4
    mem[ceil32(return_data.size) + 228] = stor0
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = arg2
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _25 = mem[_24]
    require mem[_24] <= test266151307()
    require _24 + mem[_24] + 31 < _24 + return_data.size
    _26 = mem[_24 + mem[_24]]
    if mem[_24 + mem[_24]] > test266151307():
        revert with 'NH{q', 65
    if _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1 > test266151307() or floor32(mem[_24 + mem[_24]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1
    mem[_24 + ceil32(return_data.size)] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = _24 + _25 + 32
    t = _24 + ceil32(return_data.size) + 32
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_bac97573(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor1
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = stor2
    mem[ceil32(return_data.size) + 228] = stor0
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = arg2
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _25 = mem[_24]
    require mem[_24] <= test266151307()
    require _24 + mem[_24] + 31 < _24 + return_data.size
    _26 = mem[_24 + mem[_24]]
    if mem[_24 + mem[_24]] > test266151307():
        revert with 'NH{q', 65
    if _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1 > test266151307() or floor32(mem[_24 + mem[_24]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1
    mem[_24 + ceil32(return_data.size)] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = _24 + _25 + 32
    t = _24 + ceil32(return_data.size) + 32
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_fb384168(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor4
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = stor1
    mem[ceil32(return_data.size) + 228] = stor0
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = arg2
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _25 = mem[_24]
    require mem[_24] <= test266151307()
    require _24 + mem[_24] + 31 < _24 + return_data.size
    _26 = mem[_24 + mem[_24]]
    if mem[_24 + mem[_24]] > test266151307():
        revert with 'NH{q', 65
    if _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1 > test266151307() or floor32(mem[_24 + mem[_24]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _24 + ceil32(return_data.size) + floor32(mem[_24 + mem[_24]]) + 1
    mem[_24 + ceil32(return_data.size)] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = _24 + _25 + 32
    t = _24 + ceil32(return_data.size) + 32
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
