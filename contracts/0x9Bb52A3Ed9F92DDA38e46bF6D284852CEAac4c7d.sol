contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _77 = mem[_68 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _77) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _77) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _70 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _78 = mem[_70 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_70 + 224])] = mem[_70 + 256 len floor32(mem[_70 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _78) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _78) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _72 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _79 = mem[_72 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_72 + 192])] = mem[_72 + 224 len floor32(mem[_72 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _79) + ceil32(return_data.size) + 224
       len 32
}

function sub_85935e9e(?) payable {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[64] = (32 * arg6.length) + 128
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    idx = 0
    while idx < arg6.length:
        s = 0
        while s < arg5:
            mem[mem[64] + 68] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = arg3
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                _126 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_126]
                mem[_126 + 32] = arg1
                require 1 < mem[_126]
                mem[_126 + 64] = arg2
                require idx < mem[96]
                _137 = mem[(32 * idx) + 128]
                mem[_126 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_126 + 100] = arg3
                mem[_126 + 132] = arg4
                mem[_126 + 196] = address(_137)
                mem[_126 + 228] = block.timestamp
                mem[_126 + 164] = 160
                mem[_126 + 260] = mem[_126]
                idx = 0
                while idx < 32 * mem[_126]:
                    mem[_126 + idx + 292] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, arg4, 160, address(_137), block.timestamp, mem[_126 + 260 len (32 * mem[_126]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_126 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _126 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _184 = mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 + _126 + 96] <= 4294967296 and mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 + _126 + 96]) + 32 <= return_data.size
                mem[_126 + ceil32(return_data.size) + 96] = mem[mem[_126 + 96 len 4], Mask(224, 32, arg3) >> 32 + _126 + 96]
                _193 = mem[_184 + _126 + 96]
                idx = 0
                while idx < 32 * _193:
                    mem[_126 + ceil32(return_data.size) + idx + 128] = mem[_184 + _126 + idx + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _193) + _126 + ceil32(return_data.size) + 128
            else:
                if arg2 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    _128 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_128]
                    mem[_128 + 32] = arg1
                    require 1 < mem[_128]
                    mem[_128 + 64] = arg2
                    require idx < mem[96]
                    _143 = mem[(32 * idx) + 128]
                    mem[_128 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_128 + 100] = arg3
                    mem[_128 + 132] = arg4
                    mem[_128 + 196] = address(_143)
                    mem[_128 + 228] = block.timestamp
                    mem[_128 + 164] = 160
                    mem[_128 + 260] = mem[_128]
                    idx = 0
                    while idx < 32 * mem[_128]:
                        mem[_128 + idx + 292] = mem[_128 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, 160, address(_143), block.timestamp, mem[_128 + 260 len (32 * mem[_128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_128 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _128 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _188 = mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 + _128 + 96] <= 4294967296 and mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 + _128 + 96]) + 32 <= return_data.size
                    mem[_128 + ceil32(return_data.size) + 96] = mem[mem[_128 + 96 len 4], Mask(224, 32, arg3) >> 32 + _128 + 96]
                    _195 = mem[_188 + _128 + 96]
                    idx = 0
                    while idx < 32 * _195:
                        mem[_128 + ceil32(return_data.size) + idx + 128] = mem[_188 + _128 + idx + 128]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _195) + _128 + ceil32(return_data.size) + 128
                else:
                    _127 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_127]
                    mem[_127 + 32] = arg1
                    require 1 < mem[_127]
                    mem[_127 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_127]
                    mem[_127 + 96] = arg2
                    require idx < mem[96]
                    _149 = mem[(32 * idx) + 128]
                    mem[_127 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_127 + 132] = arg3
                    mem[_127 + 164] = arg4
                    mem[_127 + 228] = address(_149)
                    mem[_127 + 260] = block.timestamp
                    mem[_127 + 196] = 160
                    mem[_127 + 292] = mem[_127]
                    idx = 0
                    while idx < 32 * mem[_127]:
                        mem[_127 + idx + 324] = mem[_127 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, 160, address(_149), block.timestamp, mem[_127 + 292 len (32 * mem[_127]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_127 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _127 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _186 = mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 + _127 + 128] <= 4294967296 and mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 + _127 + 128]) + 32 <= return_data.size
                    mem[_127 + ceil32(return_data.size) + 128] = mem[mem[_127 + 128 len 4], Mask(224, 32, arg3) >> 32 + _127 + 128]
                    _194 = mem[_186 + _127 + 128]
                    idx = 0
                    while idx < 32 * _194:
                        mem[_127 + ceil32(return_data.size) + idx + 160] = mem[_186 + _127 + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _194) + _127 + ceil32(return_data.size) + 160
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}



}
