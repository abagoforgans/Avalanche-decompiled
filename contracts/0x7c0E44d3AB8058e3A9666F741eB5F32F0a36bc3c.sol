contract main {




// =====================  Runtime code  =====================


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
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
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
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
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

function sub_05df0eec(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[164] = cd[100]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = stor2
    mem[132] = cd[100]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, cd[100]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[100]
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
    mem[ceil32(return_data.size) + 228] = cd[132]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[100], cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _44 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _45 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[100]) >> 32 + 96]
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _44 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _45:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _107 = mem[64]
    mem[64] = mem[64] + 64
    mem[_107] = 11
    mem[_107 + 32] = 'AMOUNTS OUT'
    _108 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _211 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_211 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_211 + 36 len mem[_211] - 4]
    if 0 >= _45:
        revert with 'NH{q', 50
    if 1 >= _45:
        revert with 'NH{q', 50
    _222 = mem[(2 * ceil32(return_data.size)) + 160]
    mem[_108 + 168] = mem[(2 * ceil32(return_data.size)) + 128]
    mem[_108 + 200] = _222
    mem[_108 + 132] = 68
    mem[_108 + 164 len 4] = 1812949376
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_108 + 168], _222
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= _45:
        revert with 'NH{q', 50
    if owner != msg.sender:
        revert with 0, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[_108 + 300] = mem[(32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 128]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), mem[(32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[_108 + 236] = stor1
    mem[_108 + 268] = mem[(32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 128]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, mem[(32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 128]
    mem[_108 + 232] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_108 + ceil32(return_data.size) + 232] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_108 + ceil32(return_data.size) + 236] = mem[(32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 128]
    mem[_108 + ceil32(return_data.size) + 268] = cd[4]
    mem[_108 + ceil32(return_data.size) + 300] = 160
    mem[_108 + ceil32(return_data.size) + 396] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _108 + ceil32(return_data.size) + 428
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_108 + ceil32(return_data.size) + 332] = msg.sender
    mem[_108 + ceil32(return_data.size) + 364] = cd[132]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[_108 + ceil32(return_data.size) + 236], cd[4], Array(len=('cd', 68).length, data=mem[_108 + ceil32(return_data.size) + 428 len 32 * ('cd', 68).length]), msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_108 + ceil32(return_data.size) + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _321 = mem[_108 + ceil32(return_data.size) + 232]
    require mem[_108 + ceil32(return_data.size) + 232] <= test266151307()
    require _108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 263 < _108 + ceil32(return_data.size) + return_data.size + 232
    _323 = mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232]
    if mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232] > test266151307():
        revert with 'NH{q', 65
    if _108 + (2 * ceil32(return_data.size)) + floor32(mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232]) + 233 > test266151307() or floor32(mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _108 + (2 * ceil32(return_data.size)) + floor32(mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232]) + 233
    mem[_108 + (2 * ceil32(return_data.size)) + 232] = mem[_108 + ceil32(return_data.size) + mem[_108 + ceil32(return_data.size) + 232] + 232]
    require _321 + (32 * _323) + 32 <= return_data.size
    idx = 0
    s = _108 + ceil32(return_data.size) + _321 + 264
    t = _108 + (2 * ceil32(return_data.size)) + 264
    while idx < _323:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _383 = mem[64]
    mem[64] = mem[64] + 64
    mem[_383] = 11
    mem[_383 + 32] = 'AMOUNTS OUT'
    _385 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 11
    mem[mem[64] + 100] = 'AMOUNTS OUT'
    mem[mem[64] + 111] = 0
    _444 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_444 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_444 + 36 len mem[_444] - 4]
    if 0 >= _323:
        revert with 'NH{q', 50
    if 1 >= _323:
        revert with 'NH{q', 50
    _465 = mem[_108 + (2 * ceil32(return_data.size)) + 296]
    mem[_385 + 168] = mem[_108 + (2 * ceil32(return_data.size)) + 264]
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args mem[_385 + 168], _465
}

function sub_4a037314(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch of exchange and path params'
    idx = 0
    while idx < ('cd', 36).length:
        _85 = mem[64]
        mem[mem[64] + 32] = 'JOE'
        _86 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 35
        _88 = sha3(mem[_86 + 32 len mem[_86]])
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_85 + 67 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 67] = 0
        mem[_85 + 35] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[64] = _85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 67
        if sha3(call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]) == _88:
            mem[64] = _85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 131
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 67] = 15
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 99] = 'SWAPPING ON JOE'
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 167] = 32
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 199] = 15
            s = 0
            while s < 15:
                mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + s + 231] = mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + s + 99]
                s = s + 32
                continue 
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 246] = 0
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 131] = 100
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 163] = 0 or 0x41304fac00000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.log(string arg1) with:
                    gas gas_remaining wei
                   args 0, 0, 15, mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 231 len 15], 0
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            if owner != msg.sender:
                revert with 0, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
            if 0 >= cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)])
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 331] = cd[100]
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]))
            call address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)])
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 267] = stor2
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 299] = cd[100]
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]))
            call address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, cd[100]
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 263] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 263
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 263] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 267] = cd[100]
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 299] = cd[4]
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 331] = 160
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 427] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
            u = _85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 459
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 363] = msg.sender
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + ceil32(return_data.size) + 395] = cd[132]
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _433 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _437 = mem[_433]
            require mem[_433] <= test266151307()
            require _433 + mem[_433] + 31 < _433 + return_data.size
            _441 = mem[_433 + mem[_433]]
            if mem[_433 + mem[_433]] > test266151307():
                revert with 'NH{q', 65
            if _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1 > test266151307() or floor32(mem[_433 + mem[_433]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1
            mem[_433 + ceil32(return_data.size)] = _441
            require _437 + (32 * _441) + 32 <= return_data.size
            s = 0
            t = _433 + _437 + 32
            u = _433 + ceil32(return_data.size) + 32
            while s < _441:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _585 = mem[64]
            mem[64] = mem[64] + 64
            mem[_585] = 11
            mem[_585 + 32] = 'AMOUNTS OUT'
            _589 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = 11
            s = 0
            while s < 11:
                mem[mem[64] + s + 100] = mem[_585 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 111] = 0
            _732 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_732 + 32] = mem[_732 + 36 len 28] or 0x41304fac00000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_732 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_732 + 36 len mem[_732] - 4]
            if 0 >= mem[_433 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if 1 >= mem[_433 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            _773 = mem[_433 + ceil32(return_data.size) + 64]
            mem[_589 + 168] = mem[_433 + ceil32(return_data.size) + 32]
            mem[_589 + 200] = _773
            mem[_589 + 132] = 68
            mem[64] = _589 + 232
            mem[_589 + 164] = mem[_589 + 168 len 28] or 0x6c0f698000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_589 + 164 len 4] with:
                    gas gas_remaining wei
                   args mem[_589 + 168], _773
            if mem[_433 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_433 + ceil32(return_data.size)] - 1 >= mem[_433 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        else:
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 99] = 'PNG'
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 67] = 3
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 134 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 134] = 0
            mem[_85 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 102] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[64] = _85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 134
            if sha3(call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]) == sha3('PNG'):
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 134] = 20
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 166] = 'SWAPPING ON PANGOLIN'
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 234] = 32
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 266] = 20
                s = 0
                while s < 20:
                    mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + s + 298] = mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + s + 166]
                    s = s + 32
                    continue 
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 318] = 0
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 198] = 100
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 230] = 0 or 0x41304fac00000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.log(string arg1) with:
                        gas gas_remaining wei
                       args 0, 0, 20, mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 298 len 20], 0
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
                if owner != msg.sender:
                    revert with 0, 'ONLY MANAGER CAN USE THIS FUNCTION!!!'
                if 0 >= cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    revert with 'NH{q', 50
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)])
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 398] = cd[100]
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]))
                call address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    revert with 'NH{q', 50
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)])
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 334] = stor1
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 366] = cd[100]
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]))
                call address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, cd[100]
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 330] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 330
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 334] = cd[100]
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 366] = cd[4]
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 398] = 160
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 494] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                s = 0
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                u = _85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 526
                while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 430] = msg.sender
                mem[_85 + (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + ceil32(return_data.size) + 462] = cd[132]
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _435 = mem[_431]
                require mem[_431] <= test266151307()
                require _431 + mem[_431] + 31 < _431 + return_data.size
                _439 = mem[_431 + mem[_431]]
                if mem[_431 + mem[_431]] > test266151307():
                    revert with 'NH{q', 65
                if _431 + ceil32(return_data.size) + floor32(mem[_431 + mem[_431]]) + 1 > test266151307() or floor32(mem[_431 + mem[_431]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _431 + ceil32(return_data.size) + floor32(mem[_431 + mem[_431]]) + 1
                mem[_431 + ceil32(return_data.size)] = _439
                require _435 + (32 * _439) + 32 <= return_data.size
                s = 0
                t = _431 + _435 + 32
                u = _431 + ceil32(return_data.size) + 32
                while s < _439:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _583 = mem[64]
                mem[64] = mem[64] + 64
                mem[_583] = 11
                mem[_583 + 32] = 'AMOUNTS OUT'
                _587 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = 11
                s = 0
                while s < 11:
                    mem[mem[64] + s + 100] = mem[_583 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 111] = 0
                _726 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_726 + 32] = mem[_726 + 36 len 28] or 0x41304fac00000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_726 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_726 + 36 len mem[_726] - 4]
                if 0 >= mem[_431 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if 1 >= mem[_431 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                _769 = mem[_431 + ceil32(return_data.size) + 64]
                mem[_587 + 168] = mem[_431 + ceil32(return_data.size) + 32]
                mem[_587 + 200] = _769
                mem[_587 + 132] = 68
                mem[64] = _587 + 232
                mem[_587 + 164] = mem[_587 + 168 len 28] or 0x6c0f698000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_587 + 164 len 4] with:
                        gas gas_remaining wei
                       args mem[_587 + 168], _769
                if mem[_431 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_431 + ceil32(return_data.size)] - 1 >= mem[_431 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
