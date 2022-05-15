contract main {




// =====================  Runtime code  =====================


#
#  - sub_aa967967(?)
#
const getBalance = eth.balance(this.address)


address stor1;
address stor2;
address owner;

function owner() {
    return owner
}

function notPayable() {
  stop
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_635aad15(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[164] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = stor2
    mem[132] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, cd[68]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[4]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = msg.sender
    mem[ceil32(return_data.size) + 196] = cd[100]
    require ext_code.size(stor2)
    call stor2.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 36).length]), msg.sender, cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _49 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _50 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _49 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _50:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _88 = mem[64]
    mem[64] = mem[64] + 64
    mem[_88] = 11
    mem[_88 + 32] = 'AMOUNTS OUT'
    _89 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _126 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_126 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_126 + 36 len mem[_126] - 4]
    if 0 >= _50:
        revert with 'NH{q', 50
    if 1 >= _50:
        revert with 'NH{q', 50
    _137 = mem[(2 * ceil32(return_data.size)) + 160]
    mem[_89 + 168] = mem[(2 * ceil32(return_data.size)) + 128]
    mem[_89 + 200] = _137
    mem[_89 + 132] = 68
    mem[_89 + 164 len 4] = 1812949376
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_89 + 168], _137
    mem[_89 + 232] = 32
    mem[_89 + 264] = _50
    mem[_89 + 296 len 32 * _50] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _50]
    return Array(len=_50, data=mem[_89 + 296 len 32 * _50])
}

function sub_828a9247(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[164] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = stor1
    mem[132] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, cd[68]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[4]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = msg.sender
    mem[ceil32(return_data.size) + 196] = cd[100]
    require ext_code.size(stor1)
    call stor1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 36).length]), msg.sender, cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _49 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _50 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _49 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _50:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _88 = mem[64]
    mem[64] = mem[64] + 64
    mem[_88] = 11
    mem[_88 + 32] = 'AMOUNTS OUT'
    _89 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _126 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_126 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_126 + 36 len mem[_126] - 4]
    if 0 >= _50:
        revert with 'NH{q', 50
    if 1 >= _50:
        revert with 'NH{q', 50
    _137 = mem[(2 * ceil32(return_data.size)) + 160]
    mem[_89 + 168] = mem[(2 * ceil32(return_data.size)) + 128]
    mem[_89 + 200] = _137
    mem[_89 + 132] = 68
    mem[_89 + 164 len 4] = 1812949376
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_89 + 168], _137
    mem[_89 + 232] = 32
    mem[_89 + 264] = _50
    mem[_89 + 296 len 32 * _50] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _50]
    return Array(len=_50, data=mem[_89 + 296 len 32 * _50])
}

function sub_0b872c70(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[164] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = stor2
    mem[132] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, cd[68]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = cd[4]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = cd[100]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[68], cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), msg.sender, cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _48 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _49
    require _48 + (32 * _49) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _48 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _49:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _87 = mem[64]
    mem[64] = mem[64] + 64
    mem[_87] = 11
    mem[_87 + 32] = 'AMOUNTS OUT'
    _88 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _125 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_125 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_125 + 36 len mem[_125] - 4]
    if 0 >= _49:
        revert with 'NH{q', 50
    if 1 >= _49:
        revert with 'NH{q', 50
    _136 = mem[(2 * ceil32(return_data.size)) + 160]
    mem[_88 + 168] = mem[(2 * ceil32(return_data.size)) + 128]
    mem[_88 + 200] = _136
    mem[_88 + 132] = 68
    mem[_88 + 164 len 4] = 1812949376
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_88 + 168], _136
    mem[_88 + 232] = 32
    mem[_88 + 264] = _49
    mem[_88 + 296 len 32 * _49] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _49]
    return Array(len=_49, data=mem[_88 + 296 len 32 * _49])
}

function sub_0d51f25e(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[164] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = stor1
    mem[132] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, cd[68]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = cd[4]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = cd[100]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[68], cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), msg.sender, cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _48 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _49
    require _48 + (32 * _49) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _48 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _49:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _87 = mem[64]
    mem[64] = mem[64] + 64
    mem[_87] = 11
    mem[_87 + 32] = 'AMOUNTS OUT'
    _88 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _125 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_125 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_125 + 36 len mem[_125] - 4]
    if 0 >= _49:
        revert with 'NH{q', 50
    if 1 >= _49:
        revert with 'NH{q', 50
    _136 = mem[(2 * ceil32(return_data.size)) + 160]
    mem[_88 + 168] = mem[(2 * ceil32(return_data.size)) + 128]
    mem[_88 + 200] = _136
    mem[_88 + 132] = 68
    mem[_88 + 164 len 4] = 1812949376
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_88 + 168], _136
    mem[_88 + 232] = 32
    mem[_88 + 264] = _49
    mem[_88 + 296 len 32 * _49] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _49]
    return Array(len=_49, data=mem[_88 + 296 len 32 * _49])
}



}
