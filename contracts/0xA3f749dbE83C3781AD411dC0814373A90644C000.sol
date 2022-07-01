contract main {




// =====================  Runtime code  =====================


array of uint256 sub_cedb8a81;

function sub_cedb8a81(?) {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function sub_b295ba23(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 128, address(arg5), address(arg6), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    mem[192] = 2
    if arg3:
        revert with 0, '_amount1 needs to be 0!'
    require arg4.length >= 128
    if address(cd[(arg4 + 100)]) == address(cd[(arg4 + 132)]):
        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
    if address(cd[(arg4 + 100)]) >= address(cd[(arg4 + 132)]):
        if not address(cd[(arg4 + 132)]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[320] = address(cd[(arg4 + 132)])
        mem[340] = address(cd[(arg4 + 100)])
        mem[392] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[393] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
        mem[413] = sha3(address(cd[(arg4 + 132)]), address(cd[(arg4 + 100)]))
        mem[445] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
        if address(sha3(0, 11157320132538271434, sha3(address(cd[(arg4 + 132)]), address(cd[(arg4 + 100)])), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
            revert with 0, 'Not from pair!'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[477] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[481] = arg2
        mem[513] = 64
        mem[545] = 2
        mem[577 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[577 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[477 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 477
        require return_data.size >= 32
        _127 = mem[477 len 4], Mask(224, 32, arg2) >> 32
        require mem[477 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[477 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477] <= 4294967296 and mem[477 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 477] = mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477]
        _132 = mem[_127 + 477]
        mem[ceil32(return_data.size) + 509 len floor32(mem[_127 + 477])] = mem[_127 + 509 len floor32(mem[_127 + 477])]
        require 0 < mem[ceil32(return_data.size) + 477]
        _193 = mem[ceil32(return_data.size) + 509]
        mem[(32 * _132) + ceil32(return_data.size) + 509] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _132) + ceil32(return_data.size) + 513] = arg2
        mem[(32 * _132) + ceil32(return_data.size) + 545] = _193
        mem[(32 * _132) + ceil32(return_data.size) + 609] = msg.sender
        mem[(32 * _132) + ceil32(return_data.size) + 641] = block.timestamp + 60
        mem[(32 * _132) + ceil32(return_data.size) + 577] = 160
        mem[(32 * _132) + ceil32(return_data.size) + 673] = 2
        mem[(32 * _132) + ceil32(return_data.size) + 705 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _193, Array(len=2, data=mem[(32 * _132) + ceil32(return_data.size) + 705 len 64]), msg.sender, block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _132) + ceil32(return_data.size) + 509 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _132) + (2 * ceil32(return_data.size)) + 509
        require return_data.size >= 32
        _245 = mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _132) + ceil32(return_data.size) + 509] <= 4294967296 and mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _132) + ceil32(return_data.size) + 509]) + 32 <= return_data.size
        mem[(32 * _132) + (2 * ceil32(return_data.size)) + 509] = mem[mem[(32 * _132) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _132) + ceil32(return_data.size) + 509]
        mem[(32 * _132) + (2 * ceil32(return_data.size)) + 541 len floor32(mem[_245 + (32 * _132) + ceil32(return_data.size) + 509])] = mem[_245 + (32 * _132) + ceil32(return_data.size) + 541 len floor32(mem[_245 + (32 * _132) + ceil32(return_data.size) + 509])]
        require 1 < mem[(32 * _132) + (2 * ceil32(return_data.size)) + 509]
        if mem[(32 * _132) + (2 * ceil32(return_data.size)) + 573] <= _193:
            revert with 0, 'Got to litte!'
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _193
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _132) + (2 * ceil32(return_data.size)) + 573] - _193
    else:
        if not address(cd[(arg4 + 100)]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[320] = address(cd[(arg4 + 100)])
        mem[340] = address(cd[(arg4 + 132)])
        mem[288] = 40
        mem[392] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[393] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
        mem[413] = sha3(address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)]))
        mem[445] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
        mem[360] = 85
        if address(sha3(0, 11157320132538271434, sha3(address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)])), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
            revert with 0, 'Not from pair!'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[256] = address(cd[(arg4 + 132)])
        mem[128] = address(cd[(arg4 + 132)])
        mem[224] = address(cd[(arg4 + 100)])
        mem[160] = address(cd[(arg4 + 100)])
        mem[477] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[481] = arg2
        mem[513] = 64
        mem[545] = 2
        mem[577 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[577 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[477 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 477
        require return_data.size >= 32
        _125 = mem[477 len 4], Mask(224, 32, arg2) >> 32
        require mem[477 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[477 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477] <= 4294967296 and mem[477 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 477] = mem[mem[477 len 4], Mask(224, 32, arg2) >> 32 + 477]
        _131 = mem[_125 + 477]
        mem[ceil32(return_data.size) + 509 len floor32(mem[_125 + 477])] = mem[_125 + 509 len floor32(mem[_125 + 477])]
        require 0 < mem[ceil32(return_data.size) + 477]
        _189 = mem[ceil32(return_data.size) + 509]
        mem[(32 * _131) + ceil32(return_data.size) + 509] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _131) + ceil32(return_data.size) + 513] = arg2
        mem[(32 * _131) + ceil32(return_data.size) + 545] = _189
        mem[(32 * _131) + ceil32(return_data.size) + 609] = msg.sender
        mem[(32 * _131) + ceil32(return_data.size) + 641] = block.timestamp + 60
        mem[(32 * _131) + ceil32(return_data.size) + 577] = 160
        mem[(32 * _131) + ceil32(return_data.size) + 673] = 2
        mem[(32 * _131) + ceil32(return_data.size) + 705 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _189, Array(len=2, data=mem[(32 * _131) + ceil32(return_data.size) + 705 len 64]), msg.sender, block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _131) + ceil32(return_data.size) + 509 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _131) + (2 * ceil32(return_data.size)) + 509
        require return_data.size >= 32
        _243 = mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _131) + ceil32(return_data.size) + 509] <= 4294967296 and mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _131) + ceil32(return_data.size) + 509]) + 32 <= return_data.size
        mem[(32 * _131) + (2 * ceil32(return_data.size)) + 509] = mem[mem[(32 * _131) + ceil32(return_data.size) + 509 len 4], Mask(224, 32, arg2) >> 32 + (32 * _131) + ceil32(return_data.size) + 509]
        mem[(32 * _131) + (2 * ceil32(return_data.size)) + 541 len floor32(mem[_243 + (32 * _131) + ceil32(return_data.size) + 509])] = mem[_243 + (32 * _131) + ceil32(return_data.size) + 541 len floor32(mem[_243 + (32 * _131) + ceil32(return_data.size) + 509])]
        require 1 < mem[(32 * _131) + (2 * ceil32(return_data.size)) + 509]
        if mem[(32 * _131) + (2 * ceil32(return_data.size)) + 573] <= _189:
            revert with 0, 'Got to litte!'
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _189
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _131) + (2 * ceil32(return_data.size)) + 573] - _189
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
