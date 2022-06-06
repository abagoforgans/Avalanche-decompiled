contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    require arg1
    stor0 = arg1
}

function sub_be2c9401(?) {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    if not arg1:
        revert with 0, 'Pool does not exist'
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), 128, 64, address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor0 != tx.origin:
        revert with 0, 'callback not allowed'
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 132] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 164] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 64
    _23 = mem[128]
    _24 = mem[160]
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < 0, 2
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < 0, 2
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    if not arg2:
        mem[ceil32(arg4.length) + 228] = arg3
        mem[ceil32(arg4.length) + 260] = 64
        mem[ceil32(arg4.length) + 292] = 0, 2
        mem[ceil32(arg4.length) + 324 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
        require ext_code.size(address(_23))
        staticcall address(_23).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 228 len (32 * 0, 2) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        if not arg2:
            _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
            _1044 = mem[_1032 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2004 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2004
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _2992 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3040 = mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3840 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3840
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4656 = mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4658 = mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _2994 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3041 = mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3841 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3841
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4660 = mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4662 = mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _2996 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3042 = mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3842 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3842
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4664 = mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4666 = mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _2998 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3043 = mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3843 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3843
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4668 = mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4670 = mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
        else:
            _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
            _1045 = mem[_1034 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2005 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2005
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _3000 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3044 = mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3844 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3844
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4672 = mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4674 = mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3002 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3045 = mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3845 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3845
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4676 = mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4678 = mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _3004 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3046 = mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3846 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3846
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4680 = mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4682 = mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3006 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3047 = mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3847 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3847
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4684 = mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4686 = mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
    else:
        mem[ceil32(arg4.length) + 228] = arg2
        mem[ceil32(arg4.length) + 260] = 64
        mem[ceil32(arg4.length) + 292] = 0, 2
        mem[ceil32(arg4.length) + 324 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
        require ext_code.size(address(_23))
        staticcall address(_23).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 228 len (32 * 0, 2) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        if not arg2:
            _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
            _1046 = mem[_1036 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2006 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            if not arg2:
                if arg2:
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3010 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3049 = mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3849 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3849
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4692 = mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4694 = mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3008 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3048 = mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3848 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3848
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4688 = mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4690 = mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if arg2:
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3014 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3051 = mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3851 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3851
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4700 = mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4702 = mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3012 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3050 = mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3850 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3850
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4696 = mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4698 = mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
        else:
            _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
            _1047 = mem[_1038 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2007 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2007
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _3016 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3052 = mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3852 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3852
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4704 = mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4706 = mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3018 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3053 = mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3853 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3853
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4708 = mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4710 = mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _3020 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3054 = mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3854 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3854
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4712 = mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4714 = mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3022 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3055 = mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3855 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3855
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4716 = mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4718 = mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor0 != tx.origin:
        revert with 0, 'callback not allowed'
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 132] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 164] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 64
    _23 = mem[128]
    _24 = mem[160]
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < 0, 2
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < 0, 2
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    if not arg2:
        mem[ceil32(arg4.length) + 228] = arg3
        mem[ceil32(arg4.length) + 260] = 64
        mem[ceil32(arg4.length) + 292] = 0, 2
        mem[ceil32(arg4.length) + 324 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
        require ext_code.size(address(_23))
        staticcall address(_23).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 228 len (32 * 0, 2) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        if not arg2:
            _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
            _1044 = mem[_1032 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2004 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2004
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _2992 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3040 = mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2992 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3840 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3840
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4656 = mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4656 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4658 = mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4658 + (32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3040) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _2994 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3041 = mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2994 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3841 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3841
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4660 = mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4660 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4662 = mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4662 + (32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3041) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _2996 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3042 = mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2996 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3842 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3842
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4664 = mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4664 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4666 = mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4666 + (32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3042) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _2998 = mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                    require mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2004) >> 32 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3043 = mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_2998 + (32 * _1044) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3843 = mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2004
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3843
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4668 = mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4668 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4670 = mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 <= 4294967296
                        require mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2004) >> 32 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4670 + (32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3043) + (32 * _1044) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
        else:
            _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
            _1045 = mem[_1034 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2005 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2005
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _3000 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3044 = mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3000 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3844 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3844
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4672 = mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4672 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4674 = mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4674 + (32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3044) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3002 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3045 = mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3002 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3845 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3845
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4676 = mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4676 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4678 = mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4678 + (32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3045) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _3004 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3046 = mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3004 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3846 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3846
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4680 = mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4680 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4682 = mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4682 + (32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3046) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3006 = mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                    require mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2005) >> 32 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3047 = mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3006 + (32 * _1045) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3847 = mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg3:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2005
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3847
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4684 = mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4684 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4686 = mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 <= 4294967296
                        require mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2005) >> 32 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4686 + (32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg3 - mem[(32 * _3047) + (32 * _1045) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
    else:
        mem[ceil32(arg4.length) + 228] = arg2
        mem[ceil32(arg4.length) + 260] = 64
        mem[ceil32(arg4.length) + 292] = 0, 2
        mem[ceil32(arg4.length) + 324 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
        require ext_code.size(address(_23))
        staticcall address(_23).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 228 len (32 * 0, 2) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        if not arg2:
            _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
            _1046 = mem[_1036 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2006 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            if not arg2:
                if arg2:
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3010 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3049 = mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3010 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3849 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3849
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4692 = mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4692 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4694 = mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4694 + (32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3049) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3008 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3048 = mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3008 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3848 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3848
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4688 = mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4688 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4690 = mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4690 + (32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3048) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if arg2:
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3014 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3051 = mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3014 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3851 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3851
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4700 = mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4700 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4702 = mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4702 + (32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3051) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2006
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3012 = mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                    require mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2006) >> 32 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3050 = mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3012 + (32 * _1046) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3850 = mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2006
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3850
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4696 = mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4696 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4698 = mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 <= 4294967296
                        require mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2006) >> 32 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4698 + (32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3050) + (32 * _1046) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
        else:
            _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
            _1047 = mem[_1038 + ceil32(arg4.length) + 224]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
            require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
            _2007 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 256]
            require 0 < 0, 2
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = _2007
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, 2
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 356 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
            require ext_code.size(address(_24))
            staticcall address(_24).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _3016 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3052 = mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3016 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3852 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3852
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4704 = mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4704 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4706 = mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4706 + (32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3052) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3018 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3053 = mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3018 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3853 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3853
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4708 = mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4708 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4710 = mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4710 + (32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3053) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
            else:
                if not arg2:
                    _3020 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3054 = mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3020 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3854 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3854
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4712 = mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4712 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4714 = mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4714 + (32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3054) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
                else:
                    _3022 = mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                    require mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _2007) >> 32 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    _3055 = mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256]
                    mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])] = mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 288 len floor32(mem[_3022 + (32 * _1047) + ceil32(arg4.length) + ceil32(return_data.size) + 256])]
                    require 0 < mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 256]
                    _3855 = mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] >= arg2:
                        revert with 0, 'No profit'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_24), mem[(32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292] = _2007
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 324] = _3855
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = msg.sender
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 356] = 160
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 0, 2
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(0, 2)] = mem[ceil32(arg4.length) + 160 len floor32(0, 2)]
                    require ext_code.size(address(_24))
                    call address(_24).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 292 len (32 * 0, 2) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    if not arg2:
                        _4716 = mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4716 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    else:
                        _4718 = mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 <= 4294967296
                        require mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288] <= 4294967296 and mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]) + 32 <= return_data.size
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _2007) >> 32 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288]
                        mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])] = mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_4718 + (32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 288])]
                    require 0 < mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, arg2 - mem[(32 * _3055) + (32 * _1047) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
