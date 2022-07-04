contract main {




// =====================  Runtime code  =====================


array of uint256 sub_cedb8a81;

function sub_cedb8a81(?) payable {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function sub_bf9bd4bd(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg5)
    staticcall arg5.getPair(address arg1, address arg2) with:
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
        args arg3, arg4, address(this.address), 128, 160, address(arg5), address(arg6), address(arg7), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    mem[192] = 2
    if arg3:
        revert with 0, '_amount1 needs to be 0!'
    require arg4.length >= 160
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)]), address(cd[(arg4 + 164)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = 30
    mem[320] = 'Not from pair! got pairAddress'
    mem[384] = address(msg.sender)
    mem[352] = 20
    mem[404] = 42
    mem[436 len 42] = call.data[calldata.size len 42]
    mem[436 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    mem[437 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 0
    while idx < 20:
        require idx < 20
        require idx < 20
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 439 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 438 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        idx = idx + 1
        continue 
    mem[500] = 13
    mem[532] = ' Should get: '
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[(arg4 + 132)]), address(cd[(arg4 + 164)])
    mem[564] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[596] = address(ext_call.return_data[0])
    mem[616] = 42
    mem[648 len 42] = call.data[calldata.size len 42]
    mem[648 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    mem[649 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 0
    while idx < 20:
        require idx < ext_call.return_data[0]
        require idx < ext_call.return_data[0]
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 651 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 650 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        idx = idx + 1
        continue 
    mem[712] = 55
    mem[744 len 55] = call.data[calldata.size len 55]
    s = 0
    idx = 0
    while idx < 13:
        require idx < 13
        require s < 55
        mem[s + 744 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = 13
    idx = 0
    while idx < 42:
        require idx < 42
        require s < 55
        mem[s + 744 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    mem[808] = 97
    mem[840 len 97] = call.data[calldata.size len 97]
    s = 0
    idx = 0
    while idx < 42:
        require idx < 42
        require s < 97
        mem[s + 840 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = 42
    idx = 0
    while idx < 55:
        require idx < 55
        require s < 97
        mem[s + 840 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    mem[968] = 127
    mem[1000 len 127] = call.data[calldata.size len 127]
    s = 0
    idx = 0
    while idx < 30:
        require idx < 30
        require s < 127
        mem[s + 1000 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = 30
    idx = 0
    while idx < 97:
        require idx < 97
        require s < 127
        mem[s + 1000 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 32, 127, mem[1000 len 96], mem[1097 len 31]
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 100)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = address(cd[(arg4 + 132)])
    mem[128] = address(cd[(arg4 + 132)])
    mem[224] = address(cd[(arg4 + 164)])
    mem[160] = address(cd[(arg4 + 164)])
    mem[1128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[1132] = arg2
    mem[1164] = 64
    mem[1196] = 2
    mem[1228 len 0] = None
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[1228 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 1128
    require return_data.size >= 32
    _3683 = mem[1128 len 4], Mask(224, 32, arg2) >> 32
    require mem[1128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[1128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[1128 len 4], Mask(224, 32, arg2) >> 32 + 1128] <= 4294967296 and mem[1128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[1128 len 4], Mask(224, 32, arg2) >> 32 + 1128]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 1128] = mem[mem[1128 len 4], Mask(224, 32, arg2) >> 32 + 1128]
    _3700 = mem[_3683 + 1128]
    mem[ceil32(return_data.size) + 1160 len floor32(mem[_3683 + 1128])] = mem[_3683 + 1160 len floor32(mem[_3683 + 1128])]
    require 0 < mem[ceil32(return_data.size) + 1128]
    _3932 = mem[ceil32(return_data.size) + 1160]
    mem[(32 * _3700) + ceil32(return_data.size) + 1160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _3700) + ceil32(return_data.size) + 1164] = arg2
    mem[(32 * _3700) + ceil32(return_data.size) + 1196] = _3932 - (995 * _3932 / 1000)
    mem[(32 * _3700) + ceil32(return_data.size) + 1260] = msg.sender
    mem[(32 * _3700) + ceil32(return_data.size) + 1292] = block.timestamp + 60
    mem[(32 * _3700) + ceil32(return_data.size) + 1228] = 160
    mem[(32 * _3700) + ceil32(return_data.size) + 1324] = 2
    mem[(32 * _3700) + ceil32(return_data.size) + 1356 len 0] = None
    require ext_code.size(address(cd[(arg4 + 100)]))
    call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, _3932 - (995 * _3932 / 1000), Array(len=2, data=mem[(32 * _3700) + ceil32(return_data.size) + 1356 len 64]), msg.sender, block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _3700) + ceil32(return_data.size) + 1160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _3700) + (2 * ceil32(return_data.size)) + 1160
    require return_data.size >= 32
    _4155 = mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _3700) + ceil32(return_data.size) + 1160] <= 4294967296 and mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _3700) + ceil32(return_data.size) + 1160]) + 32 <= return_data.size
    mem[(32 * _3700) + (2 * ceil32(return_data.size)) + 1160] = mem[mem[(32 * _3700) + ceil32(return_data.size) + 1160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _3700) + ceil32(return_data.size) + 1160]
    mem[(32 * _3700) + (2 * ceil32(return_data.size)) + 1192 len floor32(mem[_4155 + (32 * _3700) + ceil32(return_data.size) + 1160])] = mem[_4155 + (32 * _3700) + ceil32(return_data.size) + 1192 len floor32(mem[_4155 + (32 * _3700) + ceil32(return_data.size) + 1160])]
    require 1 < mem[(32 * _3700) + (2 * ceil32(return_data.size)) + 1160]
    if mem[(32 * _3700) + (2 * ceil32(return_data.size)) + 1224] <= _3932:
        revert with 0, 'Got to litte!'
    require ext_code.size(address(cd[(arg4 + 164)]))
    call address(cd[(arg4 + 164)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _3932
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg4 + 164)]))
    call address(cd[(arg4 + 164)]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[(32 * _3700) + (2 * ceil32(return_data.size)) + 1224] - _3932
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
