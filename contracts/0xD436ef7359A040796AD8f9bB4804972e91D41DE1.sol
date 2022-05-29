contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_8689d94b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    call address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
    require ext_call.success
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_820bd7d5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[36] == bool(cd[36])
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2e449e9b(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _27 = mem[128]
    mem[floor32(('cd', 36).length) + 101] = this.address
    require ext_code.size(address(_27))
    staticcall address(_27).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = address(cd[4])
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 133] = ext_call.return_data[0]
    require ext_code.size(address(_27))
    call address(_27).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -86401:
        revert with 'NH{q', 17
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 133] = cd[68]
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 165] = 160
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 293
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 197] = stor0
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 229] = block.timestamp + (24 * 3600)
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 36).length]), stor0, block.timestamp + (24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _49 = mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28]
    require mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 128 < floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + return_data.size + 97
    _50 = mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]
    if mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98
    mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + _49 + 129
    t = floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 129
    while idx < _50:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
