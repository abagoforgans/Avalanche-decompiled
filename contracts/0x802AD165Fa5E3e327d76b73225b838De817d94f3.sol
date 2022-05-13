contract main {




// =====================  Runtime code  =====================


#
#  - sub_cc5af759(?)
#
const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


function _fallback() payable {
    revert
}

function sub_d8fb563d(?) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0
    if arg7 < block.timestamp:
        revert with 0, 'EXPIRED'
    if arg3.length != arg4.length:
        revert with 0, 'lps and lpsFees don't match!'
    if arg3.length + 1 != arg5.length:
        revert with 0, 'lps and path don't match!'
    require 0 < arg5.length
    _15 = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    require 0 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = mem[140 len 20]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 100
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 4] = unknown_0x23b872dd(?????)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, mem[140 len 20], Mask(224, 32, arg1) >> 32
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 448 len 4] = uint32(arg1)
    call address(_15).mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 4] with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 441 len 7],
                        uint32(arg1),
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 452 len 4]
        if not arg3.length:
            require arg5.length - 1 < arg5.length
            _3233 = mem[(32 * arg5.length - 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 328] = arg6
            require ext_code.size(address(_3233))
            staticcall address(_3233).0x70a08231 with:
                    gas gas_remaining wei
                   args arg6
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg5.length - 1:
                require idx < mem[96]
                _6415 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg3.length) + 128]
                _6432 = mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6449 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx + 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6458 = mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6415)
                    require ext_code.size(address(_6449))
                    staticcall address(_6449).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6415)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6449) == address(_6449):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6432 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7277 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7277 + 36] = 0
                                        mem[_7277 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7277 + 100] = arg6
                                        mem[_7277 + 132] = 128
                                        mem[_7277 + 164] = mem[_7277]
                                        s = 0
                                        while s < mem[_7277]:
                                            mem[_7277 + s + 196] = mem[_7277 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7277] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7277 + 164 len mem[_7277] + 32]
                                        else:
                                            mem[floor32(mem[_7277]) + _7277 + 196] = mem[floor32(mem[_7277]) + _7277 + -(mem[_7277] % 32) + 228 len mem[_7277] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7277], mem[_7277 + 196 len floor32(mem[_7277]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7181 = mem[(32 * idx + 1) + 128]
                                        _7373 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7373 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7373 + 36] = 0
                                        mem[_7373 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7373 + 100] = address(_7181)
                                        mem[_7373 + 132] = 128
                                        mem[_7373 + 164] = mem[_7373]
                                        s = 0
                                        while s < mem[_7373]:
                                            mem[_7373 + s + 196] = mem[_7373 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7373] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7181), 128, mem[_7373 + 164 len mem[_7373] + 32]
                                        else:
                                            mem[floor32(mem[_7373]) + _7373 + 196] = mem[floor32(mem[_7373]) + _7373 + -(mem[_7373] % 32) + 228 len mem[_7373] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7181), 128, mem[_7373], mem[_7373 + 196 len floor32(mem[_7373]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7278 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7278 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7278 + 68] = 0
                                        mem[_7278 + 100] = arg6
                                        mem[_7278 + 132] = 128
                                        mem[_7278 + 164] = mem[_7278]
                                        s = 0
                                        while s < mem[_7278]:
                                            mem[_7278 + s + 196] = mem[_7278 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7278] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7278 + 164 len mem[_7278] + 32]
                                        else:
                                            mem[floor32(mem[_7278]) + _7278 + 196] = mem[floor32(mem[_7278]) + _7278 + -(mem[_7278] % 32) + 228 len mem[_7278] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7278], mem[_7278 + 196 len floor32(mem[_7278]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7182 = mem[(32 * idx + 1) + 128]
                                        _7377 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7377 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7377 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7377 + 68] = 0
                                        mem[_7377 + 100] = address(_7182)
                                        mem[_7377 + 132] = 128
                                        mem[_7377 + 164] = mem[_7377]
                                        s = 0
                                        while s < mem[_7377]:
                                            mem[_7377 + s + 196] = mem[_7377 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7377] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7182), 128, mem[_7377 + 164 len mem[_7377] + 32]
                                        else:
                                            mem[floor32(mem[_7377]) + _7377 + 196] = mem[floor32(mem[_7377]) + _7377 + -(mem[_7377] % 32) + 228 len mem[_7377] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7182), 128, mem[_7377], mem[_7377 + 196 len floor32(mem[_7377]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7603 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7603 + 36] = 0
                                        mem[_7603 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7603 + 100] = arg6
                                        mem[_7603 + 132] = 128
                                        mem[_7603 + 164] = mem[_7603]
                                        s = 0
                                        while s < mem[_7603]:
                                            mem[_7603 + s + 196] = mem[_7603 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7603] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7603 + 164 len mem[_7603] + 32]
                                        else:
                                            mem[floor32(mem[_7603]) + _7603 + 196] = mem[floor32(mem[_7603]) + _7603 + -(mem[_7603] % 32) + 228 len mem[_7603] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7603], mem[_7603 + 196 len floor32(mem[_7603]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7381 = mem[(32 * idx + 1) + 128]
                                        _7791 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7791 + 36] = 0
                                        mem[_7791 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7791 + 100] = address(_7381)
                                        mem[_7791 + 132] = 128
                                        mem[_7791 + 164] = mem[_7791]
                                        s = 0
                                        while s < mem[_7791]:
                                            mem[_7791 + s + 196] = mem[_7791 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7791] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7381), 128, mem[_7791 + 164 len mem[_7791] + 32]
                                        else:
                                            mem[floor32(mem[_7791]) + _7791 + 196] = mem[floor32(mem[_7791]) + _7791 + -(mem[_7791] % 32) + 228 len mem[_7791] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7381), 128, mem[_7791], mem[_7791 + 196 len floor32(mem[_7791]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7604 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7604 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7604 + 68] = 0
                                        mem[_7604 + 100] = arg6
                                        mem[_7604 + 132] = 128
                                        mem[_7604 + 164] = mem[_7604]
                                        s = 0
                                        while s < mem[_7604]:
                                            mem[_7604 + s + 196] = mem[_7604 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7604] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7604 + 164 len mem[_7604] + 32]
                                        else:
                                            mem[floor32(mem[_7604]) + _7604 + 196] = mem[floor32(mem[_7604]) + _7604 + -(mem[_7604] % 32) + 228 len mem[_7604] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7604], mem[_7604 + 196 len floor32(mem[_7604]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7382 = mem[(32 * idx + 1) + 128]
                                        _7795 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7795 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7795 + 68] = 0
                                        mem[_7795 + 100] = address(_7382)
                                        mem[_7795 + 132] = 128
                                        mem[_7795 + 164] = mem[_7795]
                                        s = 0
                                        while s < mem[_7795]:
                                            mem[_7795 + s + 196] = mem[_7795 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7795] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7382), 128, mem[_7795 + 164 len mem[_7795] + 32]
                                        else:
                                            mem[floor32(mem[_7795]) + _7795 + 196] = mem[floor32(mem[_7795]) + _7795 + -(mem[_7795] % 32) + 228 len mem[_7795] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7382), 128, mem[_7795], mem[_7795 + 196 len floor32(mem[_7795]) + 32]
                        else:
                            require -_6432 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) / -_6432 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7605 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7605 + 36] = 0
                                        mem[_7605 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7605 + 100] = arg6
                                        mem[_7605 + 132] = 128
                                        mem[_7605 + 164] = mem[_7605]
                                        s = 0
                                        while s < mem[_7605]:
                                            mem[_7605 + s + 196] = mem[_7605 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7605] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7605 + 164 len mem[_7605] + 32]
                                        else:
                                            mem[floor32(mem[_7605]) + _7605 + 196] = mem[floor32(mem[_7605]) + _7605 + -(mem[_7605] % 32) + 228 len mem[_7605] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7605], mem[_7605 + 196 len floor32(mem[_7605]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7383 = mem[(32 * idx + 1) + 128]
                                        _7799 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7799 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7799 + 36] = 0
                                        mem[_7799 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7799 + 100] = address(_7383)
                                        mem[_7799 + 132] = 128
                                        mem[_7799 + 164] = mem[_7799]
                                        s = 0
                                        while s < mem[_7799]:
                                            mem[_7799 + s + 196] = mem[_7799 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7799] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7383), 128, mem[_7799 + 164 len mem[_7799] + 32]
                                        else:
                                            mem[floor32(mem[_7799]) + _7799 + 196] = mem[floor32(mem[_7799]) + _7799 + -(mem[_7799] % 32) + 228 len mem[_7799] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7383), 128, mem[_7799], mem[_7799 + 196 len floor32(mem[_7799]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7606 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7606 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7606 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7606 + 68] = 0
                                        mem[_7606 + 100] = arg6
                                        mem[_7606 + 132] = 128
                                        mem[_7606 + 164] = mem[_7606]
                                        s = 0
                                        while s < mem[_7606]:
                                            mem[_7606 + s + 196] = mem[_7606 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7606] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7606 + 164 len mem[_7606] + 32]
                                        else:
                                            mem[floor32(mem[_7606]) + _7606 + 196] = mem[floor32(mem[_7606]) + _7606 + -(mem[_7606] % 32) + 228 len mem[_7606] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7606], mem[_7606 + 196 len floor32(mem[_7606]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7384 = mem[(32 * idx + 1) + 128]
                                        _7803 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7803 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7803 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7803 + 68] = 0
                                        mem[_7803 + 100] = address(_7384)
                                        mem[_7803 + 132] = 128
                                        mem[_7803 + 164] = mem[_7803]
                                        s = 0
                                        while s < mem[_7803]:
                                            mem[_7803 + s + 196] = mem[_7803 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7803] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7384), 128, mem[_7803 + 164 len mem[_7803] + 32]
                                        else:
                                            mem[floor32(mem[_7803]) + _7803 + 196] = mem[floor32(mem[_7803]) + _7803 + -(mem[_7803] % 32) + 228 len mem[_7803] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7384), 128, mem[_7803], mem[_7803 + 196 len floor32(mem[_7803]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8127 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8127 + 36] = 0
                                        mem[_8127 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8127 + 100] = arg6
                                        mem[_8127 + 132] = 128
                                        mem[_8127 + 164] = mem[_8127]
                                        s = 0
                                        while s < mem[_8127]:
                                            mem[_8127 + s + 196] = mem[_8127 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8127] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8127 + 164 len mem[_8127] + 32]
                                        else:
                                            mem[floor32(mem[_8127]) + _8127 + 196] = mem[floor32(mem[_8127]) + _8127 + -(mem[_8127] % 32) + 228 len mem[_8127] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8127], mem[_8127 + 196 len floor32(mem[_8127]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7807 = mem[(32 * idx + 1) + 128]
                                        _8439 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8439 + 36] = 0
                                        mem[_8439 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8439 + 100] = address(_7807)
                                        mem[_8439 + 132] = 128
                                        mem[_8439 + 164] = mem[_8439]
                                        s = 0
                                        while s < mem[_8439]:
                                            mem[_8439 + s + 196] = mem[_8439 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8439] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7807), 128, mem[_8439 + 164 len mem[_8439] + 32]
                                        else:
                                            mem[floor32(mem[_8439]) + _8439 + 196] = mem[floor32(mem[_8439]) + _8439 + -(mem[_8439] % 32) + 228 len mem[_8439] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7807), 128, mem[_8439], mem[_8439 + 196 len floor32(mem[_8439]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8128 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8128 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8128 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8128 + 68] = 0
                                        mem[_8128 + 100] = arg6
                                        mem[_8128 + 132] = 128
                                        mem[_8128 + 164] = mem[_8128]
                                        s = 0
                                        while s < mem[_8128]:
                                            mem[_8128 + s + 196] = mem[_8128 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8128] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8128 + 164 len mem[_8128] + 32]
                                        else:
                                            mem[floor32(mem[_8128]) + _8128 + 196] = mem[floor32(mem[_8128]) + _8128 + -(mem[_8128] % 32) + 228 len mem[_8128] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8128], mem[_8128 + 196 len floor32(mem[_8128]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7808 = mem[(32 * idx + 1) + 128]
                                        _8443 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8443 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8443 + 68] = 0
                                        mem[_8443 + 100] = address(_7808)
                                        mem[_8443 + 132] = 128
                                        mem[_8443 + 164] = mem[_8443]
                                        s = 0
                                        while s < mem[_8443]:
                                            mem[_8443 + s + 196] = mem[_8443 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8443] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7808), 128, mem[_8443 + 164 len mem[_8443] + 32]
                                        else:
                                            mem[floor32(mem[_8443]) + _8443 + 196] = mem[floor32(mem[_8443]) + _8443 + -(mem[_8443] % 32) + 228 len mem[_8443] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7808), 128, mem[_8443], mem[_8443 + 196 len floor32(mem[_8443]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6432 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7283 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7283 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7283 + 36] = 0
                                        mem[_7283 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7283 + 100] = arg6
                                        mem[_7283 + 132] = 128
                                        mem[_7283 + 164] = mem[_7283]
                                        s = 0
                                        while s < mem[_7283]:
                                            mem[_7283 + s + 196] = mem[_7283 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7283] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7283 + 164 len mem[_7283] + 32]
                                        else:
                                            mem[floor32(mem[_7283]) + _7283 + 196] = mem[floor32(mem[_7283]) + _7283 + -(mem[_7283] % 32) + 228 len mem[_7283] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7283], mem[_7283 + 196 len floor32(mem[_7283]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7187 = mem[(32 * idx + 1) + 128]
                                        _7387 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7387 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7387 + 36] = 0
                                        mem[_7387 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7387 + 100] = address(_7187)
                                        mem[_7387 + 132] = 128
                                        mem[_7387 + 164] = mem[_7387]
                                        s = 0
                                        while s < mem[_7387]:
                                            mem[_7387 + s + 196] = mem[_7387 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7387] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7187), 128, mem[_7387 + 164 len mem[_7387] + 32]
                                        else:
                                            mem[floor32(mem[_7387]) + _7387 + 196] = mem[floor32(mem[_7387]) + _7387 + -(mem[_7387] % 32) + 228 len mem[_7387] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7187), 128, mem[_7387], mem[_7387 + 196 len floor32(mem[_7387]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7284 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7284 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7284 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7284 + 68] = 0
                                        mem[_7284 + 100] = arg6
                                        mem[_7284 + 132] = 128
                                        mem[_7284 + 164] = mem[_7284]
                                        s = 0
                                        while s < mem[_7284]:
                                            mem[_7284 + s + 196] = mem[_7284 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7284] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7284 + 164 len mem[_7284] + 32]
                                        else:
                                            mem[floor32(mem[_7284]) + _7284 + 196] = mem[floor32(mem[_7284]) + _7284 + -(mem[_7284] % 32) + 228 len mem[_7284] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7284], mem[_7284 + 196 len floor32(mem[_7284]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7188 = mem[(32 * idx + 1) + 128]
                                        _7391 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7391 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7391 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7391 + 68] = 0
                                        mem[_7391 + 100] = address(_7188)
                                        mem[_7391 + 132] = 128
                                        mem[_7391 + 164] = mem[_7391]
                                        s = 0
                                        while s < mem[_7391]:
                                            mem[_7391 + s + 196] = mem[_7391 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7391] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7188), 128, mem[_7391 + 164 len mem[_7391] + 32]
                                        else:
                                            mem[floor32(mem[_7391]) + _7391 + 196] = mem[floor32(mem[_7391]) + _7391 + -(mem[_7391] % 32) + 228 len mem[_7391] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7188), 128, mem[_7391], mem[_7391 + 196 len floor32(mem[_7391]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7615 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7615 + 36] = 0
                                        mem[_7615 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7615 + 100] = arg6
                                        mem[_7615 + 132] = 128
                                        mem[_7615 + 164] = mem[_7615]
                                        s = 0
                                        while s < mem[_7615]:
                                            mem[_7615 + s + 196] = mem[_7615 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7615] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7615 + 164 len mem[_7615] + 32]
                                        else:
                                            mem[floor32(mem[_7615]) + _7615 + 196] = mem[floor32(mem[_7615]) + _7615 + -(mem[_7615] % 32) + 228 len mem[_7615] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7615], mem[_7615 + 196 len floor32(mem[_7615]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7395 = mem[(32 * idx + 1) + 128]
                                        _7811 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7811 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7811 + 36] = 0
                                        mem[_7811 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7811 + 100] = address(_7395)
                                        mem[_7811 + 132] = 128
                                        mem[_7811 + 164] = mem[_7811]
                                        s = 0
                                        while s < mem[_7811]:
                                            mem[_7811 + s + 196] = mem[_7811 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7811] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7395), 128, mem[_7811 + 164 len mem[_7811] + 32]
                                        else:
                                            mem[floor32(mem[_7811]) + _7811 + 196] = mem[floor32(mem[_7811]) + _7811 + -(mem[_7811] % 32) + 228 len mem[_7811] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7395), 128, mem[_7811], mem[_7811 + 196 len floor32(mem[_7811]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7616 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7616 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7616 + 68] = 0
                                        mem[_7616 + 100] = arg6
                                        mem[_7616 + 132] = 128
                                        mem[_7616 + 164] = mem[_7616]
                                        s = 0
                                        while s < mem[_7616]:
                                            mem[_7616 + s + 196] = mem[_7616 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7616] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7616 + 164 len mem[_7616] + 32]
                                        else:
                                            mem[floor32(mem[_7616]) + _7616 + 196] = mem[floor32(mem[_7616]) + _7616 + -(mem[_7616] % 32) + 228 len mem[_7616] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7616], mem[_7616 + 196 len floor32(mem[_7616]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7396 = mem[(32 * idx + 1) + 128]
                                        _7815 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7815 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7815 + 68] = 0
                                        mem[_7815 + 100] = address(_7396)
                                        mem[_7815 + 132] = 128
                                        mem[_7815 + 164] = mem[_7815]
                                        s = 0
                                        while s < mem[_7815]:
                                            mem[_7815 + s + 196] = mem[_7815 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7815] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7396), 128, mem[_7815 + 164 len mem[_7815] + 32]
                                        else:
                                            mem[floor32(mem[_7815]) + _7815 + 196] = mem[floor32(mem[_7815]) + _7815 + -(mem[_7815] % 32) + 228 len mem[_7815] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7396), 128, mem[_7815], mem[_7815 + 196 len floor32(mem[_7815]) + 32]
                        else:
                            require -_6432 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[32])) / -_6432 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7617 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7617 + 36] = 0
                                        mem[_7617 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7617 + 100] = arg6
                                        mem[_7617 + 132] = 128
                                        mem[_7617 + 164] = mem[_7617]
                                        s = 0
                                        while s < mem[_7617]:
                                            mem[_7617 + s + 196] = mem[_7617 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7617] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7617 + 164 len mem[_7617] + 32]
                                        else:
                                            mem[floor32(mem[_7617]) + _7617 + 196] = mem[floor32(mem[_7617]) + _7617 + -(mem[_7617] % 32) + 228 len mem[_7617] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7617], mem[_7617 + 196 len floor32(mem[_7617]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7397 = mem[(32 * idx + 1) + 128]
                                        _7819 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7819 + 36] = 0
                                        mem[_7819 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7819 + 100] = address(_7397)
                                        mem[_7819 + 132] = 128
                                        mem[_7819 + 164] = mem[_7819]
                                        s = 0
                                        while s < mem[_7819]:
                                            mem[_7819 + s + 196] = mem[_7819 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7819] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7397), 128, mem[_7819 + 164 len mem[_7819] + 32]
                                        else:
                                            mem[floor32(mem[_7819]) + _7819 + 196] = mem[floor32(mem[_7819]) + _7819 + -(mem[_7819] % 32) + 228 len mem[_7819] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7397), 128, mem[_7819], mem[_7819 + 196 len floor32(mem[_7819]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7618 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7618 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7618 + 68] = 0
                                        mem[_7618 + 100] = arg6
                                        mem[_7618 + 132] = 128
                                        mem[_7618 + 164] = mem[_7618]
                                        s = 0
                                        while s < mem[_7618]:
                                            mem[_7618 + s + 196] = mem[_7618 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7618] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7618 + 164 len mem[_7618] + 32]
                                        else:
                                            mem[floor32(mem[_7618]) + _7618 + 196] = mem[floor32(mem[_7618]) + _7618 + -(mem[_7618] % 32) + 228 len mem[_7618] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7618], mem[_7618 + 196 len floor32(mem[_7618]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7398 = mem[(32 * idx + 1) + 128]
                                        _7823 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7823 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7823 + 68] = 0
                                        mem[_7823 + 100] = address(_7398)
                                        mem[_7823 + 132] = 128
                                        mem[_7823 + 164] = mem[_7823]
                                        s = 0
                                        while s < mem[_7823]:
                                            mem[_7823 + s + 196] = mem[_7823 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7823] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7398), 128, mem[_7823 + 164 len mem[_7823] + 32]
                                        else:
                                            mem[floor32(mem[_7823]) + _7823 + 196] = mem[floor32(mem[_7823]) + _7823 + -(mem[_7823] % 32) + 228 len mem[_7823] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7398), 128, mem[_7823], mem[_7823 + 196 len floor32(mem[_7823]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6449) == address(_6449):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8147 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8147 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8147 + 36] = 0
                                        mem[_8147 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8147 + 100] = arg6
                                        mem[_8147 + 132] = 128
                                        mem[_8147 + 164] = mem[_8147]
                                        s = 0
                                        while s < mem[_8147]:
                                            mem[_8147 + s + 196] = mem[_8147 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8147] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8147 + 164 len mem[_8147] + 32]
                                        else:
                                            mem[floor32(mem[_8147]) + _8147 + 196] = mem[floor32(mem[_8147]) + _8147 + -(mem[_8147] % 32) + 228 len mem[_8147] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8147], mem[_8147 + 196 len floor32(mem[_8147]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7827 = mem[(32 * idx + 1) + 128]
                                        _8457 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8457 + 36] = 0
                                        mem[_8457 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8457 + 100] = address(_7827)
                                        mem[_8457 + 132] = 128
                                        mem[_8457 + 164] = mem[_8457]
                                        s = 0
                                        while s < mem[_8457]:
                                            mem[_8457 + s + 196] = mem[_8457 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8457] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7827), 128, mem[_8457 + 164 len mem[_8457] + 32]
                                        else:
                                            mem[floor32(mem[_8457]) + _8457 + 196] = mem[floor32(mem[_8457]) + _8457 + -(mem[_8457] % 32) + 228 len mem[_8457] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7827), 128, mem[_8457], mem[_8457 + 196 len floor32(mem[_8457]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8148 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8148 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8148 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8148 + 68] = 0
                                        mem[_8148 + 100] = arg6
                                        mem[_8148 + 132] = 128
                                        mem[_8148 + 164] = mem[_8148]
                                        s = 0
                                        while s < mem[_8148]:
                                            mem[_8148 + s + 196] = mem[_8148 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8148] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8148 + 164 len mem[_8148] + 32]
                                        else:
                                            mem[floor32(mem[_8148]) + _8148 + 196] = mem[floor32(mem[_8148]) + _8148 + -(mem[_8148] % 32) + 228 len mem[_8148] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8148], mem[_8148 + 196 len floor32(mem[_8148]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7828 = mem[(32 * idx + 1) + 128]
                                        _8461 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8461 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8461 + 68] = 0
                                        mem[_8461 + 100] = address(_7828)
                                        mem[_8461 + 132] = 128
                                        mem[_8461 + 164] = mem[_8461]
                                        s = 0
                                        while s < mem[_8461]:
                                            mem[_8461 + s + 196] = mem[_8461 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8461] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7828), 128, mem[_8461 + 164 len mem[_8461] + 32]
                                        else:
                                            mem[floor32(mem[_8461]) + _8461 + 196] = mem[floor32(mem[_8461]) + _8461 + -(mem[_8461] % 32) + 228 len mem[_8461] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7828), 128, mem[_8461], mem[_8461 + 196 len floor32(mem[_8461]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6415)
                    require ext_code.size(address(_6449))
                    staticcall address(_6449).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6415)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6449) == address(_6458):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6432 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7289 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7289 + 36] = 0
                                        mem[_7289 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7289 + 100] = arg6
                                        mem[_7289 + 132] = 128
                                        mem[_7289 + 164] = mem[_7289]
                                        s = 0
                                        while s < mem[_7289]:
                                            mem[_7289 + s + 196] = mem[_7289 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7289] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7289 + 164 len mem[_7289] + 32]
                                        else:
                                            mem[floor32(mem[_7289]) + _7289 + 196] = mem[floor32(mem[_7289]) + _7289 + -(mem[_7289] % 32) + 228 len mem[_7289] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7289], mem[_7289 + 196 len floor32(mem[_7289]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7193 = mem[(32 * idx + 1) + 128]
                                        _7401 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7401 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7401 + 36] = 0
                                        mem[_7401 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7401 + 100] = address(_7193)
                                        mem[_7401 + 132] = 128
                                        mem[_7401 + 164] = mem[_7401]
                                        s = 0
                                        while s < mem[_7401]:
                                            mem[_7401 + s + 196] = mem[_7401 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7401] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7193), 128, mem[_7401 + 164 len mem[_7401] + 32]
                                        else:
                                            mem[floor32(mem[_7401]) + _7401 + 196] = mem[floor32(mem[_7401]) + _7401 + -(mem[_7401] % 32) + 228 len mem[_7401] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7193), 128, mem[_7401], mem[_7401 + 196 len floor32(mem[_7401]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7290 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7290 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7290 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7290 + 68] = 0
                                        mem[_7290 + 100] = arg6
                                        mem[_7290 + 132] = 128
                                        mem[_7290 + 164] = mem[_7290]
                                        s = 0
                                        while s < mem[_7290]:
                                            mem[_7290 + s + 196] = mem[_7290 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7290] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7290 + 164 len mem[_7290] + 32]
                                        else:
                                            mem[floor32(mem[_7290]) + _7290 + 196] = mem[floor32(mem[_7290]) + _7290 + -(mem[_7290] % 32) + 228 len mem[_7290] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7290], mem[_7290 + 196 len floor32(mem[_7290]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7194 = mem[(32 * idx + 1) + 128]
                                        _7405 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7405 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7405 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7405 + 68] = 0
                                        mem[_7405 + 100] = address(_7194)
                                        mem[_7405 + 132] = 128
                                        mem[_7405 + 164] = mem[_7405]
                                        s = 0
                                        while s < mem[_7405]:
                                            mem[_7405 + s + 196] = mem[_7405 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7405] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7194), 128, mem[_7405 + 164 len mem[_7405] + 32]
                                        else:
                                            mem[floor32(mem[_7405]) + _7405 + 196] = mem[floor32(mem[_7405]) + _7405 + -(mem[_7405] % 32) + 228 len mem[_7405] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7194), 128, mem[_7405], mem[_7405 + 196 len floor32(mem[_7405]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7627 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7627 + 36] = 0
                                        mem[_7627 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7627 + 100] = arg6
                                        mem[_7627 + 132] = 128
                                        mem[_7627 + 164] = mem[_7627]
                                        s = 0
                                        while s < mem[_7627]:
                                            mem[_7627 + s + 196] = mem[_7627 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7627] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7627 + 164 len mem[_7627] + 32]
                                        else:
                                            mem[floor32(mem[_7627]) + _7627 + 196] = mem[floor32(mem[_7627]) + _7627 + -(mem[_7627] % 32) + 228 len mem[_7627] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7627], mem[_7627 + 196 len floor32(mem[_7627]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7409 = mem[(32 * idx + 1) + 128]
                                        _7831 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7831 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7831 + 36] = 0
                                        mem[_7831 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7831 + 100] = address(_7409)
                                        mem[_7831 + 132] = 128
                                        mem[_7831 + 164] = mem[_7831]
                                        s = 0
                                        while s < mem[_7831]:
                                            mem[_7831 + s + 196] = mem[_7831 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7831] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7409), 128, mem[_7831 + 164 len mem[_7831] + 32]
                                        else:
                                            mem[floor32(mem[_7831]) + _7831 + 196] = mem[floor32(mem[_7831]) + _7831 + -(mem[_7831] % 32) + 228 len mem[_7831] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7409), 128, mem[_7831], mem[_7831 + 196 len floor32(mem[_7831]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7628 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7628 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7628 + 68] = 0
                                        mem[_7628 + 100] = arg6
                                        mem[_7628 + 132] = 128
                                        mem[_7628 + 164] = mem[_7628]
                                        s = 0
                                        while s < mem[_7628]:
                                            mem[_7628 + s + 196] = mem[_7628 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7628] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7628 + 164 len mem[_7628] + 32]
                                        else:
                                            mem[floor32(mem[_7628]) + _7628 + 196] = mem[floor32(mem[_7628]) + _7628 + -(mem[_7628] % 32) + 228 len mem[_7628] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7628], mem[_7628 + 196 len floor32(mem[_7628]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7410 = mem[(32 * idx + 1) + 128]
                                        _7835 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7835 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7835 + 68] = 0
                                        mem[_7835 + 100] = address(_7410)
                                        mem[_7835 + 132] = 128
                                        mem[_7835 + 164] = mem[_7835]
                                        s = 0
                                        while s < mem[_7835]:
                                            mem[_7835 + s + 196] = mem[_7835 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7835] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7410), 128, mem[_7835 + 164 len mem[_7835] + 32]
                                        else:
                                            mem[floor32(mem[_7835]) + _7835 + 196] = mem[floor32(mem[_7835]) + _7835 + -(mem[_7835] % 32) + 228 len mem[_7835] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7410), 128, mem[_7835], mem[_7835 + 196 len floor32(mem[_7835]) + 32]
                        else:
                            require -_6432 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) / -_6432 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7629 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7629 + 36] = 0
                                        mem[_7629 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7629 + 100] = arg6
                                        mem[_7629 + 132] = 128
                                        mem[_7629 + 164] = mem[_7629]
                                        s = 0
                                        while s < mem[_7629]:
                                            mem[_7629 + s + 196] = mem[_7629 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7629] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7629 + 164 len mem[_7629] + 32]
                                        else:
                                            mem[floor32(mem[_7629]) + _7629 + 196] = mem[floor32(mem[_7629]) + _7629 + -(mem[_7629] % 32) + 228 len mem[_7629] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7629], mem[_7629 + 196 len floor32(mem[_7629]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7411 = mem[(32 * idx + 1) + 128]
                                        _7839 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7839 + 36] = 0
                                        mem[_7839 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7839 + 100] = address(_7411)
                                        mem[_7839 + 132] = 128
                                        mem[_7839 + 164] = mem[_7839]
                                        s = 0
                                        while s < mem[_7839]:
                                            mem[_7839 + s + 196] = mem[_7839 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7839] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7411), 128, mem[_7839 + 164 len mem[_7839] + 32]
                                        else:
                                            mem[floor32(mem[_7839]) + _7839 + 196] = mem[floor32(mem[_7839]) + _7839 + -(mem[_7839] % 32) + 228 len mem[_7839] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7411), 128, mem[_7839], mem[_7839 + 196 len floor32(mem[_7839]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7630 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7630 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7630 + 68] = 0
                                        mem[_7630 + 100] = arg6
                                        mem[_7630 + 132] = 128
                                        mem[_7630 + 164] = mem[_7630]
                                        s = 0
                                        while s < mem[_7630]:
                                            mem[_7630 + s + 196] = mem[_7630 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7630] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7630 + 164 len mem[_7630] + 32]
                                        else:
                                            mem[floor32(mem[_7630]) + _7630 + 196] = mem[floor32(mem[_7630]) + _7630 + -(mem[_7630] % 32) + 228 len mem[_7630] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7630], mem[_7630 + 196 len floor32(mem[_7630]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7412 = mem[(32 * idx + 1) + 128]
                                        _7843 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7843 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7843 + 68] = 0
                                        mem[_7843 + 100] = address(_7412)
                                        mem[_7843 + 132] = 128
                                        mem[_7843 + 164] = mem[_7843]
                                        s = 0
                                        while s < mem[_7843]:
                                            mem[_7843 + s + 196] = mem[_7843 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7843] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7412), 128, mem[_7843 + 164 len mem[_7843] + 32]
                                        else:
                                            mem[floor32(mem[_7843]) + _7843 + 196] = mem[floor32(mem[_7843]) + _7843 + -(mem[_7843] % 32) + 228 len mem[_7843] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7412), 128, mem[_7843], mem[_7843 + 196 len floor32(mem[_7843]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8167 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8167 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8167 + 36] = 0
                                        mem[_8167 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8167 + 100] = arg6
                                        mem[_8167 + 132] = 128
                                        mem[_8167 + 164] = mem[_8167]
                                        s = 0
                                        while s < mem[_8167]:
                                            mem[_8167 + s + 196] = mem[_8167 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8167] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8167 + 164 len mem[_8167] + 32]
                                        else:
                                            mem[floor32(mem[_8167]) + _8167 + 196] = mem[floor32(mem[_8167]) + _8167 + -(mem[_8167] % 32) + 228 len mem[_8167] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8167], mem[_8167 + 196 len floor32(mem[_8167]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7847 = mem[(32 * idx + 1) + 128]
                                        _8475 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8475 + 36] = 0
                                        mem[_8475 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8475 + 100] = address(_7847)
                                        mem[_8475 + 132] = 128
                                        mem[_8475 + 164] = mem[_8475]
                                        s = 0
                                        while s < mem[_8475]:
                                            mem[_8475 + s + 196] = mem[_8475 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8475] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7847), 128, mem[_8475 + 164 len mem[_8475] + 32]
                                        else:
                                            mem[floor32(mem[_8475]) + _8475 + 196] = mem[floor32(mem[_8475]) + _8475 + -(mem[_8475] % 32) + 228 len mem[_8475] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), address(_7847), 128, mem[_8475], mem[_8475 + 196 len floor32(mem[_8475]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8168 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8168 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8168 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8168 + 68] = 0
                                        mem[_8168 + 100] = arg6
                                        mem[_8168 + 132] = 128
                                        mem[_8168 + 164] = mem[_8168]
                                        s = 0
                                        while s < mem[_8168]:
                                            mem[_8168 + s + 196] = mem[_8168 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8168] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8168 + 164 len mem[_8168] + 32]
                                        else:
                                            mem[floor32(mem[_8168]) + _8168 + 196] = mem[floor32(mem[_8168]) + _8168 + -(mem[_8168] % 32) + 228 len mem[_8168] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8168], mem[_8168 + 196 len floor32(mem[_8168]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7848 = mem[(32 * idx + 1) + 128]
                                        _8479 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8479 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8479 + 68] = 0
                                        mem[_8479 + 100] = address(_7848)
                                        mem[_8479 + 132] = 128
                                        mem[_8479 + 164] = mem[_8479]
                                        s = 0
                                        while s < mem[_8479]:
                                            mem[_8479 + s + 196] = mem[_8479 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8479] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7848), 128, mem[_8479 + 164 len mem[_8479] + 32]
                                        else:
                                            mem[floor32(mem[_8479]) + _8479 + 196] = mem[floor32(mem[_8479]) + _8479 + -(mem[_8479] % 32) + 228 len mem[_8479] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7848), 128, mem[_8479], mem[_8479 + 196 len floor32(mem[_8479]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6432 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7295 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7295 + 36] = 0
                                        mem[_7295 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7295 + 100] = arg6
                                        mem[_7295 + 132] = 128
                                        mem[_7295 + 164] = mem[_7295]
                                        s = 0
                                        while s < mem[_7295]:
                                            mem[_7295 + s + 196] = mem[_7295 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7295] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7295 + 164 len mem[_7295] + 32]
                                        else:
                                            mem[floor32(mem[_7295]) + _7295 + 196] = mem[floor32(mem[_7295]) + _7295 + -(mem[_7295] % 32) + 228 len mem[_7295] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7295], mem[_7295 + 196 len floor32(mem[_7295]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7199 = mem[(32 * idx + 1) + 128]
                                        _7415 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7415 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7415 + 36] = 0
                                        mem[_7415 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7415 + 100] = address(_7199)
                                        mem[_7415 + 132] = 128
                                        mem[_7415 + 164] = mem[_7415]
                                        s = 0
                                        while s < mem[_7415]:
                                            mem[_7415 + s + 196] = mem[_7415 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7415] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7199), 128, mem[_7415 + 164 len mem[_7415] + 32]
                                        else:
                                            mem[floor32(mem[_7415]) + _7415 + 196] = mem[floor32(mem[_7415]) + _7415 + -(mem[_7415] % 32) + 228 len mem[_7415] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7199), 128, mem[_7415], mem[_7415 + 196 len floor32(mem[_7415]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7296 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7296 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7296 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7296 + 68] = 0
                                        mem[_7296 + 100] = arg6
                                        mem[_7296 + 132] = 128
                                        mem[_7296 + 164] = mem[_7296]
                                        s = 0
                                        while s < mem[_7296]:
                                            mem[_7296 + s + 196] = mem[_7296 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7296] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7296 + 164 len mem[_7296] + 32]
                                        else:
                                            mem[floor32(mem[_7296]) + _7296 + 196] = mem[floor32(mem[_7296]) + _7296 + -(mem[_7296] % 32) + 228 len mem[_7296] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7296], mem[_7296 + 196 len floor32(mem[_7296]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7200 = mem[(32 * idx + 1) + 128]
                                        _7419 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7419 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7419 + 68] = 0
                                        mem[_7419 + 100] = address(_7200)
                                        mem[_7419 + 132] = 128
                                        mem[_7419 + 164] = mem[_7419]
                                        s = 0
                                        while s < mem[_7419]:
                                            mem[_7419 + s + 196] = mem[_7419 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7419] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7200), 128, mem[_7419 + 164 len mem[_7419] + 32]
                                        else:
                                            mem[floor32(mem[_7419]) + _7419 + 196] = mem[floor32(mem[_7419]) + _7419 + -(mem[_7419] % 32) + 228 len mem[_7419] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7200), 128, mem[_7419], mem[_7419 + 196 len floor32(mem[_7419]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7639 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7639 + 36] = 0
                                        mem[_7639 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7639 + 100] = arg6
                                        mem[_7639 + 132] = 128
                                        mem[_7639 + 164] = mem[_7639]
                                        s = 0
                                        while s < mem[_7639]:
                                            mem[_7639 + s + 196] = mem[_7639 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7639] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7639 + 164 len mem[_7639] + 32]
                                        else:
                                            mem[floor32(mem[_7639]) + _7639 + 196] = mem[floor32(mem[_7639]) + _7639 + -(mem[_7639] % 32) + 228 len mem[_7639] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7639], mem[_7639 + 196 len floor32(mem[_7639]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7423 = mem[(32 * idx + 1) + 128]
                                        _7851 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7851 + 36] = 0
                                        mem[_7851 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7851 + 100] = address(_7423)
                                        mem[_7851 + 132] = 128
                                        mem[_7851 + 164] = mem[_7851]
                                        s = 0
                                        while s < mem[_7851]:
                                            mem[_7851 + s + 196] = mem[_7851 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7851] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7423), 128, mem[_7851 + 164 len mem[_7851] + 32]
                                        else:
                                            mem[floor32(mem[_7851]) + _7851 + 196] = mem[floor32(mem[_7851]) + _7851 + -(mem[_7851] % 32) + 228 len mem[_7851] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7423), 128, mem[_7851], mem[_7851 + 196 len floor32(mem[_7851]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7640 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7640 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7640 + 68] = 0
                                        mem[_7640 + 100] = arg6
                                        mem[_7640 + 132] = 128
                                        mem[_7640 + 164] = mem[_7640]
                                        s = 0
                                        while s < mem[_7640]:
                                            mem[_7640 + s + 196] = mem[_7640 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7640] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7640 + 164 len mem[_7640] + 32]
                                        else:
                                            mem[floor32(mem[_7640]) + _7640 + 196] = mem[floor32(mem[_7640]) + _7640 + -(mem[_7640] % 32) + 228 len mem[_7640] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7640], mem[_7640 + 196 len floor32(mem[_7640]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7424 = mem[(32 * idx + 1) + 128]
                                        _7855 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7855 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7855 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7855 + 68] = 0
                                        mem[_7855 + 100] = address(_7424)
                                        mem[_7855 + 132] = 128
                                        mem[_7855 + 164] = mem[_7855]
                                        s = 0
                                        while s < mem[_7855]:
                                            mem[_7855 + s + 196] = mem[_7855 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7855] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7424), 128, mem[_7855 + 164 len mem[_7855] + 32]
                                        else:
                                            mem[floor32(mem[_7855]) + _7855 + 196] = mem[floor32(mem[_7855]) + _7855 + -(mem[_7855] % 32) + 228 len mem[_7855] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7424), 128, mem[_7855], mem[_7855 + 196 len floor32(mem[_7855]) + 32]
                        else:
                            require -_6432 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[32])) / -_6432 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7641 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7641 + 36] = 0
                                        mem[_7641 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7641 + 100] = arg6
                                        mem[_7641 + 132] = 128
                                        mem[_7641 + 164] = mem[_7641]
                                        s = 0
                                        while s < mem[_7641]:
                                            mem[_7641 + s + 196] = mem[_7641 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7641] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7641 + 164 len mem[_7641] + 32]
                                        else:
                                            mem[floor32(mem[_7641]) + _7641 + 196] = mem[floor32(mem[_7641]) + _7641 + -(mem[_7641] % 32) + 228 len mem[_7641] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7641], mem[_7641 + 196 len floor32(mem[_7641]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7425 = mem[(32 * idx + 1) + 128]
                                        _7859 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7859 + 36] = 0
                                        mem[_7859 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7859 + 100] = address(_7425)
                                        mem[_7859 + 132] = 128
                                        mem[_7859 + 164] = mem[_7859]
                                        s = 0
                                        while s < mem[_7859]:
                                            mem[_7859 + s + 196] = mem[_7859 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7859] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7425), 128, mem[_7859 + 164 len mem[_7859] + 32]
                                        else:
                                            mem[floor32(mem[_7859]) + _7859 + 196] = mem[floor32(mem[_7859]) + _7859 + -(mem[_7859] % 32) + 228 len mem[_7859] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7425), 128, mem[_7859], mem[_7859 + 196 len floor32(mem[_7859]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7642 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7642 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7642 + 68] = 0
                                        mem[_7642 + 100] = arg6
                                        mem[_7642 + 132] = 128
                                        mem[_7642 + 164] = mem[_7642]
                                        s = 0
                                        while s < mem[_7642]:
                                            mem[_7642 + s + 196] = mem[_7642 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7642] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7642 + 164 len mem[_7642] + 32]
                                        else:
                                            mem[floor32(mem[_7642]) + _7642 + 196] = mem[floor32(mem[_7642]) + _7642 + -(mem[_7642] % 32) + 228 len mem[_7642] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7642], mem[_7642 + 196 len floor32(mem[_7642]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7426 = mem[(32 * idx + 1) + 128]
                                        _7863 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7863 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7863 + 68] = 0
                                        mem[_7863 + 100] = address(_7426)
                                        mem[_7863 + 132] = 128
                                        mem[_7863 + 164] = mem[_7863]
                                        s = 0
                                        while s < mem[_7863]:
                                            mem[_7863 + s + 196] = mem[_7863 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7863] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7426), 128, mem[_7863 + 164 len mem[_7863] + 32]
                                        else:
                                            mem[floor32(mem[_7863]) + _7863 + 196] = mem[floor32(mem[_7863]) + _7863 + -(mem[_7863] % 32) + 228 len mem[_7863] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7426), 128, mem[_7863], mem[_7863 + 196 len floor32(mem[_7863]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6432 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6449) == address(_6458):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8187 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8187 + 36] = 0
                                        mem[_8187 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8187 + 100] = arg6
                                        mem[_8187 + 132] = 128
                                        mem[_8187 + 164] = mem[_8187]
                                        s = 0
                                        while s < mem[_8187]:
                                            mem[_8187 + s + 196] = mem[_8187 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8187] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8187 + 164 len mem[_8187] + 32]
                                        else:
                                            mem[floor32(mem[_8187]) + _8187 + 196] = mem[floor32(mem[_8187]) + _8187 + -(mem[_8187] % 32) + 228 len mem[_8187] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8187], mem[_8187 + 196 len floor32(mem[_8187]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7867 = mem[(32 * idx + 1) + 128]
                                        _8493 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8493 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8493 + 36] = 0
                                        mem[_8493 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8493 + 100] = address(_7867)
                                        mem[_8493 + 132] = 128
                                        mem[_8493 + 164] = mem[_8493]
                                        s = 0
                                        while s < mem[_8493]:
                                            mem[_8493 + s + 196] = mem[_8493 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8493] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7867), 128, mem[_8493 + 164 len mem[_8493] + 32]
                                        else:
                                            mem[floor32(mem[_8493]) + _8493 + 196] = mem[floor32(mem[_8493]) + _8493 + -(mem[_8493] % 32) + 228 len mem[_8493] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), address(_7867), 128, mem[_8493], mem[_8493 + 196 len floor32(mem[_8493]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8188 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8188 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8188 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8188 + 68] = 0
                                        mem[_8188 + 100] = arg6
                                        mem[_8188 + 132] = 128
                                        mem[_8188 + 164] = mem[_8188]
                                        s = 0
                                        while s < mem[_8188]:
                                            mem[_8188 + s + 196] = mem[_8188 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8188] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8188 + 164 len mem[_8188] + 32]
                                        else:
                                            mem[floor32(mem[_8188]) + _8188 + 196] = mem[floor32(mem[_8188]) + _8188 + -(mem[_8188] % 32) + 228 len mem[_8188] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8188], mem[_8188 + 196 len floor32(mem[_8188]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7868 = mem[(32 * idx + 1) + 128]
                                        _8497 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8497 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8497 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8497 + 68] = 0
                                        mem[_8497 + 100] = address(_7868)
                                        mem[_8497 + 132] = 128
                                        mem[_8497 + 164] = mem[_8497]
                                        s = 0
                                        while s < mem[_8497]:
                                            mem[_8497 + s + 196] = mem[_8497 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8497] % 32:
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7868), 128, mem[_8497 + 164 len mem[_8497] + 32]
                                        else:
                                            mem[floor32(mem[_8497]) + _8497 + 196] = mem[floor32(mem[_8497]) + _8497 + -(mem[_8497] % 32) + 228 len mem[_8497] % 32]
                                            require ext_code.size(address(_6415))
                                            call address(_6415).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6432 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6432 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6432 * ext_call.return_data[0]) + (_6432 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7868), 128, mem[_8497], mem[_8497 + 196 len floor32(mem[_8497]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg3.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 441 len 7],
                            uint32(arg1),
                            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 452 len 4]
            require arg5.length - 1 < arg5.length
            _3248 = mem[(32 * arg5.length - 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 328] = arg6
            require ext_code.size(address(_3248))
            staticcall address(_3248).0x70a08231 with:
                    gas gas_remaining wei
                   args arg6
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg5.length - 1:
                require idx < mem[96]
                _6419 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg3.length) + 128]
                _6437 = mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6451 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx + 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6460 = mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6419)
                    require ext_code.size(address(_6451))
                    staticcall address(_6451).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6419)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6451) == address(_6451):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6437 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7301 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7301 + 36] = 0
                                        mem[_7301 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7301 + 100] = arg6
                                        mem[_7301 + 132] = 128
                                        mem[_7301 + 164] = mem[_7301]
                                        s = 0
                                        while s < mem[_7301]:
                                            mem[_7301 + s + 196] = mem[_7301 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7301] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7301 + 164 len mem[_7301] + 32]
                                        else:
                                            mem[floor32(mem[_7301]) + _7301 + 196] = mem[floor32(mem[_7301]) + _7301 + -(mem[_7301] % 32) + 228 len mem[_7301] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7301], mem[_7301 + 196 len floor32(mem[_7301]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7205 = mem[(32 * idx + 1) + 128]
                                        _7429 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7429 + 36] = 0
                                        mem[_7429 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7429 + 100] = address(_7205)
                                        mem[_7429 + 132] = 128
                                        mem[_7429 + 164] = mem[_7429]
                                        s = 0
                                        while s < mem[_7429]:
                                            mem[_7429 + s + 196] = mem[_7429 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7429] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7205), 128, mem[_7429 + 164 len mem[_7429] + 32]
                                        else:
                                            mem[floor32(mem[_7429]) + _7429 + 196] = mem[floor32(mem[_7429]) + _7429 + -(mem[_7429] % 32) + 228 len mem[_7429] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7205), 128, mem[_7429], mem[_7429 + 196 len floor32(mem[_7429]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7302 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7302 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7302 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7302 + 68] = 0
                                        mem[_7302 + 100] = arg6
                                        mem[_7302 + 132] = 128
                                        mem[_7302 + 164] = mem[_7302]
                                        s = 0
                                        while s < mem[_7302]:
                                            mem[_7302 + s + 196] = mem[_7302 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7302] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7302 + 164 len mem[_7302] + 32]
                                        else:
                                            mem[floor32(mem[_7302]) + _7302 + 196] = mem[floor32(mem[_7302]) + _7302 + -(mem[_7302] % 32) + 228 len mem[_7302] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7302], mem[_7302 + 196 len floor32(mem[_7302]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7206 = mem[(32 * idx + 1) + 128]
                                        _7433 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7433 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7433 + 68] = 0
                                        mem[_7433 + 100] = address(_7206)
                                        mem[_7433 + 132] = 128
                                        mem[_7433 + 164] = mem[_7433]
                                        s = 0
                                        while s < mem[_7433]:
                                            mem[_7433 + s + 196] = mem[_7433 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7433] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7206), 128, mem[_7433 + 164 len mem[_7433] + 32]
                                        else:
                                            mem[floor32(mem[_7433]) + _7433 + 196] = mem[floor32(mem[_7433]) + _7433 + -(mem[_7433] % 32) + 228 len mem[_7433] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7206), 128, mem[_7433], mem[_7433 + 196 len floor32(mem[_7433]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7651 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7651 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7651 + 36] = 0
                                        mem[_7651 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7651 + 100] = arg6
                                        mem[_7651 + 132] = 128
                                        mem[_7651 + 164] = mem[_7651]
                                        s = 0
                                        while s < mem[_7651]:
                                            mem[_7651 + s + 196] = mem[_7651 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7651] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7651 + 164 len mem[_7651] + 32]
                                        else:
                                            mem[floor32(mem[_7651]) + _7651 + 196] = mem[floor32(mem[_7651]) + _7651 + -(mem[_7651] % 32) + 228 len mem[_7651] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7651], mem[_7651 + 196 len floor32(mem[_7651]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7437 = mem[(32 * idx + 1) + 128]
                                        _7871 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7871 + 36] = 0
                                        mem[_7871 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7871 + 100] = address(_7437)
                                        mem[_7871 + 132] = 128
                                        mem[_7871 + 164] = mem[_7871]
                                        s = 0
                                        while s < mem[_7871]:
                                            mem[_7871 + s + 196] = mem[_7871 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7871] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7437), 128, mem[_7871 + 164 len mem[_7871] + 32]
                                        else:
                                            mem[floor32(mem[_7871]) + _7871 + 196] = mem[floor32(mem[_7871]) + _7871 + -(mem[_7871] % 32) + 228 len mem[_7871] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7437), 128, mem[_7871], mem[_7871 + 196 len floor32(mem[_7871]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7652 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7652 + 68] = 0
                                        mem[_7652 + 100] = arg6
                                        mem[_7652 + 132] = 128
                                        mem[_7652 + 164] = mem[_7652]
                                        s = 0
                                        while s < mem[_7652]:
                                            mem[_7652 + s + 196] = mem[_7652 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7652] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7652 + 164 len mem[_7652] + 32]
                                        else:
                                            mem[floor32(mem[_7652]) + _7652 + 196] = mem[floor32(mem[_7652]) + _7652 + -(mem[_7652] % 32) + 228 len mem[_7652] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7652], mem[_7652 + 196 len floor32(mem[_7652]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7438 = mem[(32 * idx + 1) + 128]
                                        _7875 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7875 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7875 + 68] = 0
                                        mem[_7875 + 100] = address(_7438)
                                        mem[_7875 + 132] = 128
                                        mem[_7875 + 164] = mem[_7875]
                                        s = 0
                                        while s < mem[_7875]:
                                            mem[_7875 + s + 196] = mem[_7875 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7875] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7438), 128, mem[_7875 + 164 len mem[_7875] + 32]
                                        else:
                                            mem[floor32(mem[_7875]) + _7875 + 196] = mem[floor32(mem[_7875]) + _7875 + -(mem[_7875] % 32) + 228 len mem[_7875] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7438), 128, mem[_7875], mem[_7875 + 196 len floor32(mem[_7875]) + 32]
                        else:
                            require -_6437 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) / -_6437 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7653 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7653 + 36] = 0
                                        mem[_7653 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7653 + 100] = arg6
                                        mem[_7653 + 132] = 128
                                        mem[_7653 + 164] = mem[_7653]
                                        s = 0
                                        while s < mem[_7653]:
                                            mem[_7653 + s + 196] = mem[_7653 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7653] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7653 + 164 len mem[_7653] + 32]
                                        else:
                                            mem[floor32(mem[_7653]) + _7653 + 196] = mem[floor32(mem[_7653]) + _7653 + -(mem[_7653] % 32) + 228 len mem[_7653] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7653], mem[_7653 + 196 len floor32(mem[_7653]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7439 = mem[(32 * idx + 1) + 128]
                                        _7879 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7879 + 36] = 0
                                        mem[_7879 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7879 + 100] = address(_7439)
                                        mem[_7879 + 132] = 128
                                        mem[_7879 + 164] = mem[_7879]
                                        s = 0
                                        while s < mem[_7879]:
                                            mem[_7879 + s + 196] = mem[_7879 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7879] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7439), 128, mem[_7879 + 164 len mem[_7879] + 32]
                                        else:
                                            mem[floor32(mem[_7879]) + _7879 + 196] = mem[floor32(mem[_7879]) + _7879 + -(mem[_7879] % 32) + 228 len mem[_7879] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7439), 128, mem[_7879], mem[_7879 + 196 len floor32(mem[_7879]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7654 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7654 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7654 + 68] = 0
                                        mem[_7654 + 100] = arg6
                                        mem[_7654 + 132] = 128
                                        mem[_7654 + 164] = mem[_7654]
                                        s = 0
                                        while s < mem[_7654]:
                                            mem[_7654 + s + 196] = mem[_7654 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7654] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7654 + 164 len mem[_7654] + 32]
                                        else:
                                            mem[floor32(mem[_7654]) + _7654 + 196] = mem[floor32(mem[_7654]) + _7654 + -(mem[_7654] % 32) + 228 len mem[_7654] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7654], mem[_7654 + 196 len floor32(mem[_7654]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7440 = mem[(32 * idx + 1) + 128]
                                        _7883 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7883 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7883 + 68] = 0
                                        mem[_7883 + 100] = address(_7440)
                                        mem[_7883 + 132] = 128
                                        mem[_7883 + 164] = mem[_7883]
                                        s = 0
                                        while s < mem[_7883]:
                                            mem[_7883 + s + 196] = mem[_7883 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7883] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7440), 128, mem[_7883 + 164 len mem[_7883] + 32]
                                        else:
                                            mem[floor32(mem[_7883]) + _7883 + 196] = mem[floor32(mem[_7883]) + _7883 + -(mem[_7883] % 32) + 228 len mem[_7883] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7440), 128, mem[_7883], mem[_7883 + 196 len floor32(mem[_7883]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8207 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8207 + 36] = 0
                                        mem[_8207 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8207 + 100] = arg6
                                        mem[_8207 + 132] = 128
                                        mem[_8207 + 164] = mem[_8207]
                                        s = 0
                                        while s < mem[_8207]:
                                            mem[_8207 + s + 196] = mem[_8207 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8207] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8207 + 164 len mem[_8207] + 32]
                                        else:
                                            mem[floor32(mem[_8207]) + _8207 + 196] = mem[floor32(mem[_8207]) + _8207 + -(mem[_8207] % 32) + 228 len mem[_8207] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8207], mem[_8207 + 196 len floor32(mem[_8207]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7887 = mem[(32 * idx + 1) + 128]
                                        _8511 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8511 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8511 + 36] = 0
                                        mem[_8511 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8511 + 100] = address(_7887)
                                        mem[_8511 + 132] = 128
                                        mem[_8511 + 164] = mem[_8511]
                                        s = 0
                                        while s < mem[_8511]:
                                            mem[_8511 + s + 196] = mem[_8511 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8511] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7887), 128, mem[_8511 + 164 len mem[_8511] + 32]
                                        else:
                                            mem[floor32(mem[_8511]) + _8511 + 196] = mem[floor32(mem[_8511]) + _8511 + -(mem[_8511] % 32) + 228 len mem[_8511] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7887), 128, mem[_8511], mem[_8511 + 196 len floor32(mem[_8511]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8208 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8208 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8208 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8208 + 68] = 0
                                        mem[_8208 + 100] = arg6
                                        mem[_8208 + 132] = 128
                                        mem[_8208 + 164] = mem[_8208]
                                        s = 0
                                        while s < mem[_8208]:
                                            mem[_8208 + s + 196] = mem[_8208 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8208] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8208 + 164 len mem[_8208] + 32]
                                        else:
                                            mem[floor32(mem[_8208]) + _8208 + 196] = mem[floor32(mem[_8208]) + _8208 + -(mem[_8208] % 32) + 228 len mem[_8208] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8208], mem[_8208 + 196 len floor32(mem[_8208]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7888 = mem[(32 * idx + 1) + 128]
                                        _8515 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8515 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8515 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8515 + 68] = 0
                                        mem[_8515 + 100] = address(_7888)
                                        mem[_8515 + 132] = 128
                                        mem[_8515 + 164] = mem[_8515]
                                        s = 0
                                        while s < mem[_8515]:
                                            mem[_8515 + s + 196] = mem[_8515 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8515] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7888), 128, mem[_8515 + 164 len mem[_8515] + 32]
                                        else:
                                            mem[floor32(mem[_8515]) + _8515 + 196] = mem[floor32(mem[_8515]) + _8515 + -(mem[_8515] % 32) + 228 len mem[_8515] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7888), 128, mem[_8515], mem[_8515 + 196 len floor32(mem[_8515]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6437 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7307 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7307 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7307 + 36] = 0
                                        mem[_7307 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7307 + 100] = arg6
                                        mem[_7307 + 132] = 128
                                        mem[_7307 + 164] = mem[_7307]
                                        s = 0
                                        while s < mem[_7307]:
                                            mem[_7307 + s + 196] = mem[_7307 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7307] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7307 + 164 len mem[_7307] + 32]
                                        else:
                                            mem[floor32(mem[_7307]) + _7307 + 196] = mem[floor32(mem[_7307]) + _7307 + -(mem[_7307] % 32) + 228 len mem[_7307] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7307], mem[_7307 + 196 len floor32(mem[_7307]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7211 = mem[(32 * idx + 1) + 128]
                                        _7443 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7443 + 36] = 0
                                        mem[_7443 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7443 + 100] = address(_7211)
                                        mem[_7443 + 132] = 128
                                        mem[_7443 + 164] = mem[_7443]
                                        s = 0
                                        while s < mem[_7443]:
                                            mem[_7443 + s + 196] = mem[_7443 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7443] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7211), 128, mem[_7443 + 164 len mem[_7443] + 32]
                                        else:
                                            mem[floor32(mem[_7443]) + _7443 + 196] = mem[floor32(mem[_7443]) + _7443 + -(mem[_7443] % 32) + 228 len mem[_7443] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7211), 128, mem[_7443], mem[_7443 + 196 len floor32(mem[_7443]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7308 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7308 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7308 + 68] = 0
                                        mem[_7308 + 100] = arg6
                                        mem[_7308 + 132] = 128
                                        mem[_7308 + 164] = mem[_7308]
                                        s = 0
                                        while s < mem[_7308]:
                                            mem[_7308 + s + 196] = mem[_7308 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7308] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7308 + 164 len mem[_7308] + 32]
                                        else:
                                            mem[floor32(mem[_7308]) + _7308 + 196] = mem[floor32(mem[_7308]) + _7308 + -(mem[_7308] % 32) + 228 len mem[_7308] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7308], mem[_7308 + 196 len floor32(mem[_7308]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7212 = mem[(32 * idx + 1) + 128]
                                        _7447 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7447 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7447 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7447 + 68] = 0
                                        mem[_7447 + 100] = address(_7212)
                                        mem[_7447 + 132] = 128
                                        mem[_7447 + 164] = mem[_7447]
                                        s = 0
                                        while s < mem[_7447]:
                                            mem[_7447 + s + 196] = mem[_7447 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7447] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7212), 128, mem[_7447 + 164 len mem[_7447] + 32]
                                        else:
                                            mem[floor32(mem[_7447]) + _7447 + 196] = mem[floor32(mem[_7447]) + _7447 + -(mem[_7447] % 32) + 228 len mem[_7447] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7212), 128, mem[_7447], mem[_7447 + 196 len floor32(mem[_7447]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7663 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7663 + 36] = 0
                                        mem[_7663 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7663 + 100] = arg6
                                        mem[_7663 + 132] = 128
                                        mem[_7663 + 164] = mem[_7663]
                                        s = 0
                                        while s < mem[_7663]:
                                            mem[_7663 + s + 196] = mem[_7663 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7663] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7663 + 164 len mem[_7663] + 32]
                                        else:
                                            mem[floor32(mem[_7663]) + _7663 + 196] = mem[floor32(mem[_7663]) + _7663 + -(mem[_7663] % 32) + 228 len mem[_7663] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7663], mem[_7663 + 196 len floor32(mem[_7663]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7451 = mem[(32 * idx + 1) + 128]
                                        _7891 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7891 + 36] = 0
                                        mem[_7891 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7891 + 100] = address(_7451)
                                        mem[_7891 + 132] = 128
                                        mem[_7891 + 164] = mem[_7891]
                                        s = 0
                                        while s < mem[_7891]:
                                            mem[_7891 + s + 196] = mem[_7891 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7891] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7451), 128, mem[_7891 + 164 len mem[_7891] + 32]
                                        else:
                                            mem[floor32(mem[_7891]) + _7891 + 196] = mem[floor32(mem[_7891]) + _7891 + -(mem[_7891] % 32) + 228 len mem[_7891] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7451), 128, mem[_7891], mem[_7891 + 196 len floor32(mem[_7891]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7664 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7664 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7664 + 68] = 0
                                        mem[_7664 + 100] = arg6
                                        mem[_7664 + 132] = 128
                                        mem[_7664 + 164] = mem[_7664]
                                        s = 0
                                        while s < mem[_7664]:
                                            mem[_7664 + s + 196] = mem[_7664 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7664] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7664 + 164 len mem[_7664] + 32]
                                        else:
                                            mem[floor32(mem[_7664]) + _7664 + 196] = mem[floor32(mem[_7664]) + _7664 + -(mem[_7664] % 32) + 228 len mem[_7664] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7664], mem[_7664 + 196 len floor32(mem[_7664]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7452 = mem[(32 * idx + 1) + 128]
                                        _7895 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7895 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7895 + 68] = 0
                                        mem[_7895 + 100] = address(_7452)
                                        mem[_7895 + 132] = 128
                                        mem[_7895 + 164] = mem[_7895]
                                        s = 0
                                        while s < mem[_7895]:
                                            mem[_7895 + s + 196] = mem[_7895 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7895] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7452), 128, mem[_7895 + 164 len mem[_7895] + 32]
                                        else:
                                            mem[floor32(mem[_7895]) + _7895 + 196] = mem[floor32(mem[_7895]) + _7895 + -(mem[_7895] % 32) + 228 len mem[_7895] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7452), 128, mem[_7895], mem[_7895 + 196 len floor32(mem[_7895]) + 32]
                        else:
                            require -_6437 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[32])) / -_6437 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7665 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7665 + 36] = 0
                                        mem[_7665 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7665 + 100] = arg6
                                        mem[_7665 + 132] = 128
                                        mem[_7665 + 164] = mem[_7665]
                                        s = 0
                                        while s < mem[_7665]:
                                            mem[_7665 + s + 196] = mem[_7665 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7665] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7665 + 164 len mem[_7665] + 32]
                                        else:
                                            mem[floor32(mem[_7665]) + _7665 + 196] = mem[floor32(mem[_7665]) + _7665 + -(mem[_7665] % 32) + 228 len mem[_7665] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7665], mem[_7665 + 196 len floor32(mem[_7665]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7453 = mem[(32 * idx + 1) + 128]
                                        _7899 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7899 + 36] = 0
                                        mem[_7899 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7899 + 100] = address(_7453)
                                        mem[_7899 + 132] = 128
                                        mem[_7899 + 164] = mem[_7899]
                                        s = 0
                                        while s < mem[_7899]:
                                            mem[_7899 + s + 196] = mem[_7899 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7899] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7453), 128, mem[_7899 + 164 len mem[_7899] + 32]
                                        else:
                                            mem[floor32(mem[_7899]) + _7899 + 196] = mem[floor32(mem[_7899]) + _7899 + -(mem[_7899] % 32) + 228 len mem[_7899] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7453), 128, mem[_7899], mem[_7899 + 196 len floor32(mem[_7899]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7666 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7666 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7666 + 68] = 0
                                        mem[_7666 + 100] = arg6
                                        mem[_7666 + 132] = 128
                                        mem[_7666 + 164] = mem[_7666]
                                        s = 0
                                        while s < mem[_7666]:
                                            mem[_7666 + s + 196] = mem[_7666 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7666] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7666 + 164 len mem[_7666] + 32]
                                        else:
                                            mem[floor32(mem[_7666]) + _7666 + 196] = mem[floor32(mem[_7666]) + _7666 + -(mem[_7666] % 32) + 228 len mem[_7666] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7666], mem[_7666 + 196 len floor32(mem[_7666]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7454 = mem[(32 * idx + 1) + 128]
                                        _7903 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7903 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7903 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7903 + 68] = 0
                                        mem[_7903 + 100] = address(_7454)
                                        mem[_7903 + 132] = 128
                                        mem[_7903 + 164] = mem[_7903]
                                        s = 0
                                        while s < mem[_7903]:
                                            mem[_7903 + s + 196] = mem[_7903 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7903] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7454), 128, mem[_7903 + 164 len mem[_7903] + 32]
                                        else:
                                            mem[floor32(mem[_7903]) + _7903 + 196] = mem[floor32(mem[_7903]) + _7903 + -(mem[_7903] % 32) + 228 len mem[_7903] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7454), 128, mem[_7903], mem[_7903 + 196 len floor32(mem[_7903]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6451) == address(_6451):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8227 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8227 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8227 + 36] = 0
                                        mem[_8227 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8227 + 100] = arg6
                                        mem[_8227 + 132] = 128
                                        mem[_8227 + 164] = mem[_8227]
                                        s = 0
                                        while s < mem[_8227]:
                                            mem[_8227 + s + 196] = mem[_8227 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8227] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8227 + 164 len mem[_8227] + 32]
                                        else:
                                            mem[floor32(mem[_8227]) + _8227 + 196] = mem[floor32(mem[_8227]) + _8227 + -(mem[_8227] % 32) + 228 len mem[_8227] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8227], mem[_8227 + 196 len floor32(mem[_8227]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7907 = mem[(32 * idx + 1) + 128]
                                        _8529 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8529 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8529 + 36] = 0
                                        mem[_8529 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8529 + 100] = address(_7907)
                                        mem[_8529 + 132] = 128
                                        mem[_8529 + 164] = mem[_8529]
                                        s = 0
                                        while s < mem[_8529]:
                                            mem[_8529 + s + 196] = mem[_8529 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8529] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7907), 128, mem[_8529 + 164 len mem[_8529] + 32]
                                        else:
                                            mem[floor32(mem[_8529]) + _8529 + 196] = mem[floor32(mem[_8529]) + _8529 + -(mem[_8529] % 32) + 228 len mem[_8529] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7907), 128, mem[_8529], mem[_8529 + 196 len floor32(mem[_8529]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8228 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8228 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8228 + 68] = 0
                                        mem[_8228 + 100] = arg6
                                        mem[_8228 + 132] = 128
                                        mem[_8228 + 164] = mem[_8228]
                                        s = 0
                                        while s < mem[_8228]:
                                            mem[_8228 + s + 196] = mem[_8228 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8228] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8228 + 164 len mem[_8228] + 32]
                                        else:
                                            mem[floor32(mem[_8228]) + _8228 + 196] = mem[floor32(mem[_8228]) + _8228 + -(mem[_8228] % 32) + 228 len mem[_8228] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8228], mem[_8228 + 196 len floor32(mem[_8228]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7908 = mem[(32 * idx + 1) + 128]
                                        _8533 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8533 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8533 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8533 + 68] = 0
                                        mem[_8533 + 100] = address(_7908)
                                        mem[_8533 + 132] = 128
                                        mem[_8533 + 164] = mem[_8533]
                                        s = 0
                                        while s < mem[_8533]:
                                            mem[_8533 + s + 196] = mem[_8533 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8533] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7908), 128, mem[_8533 + 164 len mem[_8533] + 32]
                                        else:
                                            mem[floor32(mem[_8533]) + _8533 + 196] = mem[floor32(mem[_8533]) + _8533 + -(mem[_8533] % 32) + 228 len mem[_8533] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7908), 128, mem[_8533], mem[_8533 + 196 len floor32(mem[_8533]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6419)
                    require ext_code.size(address(_6451))
                    staticcall address(_6451).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6419)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6451) == address(_6460):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6437 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7313 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7313 + 36] = 0
                                        mem[_7313 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7313 + 100] = arg6
                                        mem[_7313 + 132] = 128
                                        mem[_7313 + 164] = mem[_7313]
                                        s = 0
                                        while s < mem[_7313]:
                                            mem[_7313 + s + 196] = mem[_7313 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7313] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7313 + 164 len mem[_7313] + 32]
                                        else:
                                            mem[floor32(mem[_7313]) + _7313 + 196] = mem[floor32(mem[_7313]) + _7313 + -(mem[_7313] % 32) + 228 len mem[_7313] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7313], mem[_7313 + 196 len floor32(mem[_7313]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7217 = mem[(32 * idx + 1) + 128]
                                        _7457 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7457 + 36] = 0
                                        mem[_7457 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7457 + 100] = address(_7217)
                                        mem[_7457 + 132] = 128
                                        mem[_7457 + 164] = mem[_7457]
                                        s = 0
                                        while s < mem[_7457]:
                                            mem[_7457 + s + 196] = mem[_7457 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7457] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7217), 128, mem[_7457 + 164 len mem[_7457] + 32]
                                        else:
                                            mem[floor32(mem[_7457]) + _7457 + 196] = mem[floor32(mem[_7457]) + _7457 + -(mem[_7457] % 32) + 228 len mem[_7457] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7217), 128, mem[_7457], mem[_7457 + 196 len floor32(mem[_7457]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7314 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7314 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7314 + 68] = 0
                                        mem[_7314 + 100] = arg6
                                        mem[_7314 + 132] = 128
                                        mem[_7314 + 164] = mem[_7314]
                                        s = 0
                                        while s < mem[_7314]:
                                            mem[_7314 + s + 196] = mem[_7314 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7314] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7314 + 164 len mem[_7314] + 32]
                                        else:
                                            mem[floor32(mem[_7314]) + _7314 + 196] = mem[floor32(mem[_7314]) + _7314 + -(mem[_7314] % 32) + 228 len mem[_7314] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7314], mem[_7314 + 196 len floor32(mem[_7314]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7218 = mem[(32 * idx + 1) + 128]
                                        _7461 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7461 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7461 + 68] = 0
                                        mem[_7461 + 100] = address(_7218)
                                        mem[_7461 + 132] = 128
                                        mem[_7461 + 164] = mem[_7461]
                                        s = 0
                                        while s < mem[_7461]:
                                            mem[_7461 + s + 196] = mem[_7461 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7461] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7218), 128, mem[_7461 + 164 len mem[_7461] + 32]
                                        else:
                                            mem[floor32(mem[_7461]) + _7461 + 196] = mem[floor32(mem[_7461]) + _7461 + -(mem[_7461] % 32) + 228 len mem[_7461] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7218), 128, mem[_7461], mem[_7461 + 196 len floor32(mem[_7461]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7675 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7675 + 36] = 0
                                        mem[_7675 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7675 + 100] = arg6
                                        mem[_7675 + 132] = 128
                                        mem[_7675 + 164] = mem[_7675]
                                        s = 0
                                        while s < mem[_7675]:
                                            mem[_7675 + s + 196] = mem[_7675 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7675] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7675 + 164 len mem[_7675] + 32]
                                        else:
                                            mem[floor32(mem[_7675]) + _7675 + 196] = mem[floor32(mem[_7675]) + _7675 + -(mem[_7675] % 32) + 228 len mem[_7675] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7675], mem[_7675 + 196 len floor32(mem[_7675]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7465 = mem[(32 * idx + 1) + 128]
                                        _7911 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7911 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7911 + 36] = 0
                                        mem[_7911 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7911 + 100] = address(_7465)
                                        mem[_7911 + 132] = 128
                                        mem[_7911 + 164] = mem[_7911]
                                        s = 0
                                        while s < mem[_7911]:
                                            mem[_7911 + s + 196] = mem[_7911 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7911] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7465), 128, mem[_7911 + 164 len mem[_7911] + 32]
                                        else:
                                            mem[floor32(mem[_7911]) + _7911 + 196] = mem[floor32(mem[_7911]) + _7911 + -(mem[_7911] % 32) + 228 len mem[_7911] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7465), 128, mem[_7911], mem[_7911 + 196 len floor32(mem[_7911]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7676 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7676 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7676 + 68] = 0
                                        mem[_7676 + 100] = arg6
                                        mem[_7676 + 132] = 128
                                        mem[_7676 + 164] = mem[_7676]
                                        s = 0
                                        while s < mem[_7676]:
                                            mem[_7676 + s + 196] = mem[_7676 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7676] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7676 + 164 len mem[_7676] + 32]
                                        else:
                                            mem[floor32(mem[_7676]) + _7676 + 196] = mem[floor32(mem[_7676]) + _7676 + -(mem[_7676] % 32) + 228 len mem[_7676] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7676], mem[_7676 + 196 len floor32(mem[_7676]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7466 = mem[(32 * idx + 1) + 128]
                                        _7915 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7915 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7915 + 68] = 0
                                        mem[_7915 + 100] = address(_7466)
                                        mem[_7915 + 132] = 128
                                        mem[_7915 + 164] = mem[_7915]
                                        s = 0
                                        while s < mem[_7915]:
                                            mem[_7915 + s + 196] = mem[_7915 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7915] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7466), 128, mem[_7915 + 164 len mem[_7915] + 32]
                                        else:
                                            mem[floor32(mem[_7915]) + _7915 + 196] = mem[floor32(mem[_7915]) + _7915 + -(mem[_7915] % 32) + 228 len mem[_7915] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7466), 128, mem[_7915], mem[_7915 + 196 len floor32(mem[_7915]) + 32]
                        else:
                            require -_6437 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) / -_6437 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7677 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7677 + 36] = 0
                                        mem[_7677 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7677 + 100] = arg6
                                        mem[_7677 + 132] = 128
                                        mem[_7677 + 164] = mem[_7677]
                                        s = 0
                                        while s < mem[_7677]:
                                            mem[_7677 + s + 196] = mem[_7677 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7677] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7677 + 164 len mem[_7677] + 32]
                                        else:
                                            mem[floor32(mem[_7677]) + _7677 + 196] = mem[floor32(mem[_7677]) + _7677 + -(mem[_7677] % 32) + 228 len mem[_7677] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7677], mem[_7677 + 196 len floor32(mem[_7677]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7467 = mem[(32 * idx + 1) + 128]
                                        _7919 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7919 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7919 + 36] = 0
                                        mem[_7919 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7919 + 100] = address(_7467)
                                        mem[_7919 + 132] = 128
                                        mem[_7919 + 164] = mem[_7919]
                                        s = 0
                                        while s < mem[_7919]:
                                            mem[_7919 + s + 196] = mem[_7919 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7919] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7467), 128, mem[_7919 + 164 len mem[_7919] + 32]
                                        else:
                                            mem[floor32(mem[_7919]) + _7919 + 196] = mem[floor32(mem[_7919]) + _7919 + -(mem[_7919] % 32) + 228 len mem[_7919] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7467), 128, mem[_7919], mem[_7919 + 196 len floor32(mem[_7919]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7678 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7678 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7678 + 68] = 0
                                        mem[_7678 + 100] = arg6
                                        mem[_7678 + 132] = 128
                                        mem[_7678 + 164] = mem[_7678]
                                        s = 0
                                        while s < mem[_7678]:
                                            mem[_7678 + s + 196] = mem[_7678 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7678] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7678 + 164 len mem[_7678] + 32]
                                        else:
                                            mem[floor32(mem[_7678]) + _7678 + 196] = mem[floor32(mem[_7678]) + _7678 + -(mem[_7678] % 32) + 228 len mem[_7678] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7678], mem[_7678 + 196 len floor32(mem[_7678]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7468 = mem[(32 * idx + 1) + 128]
                                        _7923 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7923 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7923 + 68] = 0
                                        mem[_7923 + 100] = address(_7468)
                                        mem[_7923 + 132] = 128
                                        mem[_7923 + 164] = mem[_7923]
                                        s = 0
                                        while s < mem[_7923]:
                                            mem[_7923 + s + 196] = mem[_7923 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7923] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7468), 128, mem[_7923 + 164 len mem[_7923] + 32]
                                        else:
                                            mem[floor32(mem[_7923]) + _7923 + 196] = mem[floor32(mem[_7923]) + _7923 + -(mem[_7923] % 32) + 228 len mem[_7923] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7468), 128, mem[_7923], mem[_7923 + 196 len floor32(mem[_7923]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8247 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8247 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8247 + 36] = 0
                                        mem[_8247 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8247 + 100] = arg6
                                        mem[_8247 + 132] = 128
                                        mem[_8247 + 164] = mem[_8247]
                                        s = 0
                                        while s < mem[_8247]:
                                            mem[_8247 + s + 196] = mem[_8247 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8247] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8247 + 164 len mem[_8247] + 32]
                                        else:
                                            mem[floor32(mem[_8247]) + _8247 + 196] = mem[floor32(mem[_8247]) + _8247 + -(mem[_8247] % 32) + 228 len mem[_8247] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8247], mem[_8247 + 196 len floor32(mem[_8247]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7927 = mem[(32 * idx + 1) + 128]
                                        _8547 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8547 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8547 + 36] = 0
                                        mem[_8547 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8547 + 100] = address(_7927)
                                        mem[_8547 + 132] = 128
                                        mem[_8547 + 164] = mem[_8547]
                                        s = 0
                                        while s < mem[_8547]:
                                            mem[_8547 + s + 196] = mem[_8547 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8547] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7927), 128, mem[_8547 + 164 len mem[_8547] + 32]
                                        else:
                                            mem[floor32(mem[_8547]) + _8547 + 196] = mem[floor32(mem[_8547]) + _8547 + -(mem[_8547] % 32) + 228 len mem[_8547] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), address(_7927), 128, mem[_8547], mem[_8547 + 196 len floor32(mem[_8547]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8248 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8248 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8248 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8248 + 68] = 0
                                        mem[_8248 + 100] = arg6
                                        mem[_8248 + 132] = 128
                                        mem[_8248 + 164] = mem[_8248]
                                        s = 0
                                        while s < mem[_8248]:
                                            mem[_8248 + s + 196] = mem[_8248 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8248] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8248 + 164 len mem[_8248] + 32]
                                        else:
                                            mem[floor32(mem[_8248]) + _8248 + 196] = mem[floor32(mem[_8248]) + _8248 + -(mem[_8248] % 32) + 228 len mem[_8248] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8248], mem[_8248 + 196 len floor32(mem[_8248]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7928 = mem[(32 * idx + 1) + 128]
                                        _8551 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8551 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8551 + 68] = 0
                                        mem[_8551 + 100] = address(_7928)
                                        mem[_8551 + 132] = 128
                                        mem[_8551 + 164] = mem[_8551]
                                        s = 0
                                        while s < mem[_8551]:
                                            mem[_8551 + s + 196] = mem[_8551 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8551] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7928), 128, mem[_8551 + 164 len mem[_8551] + 32]
                                        else:
                                            mem[floor32(mem[_8551]) + _8551 + 196] = mem[floor32(mem[_8551]) + _8551 + -(mem[_8551] % 32) + 228 len mem[_8551] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7928), 128, mem[_8551], mem[_8551 + 196 len floor32(mem[_8551]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6437 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7319 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7319 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7319 + 36] = 0
                                        mem[_7319 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7319 + 100] = arg6
                                        mem[_7319 + 132] = 128
                                        mem[_7319 + 164] = mem[_7319]
                                        s = 0
                                        while s < mem[_7319]:
                                            mem[_7319 + s + 196] = mem[_7319 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7319] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7319 + 164 len mem[_7319] + 32]
                                        else:
                                            mem[floor32(mem[_7319]) + _7319 + 196] = mem[floor32(mem[_7319]) + _7319 + -(mem[_7319] % 32) + 228 len mem[_7319] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7319], mem[_7319 + 196 len floor32(mem[_7319]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7223 = mem[(32 * idx + 1) + 128]
                                        _7471 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7471 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7471 + 36] = 0
                                        mem[_7471 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7471 + 100] = address(_7223)
                                        mem[_7471 + 132] = 128
                                        mem[_7471 + 164] = mem[_7471]
                                        s = 0
                                        while s < mem[_7471]:
                                            mem[_7471 + s + 196] = mem[_7471 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7471] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7223), 128, mem[_7471 + 164 len mem[_7471] + 32]
                                        else:
                                            mem[floor32(mem[_7471]) + _7471 + 196] = mem[floor32(mem[_7471]) + _7471 + -(mem[_7471] % 32) + 228 len mem[_7471] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7223), 128, mem[_7471], mem[_7471 + 196 len floor32(mem[_7471]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7320 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7320 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7320 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7320 + 68] = 0
                                        mem[_7320 + 100] = arg6
                                        mem[_7320 + 132] = 128
                                        mem[_7320 + 164] = mem[_7320]
                                        s = 0
                                        while s < mem[_7320]:
                                            mem[_7320 + s + 196] = mem[_7320 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7320] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7320 + 164 len mem[_7320] + 32]
                                        else:
                                            mem[floor32(mem[_7320]) + _7320 + 196] = mem[floor32(mem[_7320]) + _7320 + -(mem[_7320] % 32) + 228 len mem[_7320] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7320], mem[_7320 + 196 len floor32(mem[_7320]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7224 = mem[(32 * idx + 1) + 128]
                                        _7475 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7475 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7475 + 68] = 0
                                        mem[_7475 + 100] = address(_7224)
                                        mem[_7475 + 132] = 128
                                        mem[_7475 + 164] = mem[_7475]
                                        s = 0
                                        while s < mem[_7475]:
                                            mem[_7475 + s + 196] = mem[_7475 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7475] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7224), 128, mem[_7475 + 164 len mem[_7475] + 32]
                                        else:
                                            mem[floor32(mem[_7475]) + _7475 + 196] = mem[floor32(mem[_7475]) + _7475 + -(mem[_7475] % 32) + 228 len mem[_7475] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7224), 128, mem[_7475], mem[_7475 + 196 len floor32(mem[_7475]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7687 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7687 + 36] = 0
                                        mem[_7687 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7687 + 100] = arg6
                                        mem[_7687 + 132] = 128
                                        mem[_7687 + 164] = mem[_7687]
                                        s = 0
                                        while s < mem[_7687]:
                                            mem[_7687 + s + 196] = mem[_7687 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7687] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7687 + 164 len mem[_7687] + 32]
                                        else:
                                            mem[floor32(mem[_7687]) + _7687 + 196] = mem[floor32(mem[_7687]) + _7687 + -(mem[_7687] % 32) + 228 len mem[_7687] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7687], mem[_7687 + 196 len floor32(mem[_7687]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7479 = mem[(32 * idx + 1) + 128]
                                        _7931 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7931 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7931 + 36] = 0
                                        mem[_7931 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7931 + 100] = address(_7479)
                                        mem[_7931 + 132] = 128
                                        mem[_7931 + 164] = mem[_7931]
                                        s = 0
                                        while s < mem[_7931]:
                                            mem[_7931 + s + 196] = mem[_7931 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7931] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7479), 128, mem[_7931 + 164 len mem[_7931] + 32]
                                        else:
                                            mem[floor32(mem[_7931]) + _7931 + 196] = mem[floor32(mem[_7931]) + _7931 + -(mem[_7931] % 32) + 228 len mem[_7931] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7479), 128, mem[_7931], mem[_7931 + 196 len floor32(mem[_7931]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7688 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7688 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7688 + 68] = 0
                                        mem[_7688 + 100] = arg6
                                        mem[_7688 + 132] = 128
                                        mem[_7688 + 164] = mem[_7688]
                                        s = 0
                                        while s < mem[_7688]:
                                            mem[_7688 + s + 196] = mem[_7688 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7688] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7688 + 164 len mem[_7688] + 32]
                                        else:
                                            mem[floor32(mem[_7688]) + _7688 + 196] = mem[floor32(mem[_7688]) + _7688 + -(mem[_7688] % 32) + 228 len mem[_7688] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7688], mem[_7688 + 196 len floor32(mem[_7688]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7480 = mem[(32 * idx + 1) + 128]
                                        _7935 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7935 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7935 + 68] = 0
                                        mem[_7935 + 100] = address(_7480)
                                        mem[_7935 + 132] = 128
                                        mem[_7935 + 164] = mem[_7935]
                                        s = 0
                                        while s < mem[_7935]:
                                            mem[_7935 + s + 196] = mem[_7935 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7935] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7480), 128, mem[_7935 + 164 len mem[_7935] + 32]
                                        else:
                                            mem[floor32(mem[_7935]) + _7935 + 196] = mem[floor32(mem[_7935]) + _7935 + -(mem[_7935] % 32) + 228 len mem[_7935] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7480), 128, mem[_7935], mem[_7935 + 196 len floor32(mem[_7935]) + 32]
                        else:
                            require -_6437 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[32])) / -_6437 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7689 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7689 + 36] = 0
                                        mem[_7689 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7689 + 100] = arg6
                                        mem[_7689 + 132] = 128
                                        mem[_7689 + 164] = mem[_7689]
                                        s = 0
                                        while s < mem[_7689]:
                                            mem[_7689 + s + 196] = mem[_7689 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7689] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7689 + 164 len mem[_7689] + 32]
                                        else:
                                            mem[floor32(mem[_7689]) + _7689 + 196] = mem[floor32(mem[_7689]) + _7689 + -(mem[_7689] % 32) + 228 len mem[_7689] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7689], mem[_7689 + 196 len floor32(mem[_7689]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7481 = mem[(32 * idx + 1) + 128]
                                        _7939 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7939 + 36] = 0
                                        mem[_7939 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7939 + 100] = address(_7481)
                                        mem[_7939 + 132] = 128
                                        mem[_7939 + 164] = mem[_7939]
                                        s = 0
                                        while s < mem[_7939]:
                                            mem[_7939 + s + 196] = mem[_7939 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7939] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7481), 128, mem[_7939 + 164 len mem[_7939] + 32]
                                        else:
                                            mem[floor32(mem[_7939]) + _7939 + 196] = mem[floor32(mem[_7939]) + _7939 + -(mem[_7939] % 32) + 228 len mem[_7939] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7481), 128, mem[_7939], mem[_7939 + 196 len floor32(mem[_7939]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7690 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7690 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7690 + 68] = 0
                                        mem[_7690 + 100] = arg6
                                        mem[_7690 + 132] = 128
                                        mem[_7690 + 164] = mem[_7690]
                                        s = 0
                                        while s < mem[_7690]:
                                            mem[_7690 + s + 196] = mem[_7690 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7690] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7690 + 164 len mem[_7690] + 32]
                                        else:
                                            mem[floor32(mem[_7690]) + _7690 + 196] = mem[floor32(mem[_7690]) + _7690 + -(mem[_7690] % 32) + 228 len mem[_7690] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7690], mem[_7690 + 196 len floor32(mem[_7690]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7482 = mem[(32 * idx + 1) + 128]
                                        _7943 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7943 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7943 + 68] = 0
                                        mem[_7943 + 100] = address(_7482)
                                        mem[_7943 + 132] = 128
                                        mem[_7943 + 164] = mem[_7943]
                                        s = 0
                                        while s < mem[_7943]:
                                            mem[_7943 + s + 196] = mem[_7943 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7943] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7482), 128, mem[_7943 + 164 len mem[_7943] + 32]
                                        else:
                                            mem[floor32(mem[_7943]) + _7943 + 196] = mem[floor32(mem[_7943]) + _7943 + -(mem[_7943] % 32) + 228 len mem[_7943] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7482), 128, mem[_7943], mem[_7943 + 196 len floor32(mem[_7943]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6437 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6451) == address(_6460):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8267 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8267 + 36] = 0
                                        mem[_8267 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8267 + 100] = arg6
                                        mem[_8267 + 132] = 128
                                        mem[_8267 + 164] = mem[_8267]
                                        s = 0
                                        while s < mem[_8267]:
                                            mem[_8267 + s + 196] = mem[_8267 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8267] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8267 + 164 len mem[_8267] + 32]
                                        else:
                                            mem[floor32(mem[_8267]) + _8267 + 196] = mem[floor32(mem[_8267]) + _8267 + -(mem[_8267] % 32) + 228 len mem[_8267] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8267], mem[_8267 + 196 len floor32(mem[_8267]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7947 = mem[(32 * idx + 1) + 128]
                                        _8565 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8565 + 36] = 0
                                        mem[_8565 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8565 + 100] = address(_7947)
                                        mem[_8565 + 132] = 128
                                        mem[_8565 + 164] = mem[_8565]
                                        s = 0
                                        while s < mem[_8565]:
                                            mem[_8565 + s + 196] = mem[_8565 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8565] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7947), 128, mem[_8565 + 164 len mem[_8565] + 32]
                                        else:
                                            mem[floor32(mem[_8565]) + _8565 + 196] = mem[floor32(mem[_8565]) + _8565 + -(mem[_8565] % 32) + 228 len mem[_8565] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), address(_7947), 128, mem[_8565], mem[_8565 + 196 len floor32(mem[_8565]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8268 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8268 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8268 + 68] = 0
                                        mem[_8268 + 100] = arg6
                                        mem[_8268 + 132] = 128
                                        mem[_8268 + 164] = mem[_8268]
                                        s = 0
                                        while s < mem[_8268]:
                                            mem[_8268 + s + 196] = mem[_8268 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8268] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8268 + 164 len mem[_8268] + 32]
                                        else:
                                            mem[floor32(mem[_8268]) + _8268 + 196] = mem[floor32(mem[_8268]) + _8268 + -(mem[_8268] % 32) + 228 len mem[_8268] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8268], mem[_8268 + 196 len floor32(mem[_8268]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7948 = mem[(32 * idx + 1) + 128]
                                        _8569 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8569 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8569 + 68] = 0
                                        mem[_8569 + 100] = address(_7948)
                                        mem[_8569 + 132] = 128
                                        mem[_8569 + 164] = mem[_8569]
                                        s = 0
                                        while s < mem[_8569]:
                                            mem[_8569 + s + 196] = mem[_8569 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8569] % 32:
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7948), 128, mem[_8569 + 164 len mem[_8569] + 32]
                                        else:
                                            mem[floor32(mem[_8569]) + _8569 + 196] = mem[floor32(mem[_8569]) + _8569 + -(mem[_8569] % 32) + 228 len mem[_8569] % 32]
                                            require ext_code.size(address(_6419))
                                            call address(_6419).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6437 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6437 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6437 * ext_call.return_data[0]) + (_6437 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7948), 128, mem[_8569], mem[_8569 + 196 len floor32(mem[_8569]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 325
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = return_data.size
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 442 len 15]
        if not return_data.size:
            require arg5.length - 1 < arg5.length
            _3238 = mem[(32 * arg5.length - 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 329] = arg6
            require ext_code.size(address(_3238))
            staticcall address(_3238).0x70a08231 with:
                    gas gas_remaining wei
                   args arg6
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg5.length - 1:
                require idx < mem[96]
                _6423 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg3.length) + 128]
                _6442 = mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6453 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx + 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6462 = mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6423)
                    require ext_code.size(address(_6453))
                    staticcall address(_6453).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6423)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6453) == address(_6453):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6442 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7325 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7325 + 36] = 0
                                        mem[_7325 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7325 + 100] = arg6
                                        mem[_7325 + 132] = 128
                                        mem[_7325 + 164] = mem[_7325]
                                        s = 0
                                        while s < mem[_7325]:
                                            mem[_7325 + s + 196] = mem[_7325 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7325] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7325 + 164 len mem[_7325] + 32]
                                        else:
                                            mem[floor32(mem[_7325]) + _7325 + 196] = mem[floor32(mem[_7325]) + _7325 + -(mem[_7325] % 32) + 228 len mem[_7325] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7325], mem[_7325 + 196 len floor32(mem[_7325]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7229 = mem[(32 * idx + 1) + 128]
                                        _7485 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7485 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7485 + 36] = 0
                                        mem[_7485 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7485 + 100] = address(_7229)
                                        mem[_7485 + 132] = 128
                                        mem[_7485 + 164] = mem[_7485]
                                        s = 0
                                        while s < mem[_7485]:
                                            mem[_7485 + s + 196] = mem[_7485 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7485] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7229), 128, mem[_7485 + 164 len mem[_7485] + 32]
                                        else:
                                            mem[floor32(mem[_7485]) + _7485 + 196] = mem[floor32(mem[_7485]) + _7485 + -(mem[_7485] % 32) + 228 len mem[_7485] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7229), 128, mem[_7485], mem[_7485 + 196 len floor32(mem[_7485]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7326 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7326 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7326 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7326 + 68] = 0
                                        mem[_7326 + 100] = arg6
                                        mem[_7326 + 132] = 128
                                        mem[_7326 + 164] = mem[_7326]
                                        s = 0
                                        while s < mem[_7326]:
                                            mem[_7326 + s + 196] = mem[_7326 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7326] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7326 + 164 len mem[_7326] + 32]
                                        else:
                                            mem[floor32(mem[_7326]) + _7326 + 196] = mem[floor32(mem[_7326]) + _7326 + -(mem[_7326] % 32) + 228 len mem[_7326] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7326], mem[_7326 + 196 len floor32(mem[_7326]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7230 = mem[(32 * idx + 1) + 128]
                                        _7489 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7489 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7489 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7489 + 68] = 0
                                        mem[_7489 + 100] = address(_7230)
                                        mem[_7489 + 132] = 128
                                        mem[_7489 + 164] = mem[_7489]
                                        s = 0
                                        while s < mem[_7489]:
                                            mem[_7489 + s + 196] = mem[_7489 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7489] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7230), 128, mem[_7489 + 164 len mem[_7489] + 32]
                                        else:
                                            mem[floor32(mem[_7489]) + _7489 + 196] = mem[floor32(mem[_7489]) + _7489 + -(mem[_7489] % 32) + 228 len mem[_7489] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7230), 128, mem[_7489], mem[_7489 + 196 len floor32(mem[_7489]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7699 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7699 + 36] = 0
                                        mem[_7699 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7699 + 100] = arg6
                                        mem[_7699 + 132] = 128
                                        mem[_7699 + 164] = mem[_7699]
                                        s = 0
                                        while s < mem[_7699]:
                                            mem[_7699 + s + 196] = mem[_7699 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7699] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7699 + 164 len mem[_7699] + 32]
                                        else:
                                            mem[floor32(mem[_7699]) + _7699 + 196] = mem[floor32(mem[_7699]) + _7699 + -(mem[_7699] % 32) + 228 len mem[_7699] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7699], mem[_7699 + 196 len floor32(mem[_7699]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7493 = mem[(32 * idx + 1) + 128]
                                        _7951 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7951 + 36] = 0
                                        mem[_7951 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7951 + 100] = address(_7493)
                                        mem[_7951 + 132] = 128
                                        mem[_7951 + 164] = mem[_7951]
                                        s = 0
                                        while s < mem[_7951]:
                                            mem[_7951 + s + 196] = mem[_7951 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7951] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7493), 128, mem[_7951 + 164 len mem[_7951] + 32]
                                        else:
                                            mem[floor32(mem[_7951]) + _7951 + 196] = mem[floor32(mem[_7951]) + _7951 + -(mem[_7951] % 32) + 228 len mem[_7951] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7493), 128, mem[_7951], mem[_7951 + 196 len floor32(mem[_7951]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7700 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7700 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7700 + 68] = 0
                                        mem[_7700 + 100] = arg6
                                        mem[_7700 + 132] = 128
                                        mem[_7700 + 164] = mem[_7700]
                                        s = 0
                                        while s < mem[_7700]:
                                            mem[_7700 + s + 196] = mem[_7700 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7700] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7700 + 164 len mem[_7700] + 32]
                                        else:
                                            mem[floor32(mem[_7700]) + _7700 + 196] = mem[floor32(mem[_7700]) + _7700 + -(mem[_7700] % 32) + 228 len mem[_7700] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7700], mem[_7700 + 196 len floor32(mem[_7700]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7494 = mem[(32 * idx + 1) + 128]
                                        _7955 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7955 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7955 + 68] = 0
                                        mem[_7955 + 100] = address(_7494)
                                        mem[_7955 + 132] = 128
                                        mem[_7955 + 164] = mem[_7955]
                                        s = 0
                                        while s < mem[_7955]:
                                            mem[_7955 + s + 196] = mem[_7955 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7955] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7494), 128, mem[_7955 + 164 len mem[_7955] + 32]
                                        else:
                                            mem[floor32(mem[_7955]) + _7955 + 196] = mem[floor32(mem[_7955]) + _7955 + -(mem[_7955] % 32) + 228 len mem[_7955] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7494), 128, mem[_7955], mem[_7955 + 196 len floor32(mem[_7955]) + 32]
                        else:
                            require -_6442 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) / -_6442 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7701 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7701 + 36] = 0
                                        mem[_7701 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7701 + 100] = arg6
                                        mem[_7701 + 132] = 128
                                        mem[_7701 + 164] = mem[_7701]
                                        s = 0
                                        while s < mem[_7701]:
                                            mem[_7701 + s + 196] = mem[_7701 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7701] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7701 + 164 len mem[_7701] + 32]
                                        else:
                                            mem[floor32(mem[_7701]) + _7701 + 196] = mem[floor32(mem[_7701]) + _7701 + -(mem[_7701] % 32) + 228 len mem[_7701] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7701], mem[_7701 + 196 len floor32(mem[_7701]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7495 = mem[(32 * idx + 1) + 128]
                                        _7959 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7959 + 36] = 0
                                        mem[_7959 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7959 + 100] = address(_7495)
                                        mem[_7959 + 132] = 128
                                        mem[_7959 + 164] = mem[_7959]
                                        s = 0
                                        while s < mem[_7959]:
                                            mem[_7959 + s + 196] = mem[_7959 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7959] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7495), 128, mem[_7959 + 164 len mem[_7959] + 32]
                                        else:
                                            mem[floor32(mem[_7959]) + _7959 + 196] = mem[floor32(mem[_7959]) + _7959 + -(mem[_7959] % 32) + 228 len mem[_7959] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7495), 128, mem[_7959], mem[_7959 + 196 len floor32(mem[_7959]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7702 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7702 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7702 + 68] = 0
                                        mem[_7702 + 100] = arg6
                                        mem[_7702 + 132] = 128
                                        mem[_7702 + 164] = mem[_7702]
                                        s = 0
                                        while s < mem[_7702]:
                                            mem[_7702 + s + 196] = mem[_7702 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7702] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7702 + 164 len mem[_7702] + 32]
                                        else:
                                            mem[floor32(mem[_7702]) + _7702 + 196] = mem[floor32(mem[_7702]) + _7702 + -(mem[_7702] % 32) + 228 len mem[_7702] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7702], mem[_7702 + 196 len floor32(mem[_7702]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7496 = mem[(32 * idx + 1) + 128]
                                        _7963 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7963 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7963 + 68] = 0
                                        mem[_7963 + 100] = address(_7496)
                                        mem[_7963 + 132] = 128
                                        mem[_7963 + 164] = mem[_7963]
                                        s = 0
                                        while s < mem[_7963]:
                                            mem[_7963 + s + 196] = mem[_7963 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7963] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7496), 128, mem[_7963 + 164 len mem[_7963] + 32]
                                        else:
                                            mem[floor32(mem[_7963]) + _7963 + 196] = mem[floor32(mem[_7963]) + _7963 + -(mem[_7963] % 32) + 228 len mem[_7963] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7496), 128, mem[_7963], mem[_7963 + 196 len floor32(mem[_7963]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8287 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8287 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8287 + 36] = 0
                                        mem[_8287 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8287 + 100] = arg6
                                        mem[_8287 + 132] = 128
                                        mem[_8287 + 164] = mem[_8287]
                                        s = 0
                                        while s < mem[_8287]:
                                            mem[_8287 + s + 196] = mem[_8287 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8287] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8287 + 164 len mem[_8287] + 32]
                                        else:
                                            mem[floor32(mem[_8287]) + _8287 + 196] = mem[floor32(mem[_8287]) + _8287 + -(mem[_8287] % 32) + 228 len mem[_8287] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8287], mem[_8287 + 196 len floor32(mem[_8287]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7967 = mem[(32 * idx + 1) + 128]
                                        _8583 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8583 + 36] = 0
                                        mem[_8583 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8583 + 100] = address(_7967)
                                        mem[_8583 + 132] = 128
                                        mem[_8583 + 164] = mem[_8583]
                                        s = 0
                                        while s < mem[_8583]:
                                            mem[_8583 + s + 196] = mem[_8583 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8583] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7967), 128, mem[_8583 + 164 len mem[_8583] + 32]
                                        else:
                                            mem[floor32(mem[_8583]) + _8583 + 196] = mem[floor32(mem[_8583]) + _8583 + -(mem[_8583] % 32) + 228 len mem[_8583] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7967), 128, mem[_8583], mem[_8583 + 196 len floor32(mem[_8583]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8288 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8288 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8288 + 68] = 0
                                        mem[_8288 + 100] = arg6
                                        mem[_8288 + 132] = 128
                                        mem[_8288 + 164] = mem[_8288]
                                        s = 0
                                        while s < mem[_8288]:
                                            mem[_8288 + s + 196] = mem[_8288 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8288] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8288 + 164 len mem[_8288] + 32]
                                        else:
                                            mem[floor32(mem[_8288]) + _8288 + 196] = mem[floor32(mem[_8288]) + _8288 + -(mem[_8288] % 32) + 228 len mem[_8288] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8288], mem[_8288 + 196 len floor32(mem[_8288]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7968 = mem[(32 * idx + 1) + 128]
                                        _8587 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8587 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8587 + 68] = 0
                                        mem[_8587 + 100] = address(_7968)
                                        mem[_8587 + 132] = 128
                                        mem[_8587 + 164] = mem[_8587]
                                        s = 0
                                        while s < mem[_8587]:
                                            mem[_8587 + s + 196] = mem[_8587 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8587] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7968), 128, mem[_8587 + 164 len mem[_8587] + 32]
                                        else:
                                            mem[floor32(mem[_8587]) + _8587 + 196] = mem[floor32(mem[_8587]) + _8587 + -(mem[_8587] % 32) + 228 len mem[_8587] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7968), 128, mem[_8587], mem[_8587 + 196 len floor32(mem[_8587]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6442 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7331 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7331 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7331 + 36] = 0
                                        mem[_7331 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7331 + 100] = arg6
                                        mem[_7331 + 132] = 128
                                        mem[_7331 + 164] = mem[_7331]
                                        s = 0
                                        while s < mem[_7331]:
                                            mem[_7331 + s + 196] = mem[_7331 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7331] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7331 + 164 len mem[_7331] + 32]
                                        else:
                                            mem[floor32(mem[_7331]) + _7331 + 196] = mem[floor32(mem[_7331]) + _7331 + -(mem[_7331] % 32) + 228 len mem[_7331] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7331], mem[_7331 + 196 len floor32(mem[_7331]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7235 = mem[(32 * idx + 1) + 128]
                                        _7499 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7499 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7499 + 36] = 0
                                        mem[_7499 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7499 + 100] = address(_7235)
                                        mem[_7499 + 132] = 128
                                        mem[_7499 + 164] = mem[_7499]
                                        s = 0
                                        while s < mem[_7499]:
                                            mem[_7499 + s + 196] = mem[_7499 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7499] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7235), 128, mem[_7499 + 164 len mem[_7499] + 32]
                                        else:
                                            mem[floor32(mem[_7499]) + _7499 + 196] = mem[floor32(mem[_7499]) + _7499 + -(mem[_7499] % 32) + 228 len mem[_7499] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7235), 128, mem[_7499], mem[_7499 + 196 len floor32(mem[_7499]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7332 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7332 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7332 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7332 + 68] = 0
                                        mem[_7332 + 100] = arg6
                                        mem[_7332 + 132] = 128
                                        mem[_7332 + 164] = mem[_7332]
                                        s = 0
                                        while s < mem[_7332]:
                                            mem[_7332 + s + 196] = mem[_7332 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7332] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7332 + 164 len mem[_7332] + 32]
                                        else:
                                            mem[floor32(mem[_7332]) + _7332 + 196] = mem[floor32(mem[_7332]) + _7332 + -(mem[_7332] % 32) + 228 len mem[_7332] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7332], mem[_7332 + 196 len floor32(mem[_7332]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7236 = mem[(32 * idx + 1) + 128]
                                        _7503 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7503 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7503 + 68] = 0
                                        mem[_7503 + 100] = address(_7236)
                                        mem[_7503 + 132] = 128
                                        mem[_7503 + 164] = mem[_7503]
                                        s = 0
                                        while s < mem[_7503]:
                                            mem[_7503 + s + 196] = mem[_7503 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7503] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7236), 128, mem[_7503 + 164 len mem[_7503] + 32]
                                        else:
                                            mem[floor32(mem[_7503]) + _7503 + 196] = mem[floor32(mem[_7503]) + _7503 + -(mem[_7503] % 32) + 228 len mem[_7503] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7236), 128, mem[_7503], mem[_7503 + 196 len floor32(mem[_7503]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7711 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7711 + 36] = 0
                                        mem[_7711 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7711 + 100] = arg6
                                        mem[_7711 + 132] = 128
                                        mem[_7711 + 164] = mem[_7711]
                                        s = 0
                                        while s < mem[_7711]:
                                            mem[_7711 + s + 196] = mem[_7711 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7711] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7711 + 164 len mem[_7711] + 32]
                                        else:
                                            mem[floor32(mem[_7711]) + _7711 + 196] = mem[floor32(mem[_7711]) + _7711 + -(mem[_7711] % 32) + 228 len mem[_7711] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7711], mem[_7711 + 196 len floor32(mem[_7711]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7507 = mem[(32 * idx + 1) + 128]
                                        _7971 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7971 + 36] = 0
                                        mem[_7971 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7971 + 100] = address(_7507)
                                        mem[_7971 + 132] = 128
                                        mem[_7971 + 164] = mem[_7971]
                                        s = 0
                                        while s < mem[_7971]:
                                            mem[_7971 + s + 196] = mem[_7971 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7971] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7507), 128, mem[_7971 + 164 len mem[_7971] + 32]
                                        else:
                                            mem[floor32(mem[_7971]) + _7971 + 196] = mem[floor32(mem[_7971]) + _7971 + -(mem[_7971] % 32) + 228 len mem[_7971] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7507), 128, mem[_7971], mem[_7971 + 196 len floor32(mem[_7971]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7712 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7712 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7712 + 68] = 0
                                        mem[_7712 + 100] = arg6
                                        mem[_7712 + 132] = 128
                                        mem[_7712 + 164] = mem[_7712]
                                        s = 0
                                        while s < mem[_7712]:
                                            mem[_7712 + s + 196] = mem[_7712 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7712] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7712 + 164 len mem[_7712] + 32]
                                        else:
                                            mem[floor32(mem[_7712]) + _7712 + 196] = mem[floor32(mem[_7712]) + _7712 + -(mem[_7712] % 32) + 228 len mem[_7712] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7712], mem[_7712 + 196 len floor32(mem[_7712]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7508 = mem[(32 * idx + 1) + 128]
                                        _7975 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7975 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7975 + 68] = 0
                                        mem[_7975 + 100] = address(_7508)
                                        mem[_7975 + 132] = 128
                                        mem[_7975 + 164] = mem[_7975]
                                        s = 0
                                        while s < mem[_7975]:
                                            mem[_7975 + s + 196] = mem[_7975 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7975] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7508), 128, mem[_7975 + 164 len mem[_7975] + 32]
                                        else:
                                            mem[floor32(mem[_7975]) + _7975 + 196] = mem[floor32(mem[_7975]) + _7975 + -(mem[_7975] % 32) + 228 len mem[_7975] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7508), 128, mem[_7975], mem[_7975 + 196 len floor32(mem[_7975]) + 32]
                        else:
                            require -_6442 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[32])) / -_6442 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7713 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7713 + 36] = 0
                                        mem[_7713 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7713 + 100] = arg6
                                        mem[_7713 + 132] = 128
                                        mem[_7713 + 164] = mem[_7713]
                                        s = 0
                                        while s < mem[_7713]:
                                            mem[_7713 + s + 196] = mem[_7713 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7713] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7713 + 164 len mem[_7713] + 32]
                                        else:
                                            mem[floor32(mem[_7713]) + _7713 + 196] = mem[floor32(mem[_7713]) + _7713 + -(mem[_7713] % 32) + 228 len mem[_7713] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7713], mem[_7713 + 196 len floor32(mem[_7713]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7509 = mem[(32 * idx + 1) + 128]
                                        _7979 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7979 + 36] = 0
                                        mem[_7979 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7979 + 100] = address(_7509)
                                        mem[_7979 + 132] = 128
                                        mem[_7979 + 164] = mem[_7979]
                                        s = 0
                                        while s < mem[_7979]:
                                            mem[_7979 + s + 196] = mem[_7979 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7979] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7509), 128, mem[_7979 + 164 len mem[_7979] + 32]
                                        else:
                                            mem[floor32(mem[_7979]) + _7979 + 196] = mem[floor32(mem[_7979]) + _7979 + -(mem[_7979] % 32) + 228 len mem[_7979] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7509), 128, mem[_7979], mem[_7979 + 196 len floor32(mem[_7979]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7714 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7714 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7714 + 68] = 0
                                        mem[_7714 + 100] = arg6
                                        mem[_7714 + 132] = 128
                                        mem[_7714 + 164] = mem[_7714]
                                        s = 0
                                        while s < mem[_7714]:
                                            mem[_7714 + s + 196] = mem[_7714 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7714] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7714 + 164 len mem[_7714] + 32]
                                        else:
                                            mem[floor32(mem[_7714]) + _7714 + 196] = mem[floor32(mem[_7714]) + _7714 + -(mem[_7714] % 32) + 228 len mem[_7714] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7714], mem[_7714 + 196 len floor32(mem[_7714]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7510 = mem[(32 * idx + 1) + 128]
                                        _7983 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7983 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7983 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7983 + 68] = 0
                                        mem[_7983 + 100] = address(_7510)
                                        mem[_7983 + 132] = 128
                                        mem[_7983 + 164] = mem[_7983]
                                        s = 0
                                        while s < mem[_7983]:
                                            mem[_7983 + s + 196] = mem[_7983 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7983] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7510), 128, mem[_7983 + 164 len mem[_7983] + 32]
                                        else:
                                            mem[floor32(mem[_7983]) + _7983 + 196] = mem[floor32(mem[_7983]) + _7983 + -(mem[_7983] % 32) + 228 len mem[_7983] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7510), 128, mem[_7983], mem[_7983 + 196 len floor32(mem[_7983]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6453) == address(_6453):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8307 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8307 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8307 + 36] = 0
                                        mem[_8307 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8307 + 100] = arg6
                                        mem[_8307 + 132] = 128
                                        mem[_8307 + 164] = mem[_8307]
                                        s = 0
                                        while s < mem[_8307]:
                                            mem[_8307 + s + 196] = mem[_8307 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8307] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8307 + 164 len mem[_8307] + 32]
                                        else:
                                            mem[floor32(mem[_8307]) + _8307 + 196] = mem[floor32(mem[_8307]) + _8307 + -(mem[_8307] % 32) + 228 len mem[_8307] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8307], mem[_8307 + 196 len floor32(mem[_8307]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7987 = mem[(32 * idx + 1) + 128]
                                        _8601 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8601 + 36] = 0
                                        mem[_8601 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8601 + 100] = address(_7987)
                                        mem[_8601 + 132] = 128
                                        mem[_8601 + 164] = mem[_8601]
                                        s = 0
                                        while s < mem[_8601]:
                                            mem[_8601 + s + 196] = mem[_8601 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8601] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7987), 128, mem[_8601 + 164 len mem[_8601] + 32]
                                        else:
                                            mem[floor32(mem[_8601]) + _8601 + 196] = mem[floor32(mem[_8601]) + _8601 + -(mem[_8601] % 32) + 228 len mem[_8601] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7987), 128, mem[_8601], mem[_8601 + 196 len floor32(mem[_8601]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8308 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8308 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8308 + 68] = 0
                                        mem[_8308 + 100] = arg6
                                        mem[_8308 + 132] = 128
                                        mem[_8308 + 164] = mem[_8308]
                                        s = 0
                                        while s < mem[_8308]:
                                            mem[_8308 + s + 196] = mem[_8308 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8308] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8308 + 164 len mem[_8308] + 32]
                                        else:
                                            mem[floor32(mem[_8308]) + _8308 + 196] = mem[floor32(mem[_8308]) + _8308 + -(mem[_8308] % 32) + 228 len mem[_8308] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8308], mem[_8308 + 196 len floor32(mem[_8308]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7988 = mem[(32 * idx + 1) + 128]
                                        _8605 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8605 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8605 + 68] = 0
                                        mem[_8605 + 100] = address(_7988)
                                        mem[_8605 + 132] = 128
                                        mem[_8605 + 164] = mem[_8605]
                                        s = 0
                                        while s < mem[_8605]:
                                            mem[_8605 + s + 196] = mem[_8605 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8605] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7988), 128, mem[_8605 + 164 len mem[_8605] + 32]
                                        else:
                                            mem[floor32(mem[_8605]) + _8605 + 196] = mem[floor32(mem[_8605]) + _8605 + -(mem[_8605] % 32) + 228 len mem[_8605] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7988), 128, mem[_8605], mem[_8605 + 196 len floor32(mem[_8605]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6423)
                    require ext_code.size(address(_6453))
                    staticcall address(_6453).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6423)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6453) == address(_6462):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6442 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7337 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7337 + 36] = 0
                                        mem[_7337 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7337 + 100] = arg6
                                        mem[_7337 + 132] = 128
                                        mem[_7337 + 164] = mem[_7337]
                                        s = 0
                                        while s < mem[_7337]:
                                            mem[_7337 + s + 196] = mem[_7337 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7337] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7337 + 164 len mem[_7337] + 32]
                                        else:
                                            mem[floor32(mem[_7337]) + _7337 + 196] = mem[floor32(mem[_7337]) + _7337 + -(mem[_7337] % 32) + 228 len mem[_7337] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7337], mem[_7337 + 196 len floor32(mem[_7337]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7241 = mem[(32 * idx + 1) + 128]
                                        _7513 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7513 + 36] = 0
                                        mem[_7513 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7513 + 100] = address(_7241)
                                        mem[_7513 + 132] = 128
                                        mem[_7513 + 164] = mem[_7513]
                                        s = 0
                                        while s < mem[_7513]:
                                            mem[_7513 + s + 196] = mem[_7513 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7513] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7241), 128, mem[_7513 + 164 len mem[_7513] + 32]
                                        else:
                                            mem[floor32(mem[_7513]) + _7513 + 196] = mem[floor32(mem[_7513]) + _7513 + -(mem[_7513] % 32) + 228 len mem[_7513] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7241), 128, mem[_7513], mem[_7513 + 196 len floor32(mem[_7513]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7338 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7338 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7338 + 68] = 0
                                        mem[_7338 + 100] = arg6
                                        mem[_7338 + 132] = 128
                                        mem[_7338 + 164] = mem[_7338]
                                        s = 0
                                        while s < mem[_7338]:
                                            mem[_7338 + s + 196] = mem[_7338 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7338] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7338 + 164 len mem[_7338] + 32]
                                        else:
                                            mem[floor32(mem[_7338]) + _7338 + 196] = mem[floor32(mem[_7338]) + _7338 + -(mem[_7338] % 32) + 228 len mem[_7338] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7338], mem[_7338 + 196 len floor32(mem[_7338]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7242 = mem[(32 * idx + 1) + 128]
                                        _7517 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7517 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7517 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7517 + 68] = 0
                                        mem[_7517 + 100] = address(_7242)
                                        mem[_7517 + 132] = 128
                                        mem[_7517 + 164] = mem[_7517]
                                        s = 0
                                        while s < mem[_7517]:
                                            mem[_7517 + s + 196] = mem[_7517 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7517] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7242), 128, mem[_7517 + 164 len mem[_7517] + 32]
                                        else:
                                            mem[floor32(mem[_7517]) + _7517 + 196] = mem[floor32(mem[_7517]) + _7517 + -(mem[_7517] % 32) + 228 len mem[_7517] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7242), 128, mem[_7517], mem[_7517 + 196 len floor32(mem[_7517]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7723 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7723 + 36] = 0
                                        mem[_7723 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7723 + 100] = arg6
                                        mem[_7723 + 132] = 128
                                        mem[_7723 + 164] = mem[_7723]
                                        s = 0
                                        while s < mem[_7723]:
                                            mem[_7723 + s + 196] = mem[_7723 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7723] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7723 + 164 len mem[_7723] + 32]
                                        else:
                                            mem[floor32(mem[_7723]) + _7723 + 196] = mem[floor32(mem[_7723]) + _7723 + -(mem[_7723] % 32) + 228 len mem[_7723] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7723], mem[_7723 + 196 len floor32(mem[_7723]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7521 = mem[(32 * idx + 1) + 128]
                                        _7991 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7991 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7991 + 36] = 0
                                        mem[_7991 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7991 + 100] = address(_7521)
                                        mem[_7991 + 132] = 128
                                        mem[_7991 + 164] = mem[_7991]
                                        s = 0
                                        while s < mem[_7991]:
                                            mem[_7991 + s + 196] = mem[_7991 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7991] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7521), 128, mem[_7991 + 164 len mem[_7991] + 32]
                                        else:
                                            mem[floor32(mem[_7991]) + _7991 + 196] = mem[floor32(mem[_7991]) + _7991 + -(mem[_7991] % 32) + 228 len mem[_7991] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7521), 128, mem[_7991], mem[_7991 + 196 len floor32(mem[_7991]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7724 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7724 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7724 + 68] = 0
                                        mem[_7724 + 100] = arg6
                                        mem[_7724 + 132] = 128
                                        mem[_7724 + 164] = mem[_7724]
                                        s = 0
                                        while s < mem[_7724]:
                                            mem[_7724 + s + 196] = mem[_7724 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7724] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7724 + 164 len mem[_7724] + 32]
                                        else:
                                            mem[floor32(mem[_7724]) + _7724 + 196] = mem[floor32(mem[_7724]) + _7724 + -(mem[_7724] % 32) + 228 len mem[_7724] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7724], mem[_7724 + 196 len floor32(mem[_7724]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7522 = mem[(32 * idx + 1) + 128]
                                        _7995 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7995 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7995 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7995 + 68] = 0
                                        mem[_7995 + 100] = address(_7522)
                                        mem[_7995 + 132] = 128
                                        mem[_7995 + 164] = mem[_7995]
                                        s = 0
                                        while s < mem[_7995]:
                                            mem[_7995 + s + 196] = mem[_7995 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7995] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7522), 128, mem[_7995 + 164 len mem[_7995] + 32]
                                        else:
                                            mem[floor32(mem[_7995]) + _7995 + 196] = mem[floor32(mem[_7995]) + _7995 + -(mem[_7995] % 32) + 228 len mem[_7995] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7522), 128, mem[_7995], mem[_7995 + 196 len floor32(mem[_7995]) + 32]
                        else:
                            require -_6442 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) / -_6442 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7725 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7725 + 36] = 0
                                        mem[_7725 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7725 + 100] = arg6
                                        mem[_7725 + 132] = 128
                                        mem[_7725 + 164] = mem[_7725]
                                        s = 0
                                        while s < mem[_7725]:
                                            mem[_7725 + s + 196] = mem[_7725 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7725] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7725 + 164 len mem[_7725] + 32]
                                        else:
                                            mem[floor32(mem[_7725]) + _7725 + 196] = mem[floor32(mem[_7725]) + _7725 + -(mem[_7725] % 32) + 228 len mem[_7725] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7725], mem[_7725 + 196 len floor32(mem[_7725]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7523 = mem[(32 * idx + 1) + 128]
                                        _7999 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7999 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7999 + 36] = 0
                                        mem[_7999 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7999 + 100] = address(_7523)
                                        mem[_7999 + 132] = 128
                                        mem[_7999 + 164] = mem[_7999]
                                        s = 0
                                        while s < mem[_7999]:
                                            mem[_7999 + s + 196] = mem[_7999 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7999] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7523), 128, mem[_7999 + 164 len mem[_7999] + 32]
                                        else:
                                            mem[floor32(mem[_7999]) + _7999 + 196] = mem[floor32(mem[_7999]) + _7999 + -(mem[_7999] % 32) + 228 len mem[_7999] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_7523), 128, mem[_7999], mem[_7999 + 196 len floor32(mem[_7999]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7726 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7726 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7726 + 68] = 0
                                        mem[_7726 + 100] = arg6
                                        mem[_7726 + 132] = 128
                                        mem[_7726 + 164] = mem[_7726]
                                        s = 0
                                        while s < mem[_7726]:
                                            mem[_7726 + s + 196] = mem[_7726 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7726] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7726 + 164 len mem[_7726] + 32]
                                        else:
                                            mem[floor32(mem[_7726]) + _7726 + 196] = mem[floor32(mem[_7726]) + _7726 + -(mem[_7726] % 32) + 228 len mem[_7726] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7726], mem[_7726 + 196 len floor32(mem[_7726]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7524 = mem[(32 * idx + 1) + 128]
                                        _8003 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8003 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8003 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8003 + 68] = 0
                                        mem[_8003 + 100] = address(_7524)
                                        mem[_8003 + 132] = 128
                                        mem[_8003 + 164] = mem[_8003]
                                        s = 0
                                        while s < mem[_8003]:
                                            mem[_8003 + s + 196] = mem[_8003 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8003] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7524), 128, mem[_8003 + 164 len mem[_8003] + 32]
                                        else:
                                            mem[floor32(mem[_8003]) + _8003 + 196] = mem[floor32(mem[_8003]) + _8003 + -(mem[_8003] % 32) + 228 len mem[_8003] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7524), 128, mem[_8003], mem[_8003 + 196 len floor32(mem[_8003]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8327 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8327 + 36] = 0
                                        mem[_8327 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8327 + 100] = arg6
                                        mem[_8327 + 132] = 128
                                        mem[_8327 + 164] = mem[_8327]
                                        s = 0
                                        while s < mem[_8327]:
                                            mem[_8327 + s + 196] = mem[_8327 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8327] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8327 + 164 len mem[_8327] + 32]
                                        else:
                                            mem[floor32(mem[_8327]) + _8327 + 196] = mem[floor32(mem[_8327]) + _8327 + -(mem[_8327] % 32) + 228 len mem[_8327] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8327], mem[_8327 + 196 len floor32(mem[_8327]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8007 = mem[(32 * idx + 1) + 128]
                                        _8619 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8619 + 36] = 0
                                        mem[_8619 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8619 + 100] = address(_8007)
                                        mem[_8619 + 132] = 128
                                        mem[_8619 + 164] = mem[_8619]
                                        s = 0
                                        while s < mem[_8619]:
                                            mem[_8619 + s + 196] = mem[_8619 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8619] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_8007), 128, mem[_8619 + 164 len mem[_8619] + 32]
                                        else:
                                            mem[floor32(mem[_8619]) + _8619 + 196] = mem[floor32(mem[_8619]) + _8619 + -(mem[_8619] % 32) + 228 len mem[_8619] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), address(_8007), 128, mem[_8619], mem[_8619 + 196 len floor32(mem[_8619]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8328 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8328 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8328 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8328 + 68] = 0
                                        mem[_8328 + 100] = arg6
                                        mem[_8328 + 132] = 128
                                        mem[_8328 + 164] = mem[_8328]
                                        s = 0
                                        while s < mem[_8328]:
                                            mem[_8328 + s + 196] = mem[_8328 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8328] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8328 + 164 len mem[_8328] + 32]
                                        else:
                                            mem[floor32(mem[_8328]) + _8328 + 196] = mem[floor32(mem[_8328]) + _8328 + -(mem[_8328] % 32) + 228 len mem[_8328] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8328], mem[_8328 + 196 len floor32(mem[_8328]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8008 = mem[(32 * idx + 1) + 128]
                                        _8623 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8623 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8623 + 68] = 0
                                        mem[_8623 + 100] = address(_8008)
                                        mem[_8623 + 132] = 128
                                        mem[_8623 + 164] = mem[_8623]
                                        s = 0
                                        while s < mem[_8623]:
                                            mem[_8623 + s + 196] = mem[_8623 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8623] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8008), 128, mem[_8623 + 164 len mem[_8623] + 32]
                                        else:
                                            mem[floor32(mem[_8623]) + _8623 + 196] = mem[floor32(mem[_8623]) + _8623 + -(mem[_8623] % 32) + 228 len mem[_8623] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8008), 128, mem[_8623], mem[_8623 + 196 len floor32(mem[_8623]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6442 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7343 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7343 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7343 + 36] = 0
                                        mem[_7343 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7343 + 100] = arg6
                                        mem[_7343 + 132] = 128
                                        mem[_7343 + 164] = mem[_7343]
                                        s = 0
                                        while s < mem[_7343]:
                                            mem[_7343 + s + 196] = mem[_7343 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7343] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7343 + 164 len mem[_7343] + 32]
                                        else:
                                            mem[floor32(mem[_7343]) + _7343 + 196] = mem[floor32(mem[_7343]) + _7343 + -(mem[_7343] % 32) + 228 len mem[_7343] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7343], mem[_7343 + 196 len floor32(mem[_7343]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7247 = mem[(32 * idx + 1) + 128]
                                        _7527 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7527 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7527 + 36] = 0
                                        mem[_7527 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7527 + 100] = address(_7247)
                                        mem[_7527 + 132] = 128
                                        mem[_7527 + 164] = mem[_7527]
                                        s = 0
                                        while s < mem[_7527]:
                                            mem[_7527 + s + 196] = mem[_7527 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7527] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7247), 128, mem[_7527 + 164 len mem[_7527] + 32]
                                        else:
                                            mem[floor32(mem[_7527]) + _7527 + 196] = mem[floor32(mem[_7527]) + _7527 + -(mem[_7527] % 32) + 228 len mem[_7527] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7247), 128, mem[_7527], mem[_7527 + 196 len floor32(mem[_7527]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7344 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7344 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7344 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7344 + 68] = 0
                                        mem[_7344 + 100] = arg6
                                        mem[_7344 + 132] = 128
                                        mem[_7344 + 164] = mem[_7344]
                                        s = 0
                                        while s < mem[_7344]:
                                            mem[_7344 + s + 196] = mem[_7344 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7344] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7344 + 164 len mem[_7344] + 32]
                                        else:
                                            mem[floor32(mem[_7344]) + _7344 + 196] = mem[floor32(mem[_7344]) + _7344 + -(mem[_7344] % 32) + 228 len mem[_7344] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7344], mem[_7344 + 196 len floor32(mem[_7344]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7248 = mem[(32 * idx + 1) + 128]
                                        _7531 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7531 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7531 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7531 + 68] = 0
                                        mem[_7531 + 100] = address(_7248)
                                        mem[_7531 + 132] = 128
                                        mem[_7531 + 164] = mem[_7531]
                                        s = 0
                                        while s < mem[_7531]:
                                            mem[_7531 + s + 196] = mem[_7531 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7531] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7248), 128, mem[_7531 + 164 len mem[_7531] + 32]
                                        else:
                                            mem[floor32(mem[_7531]) + _7531 + 196] = mem[floor32(mem[_7531]) + _7531 + -(mem[_7531] % 32) + 228 len mem[_7531] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7248), 128, mem[_7531], mem[_7531 + 196 len floor32(mem[_7531]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7735 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7735 + 36] = 0
                                        mem[_7735 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7735 + 100] = arg6
                                        mem[_7735 + 132] = 128
                                        mem[_7735 + 164] = mem[_7735]
                                        s = 0
                                        while s < mem[_7735]:
                                            mem[_7735 + s + 196] = mem[_7735 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7735] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7735 + 164 len mem[_7735] + 32]
                                        else:
                                            mem[floor32(mem[_7735]) + _7735 + 196] = mem[floor32(mem[_7735]) + _7735 + -(mem[_7735] % 32) + 228 len mem[_7735] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7735], mem[_7735 + 196 len floor32(mem[_7735]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7535 = mem[(32 * idx + 1) + 128]
                                        _8011 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8011 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8011 + 36] = 0
                                        mem[_8011 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8011 + 100] = address(_7535)
                                        mem[_8011 + 132] = 128
                                        mem[_8011 + 164] = mem[_8011]
                                        s = 0
                                        while s < mem[_8011]:
                                            mem[_8011 + s + 196] = mem[_8011 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8011] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7535), 128, mem[_8011 + 164 len mem[_8011] + 32]
                                        else:
                                            mem[floor32(mem[_8011]) + _8011 + 196] = mem[floor32(mem[_8011]) + _8011 + -(mem[_8011] % 32) + 228 len mem[_8011] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7535), 128, mem[_8011], mem[_8011 + 196 len floor32(mem[_8011]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7736 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7736 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7736 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7736 + 68] = 0
                                        mem[_7736 + 100] = arg6
                                        mem[_7736 + 132] = 128
                                        mem[_7736 + 164] = mem[_7736]
                                        s = 0
                                        while s < mem[_7736]:
                                            mem[_7736 + s + 196] = mem[_7736 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7736] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7736 + 164 len mem[_7736] + 32]
                                        else:
                                            mem[floor32(mem[_7736]) + _7736 + 196] = mem[floor32(mem[_7736]) + _7736 + -(mem[_7736] % 32) + 228 len mem[_7736] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7736], mem[_7736 + 196 len floor32(mem[_7736]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7536 = mem[(32 * idx + 1) + 128]
                                        _8015 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8015 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8015 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8015 + 68] = 0
                                        mem[_8015 + 100] = address(_7536)
                                        mem[_8015 + 132] = 128
                                        mem[_8015 + 164] = mem[_8015]
                                        s = 0
                                        while s < mem[_8015]:
                                            mem[_8015 + s + 196] = mem[_8015 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8015] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7536), 128, mem[_8015 + 164 len mem[_8015] + 32]
                                        else:
                                            mem[floor32(mem[_8015]) + _8015 + 196] = mem[floor32(mem[_8015]) + _8015 + -(mem[_8015] % 32) + 228 len mem[_8015] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7536), 128, mem[_8015], mem[_8015 + 196 len floor32(mem[_8015]) + 32]
                        else:
                            require -_6442 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[32])) / -_6442 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7737 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7737 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7737 + 36] = 0
                                        mem[_7737 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7737 + 100] = arg6
                                        mem[_7737 + 132] = 128
                                        mem[_7737 + 164] = mem[_7737]
                                        s = 0
                                        while s < mem[_7737]:
                                            mem[_7737 + s + 196] = mem[_7737 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7737] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7737 + 164 len mem[_7737] + 32]
                                        else:
                                            mem[floor32(mem[_7737]) + _7737 + 196] = mem[floor32(mem[_7737]) + _7737 + -(mem[_7737] % 32) + 228 len mem[_7737] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7737], mem[_7737 + 196 len floor32(mem[_7737]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7537 = mem[(32 * idx + 1) + 128]
                                        _8019 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8019 + 36] = 0
                                        mem[_8019 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8019 + 100] = address(_7537)
                                        mem[_8019 + 132] = 128
                                        mem[_8019 + 164] = mem[_8019]
                                        s = 0
                                        while s < mem[_8019]:
                                            mem[_8019 + s + 196] = mem[_8019 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8019] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7537), 128, mem[_8019 + 164 len mem[_8019] + 32]
                                        else:
                                            mem[floor32(mem[_8019]) + _8019 + 196] = mem[floor32(mem[_8019]) + _8019 + -(mem[_8019] % 32) + 228 len mem[_8019] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_7537), 128, mem[_8019], mem[_8019 + 196 len floor32(mem[_8019]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7738 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7738 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7738 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7738 + 68] = 0
                                        mem[_7738 + 100] = arg6
                                        mem[_7738 + 132] = 128
                                        mem[_7738 + 164] = mem[_7738]
                                        s = 0
                                        while s < mem[_7738]:
                                            mem[_7738 + s + 196] = mem[_7738 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7738] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7738 + 164 len mem[_7738] + 32]
                                        else:
                                            mem[floor32(mem[_7738]) + _7738 + 196] = mem[floor32(mem[_7738]) + _7738 + -(mem[_7738] % 32) + 228 len mem[_7738] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7738], mem[_7738 + 196 len floor32(mem[_7738]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7538 = mem[(32 * idx + 1) + 128]
                                        _8023 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8023 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8023 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8023 + 68] = 0
                                        mem[_8023 + 100] = address(_7538)
                                        mem[_8023 + 132] = 128
                                        mem[_8023 + 164] = mem[_8023]
                                        s = 0
                                        while s < mem[_8023]:
                                            mem[_8023 + s + 196] = mem[_8023 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8023] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7538), 128, mem[_8023 + 164 len mem[_8023] + 32]
                                        else:
                                            mem[floor32(mem[_8023]) + _8023 + 196] = mem[floor32(mem[_8023]) + _8023 + -(mem[_8023] % 32) + 228 len mem[_8023] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7538), 128, mem[_8023], mem[_8023 + 196 len floor32(mem[_8023]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6442 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6453) == address(_6462):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8347 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8347 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8347 + 36] = 0
                                        mem[_8347 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8347 + 100] = arg6
                                        mem[_8347 + 132] = 128
                                        mem[_8347 + 164] = mem[_8347]
                                        s = 0
                                        while s < mem[_8347]:
                                            mem[_8347 + s + 196] = mem[_8347 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8347] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8347 + 164 len mem[_8347] + 32]
                                        else:
                                            mem[floor32(mem[_8347]) + _8347 + 196] = mem[floor32(mem[_8347]) + _8347 + -(mem[_8347] % 32) + 228 len mem[_8347] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8347], mem[_8347 + 196 len floor32(mem[_8347]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8027 = mem[(32 * idx + 1) + 128]
                                        _8637 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8637 + 36] = 0
                                        mem[_8637 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8637 + 100] = address(_8027)
                                        mem[_8637 + 132] = 128
                                        mem[_8637 + 164] = mem[_8637]
                                        s = 0
                                        while s < mem[_8637]:
                                            mem[_8637 + s + 196] = mem[_8637 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8637] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_8027), 128, mem[_8637 + 164 len mem[_8637] + 32]
                                        else:
                                            mem[floor32(mem[_8637]) + _8637 + 196] = mem[floor32(mem[_8637]) + _8637 + -(mem[_8637] % 32) + 228 len mem[_8637] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), address(_8027), 128, mem[_8637], mem[_8637 + 196 len floor32(mem[_8637]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8348 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8348 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8348 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8348 + 68] = 0
                                        mem[_8348 + 100] = arg6
                                        mem[_8348 + 132] = 128
                                        mem[_8348 + 164] = mem[_8348]
                                        s = 0
                                        while s < mem[_8348]:
                                            mem[_8348 + s + 196] = mem[_8348 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8348] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8348 + 164 len mem[_8348] + 32]
                                        else:
                                            mem[floor32(mem[_8348]) + _8348 + 196] = mem[floor32(mem[_8348]) + _8348 + -(mem[_8348] % 32) + 228 len mem[_8348] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8348], mem[_8348 + 196 len floor32(mem[_8348]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8028 = mem[(32 * idx + 1) + 128]
                                        _8641 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8641 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8641 + 68] = 0
                                        mem[_8641 + 100] = address(_8028)
                                        mem[_8641 + 132] = 128
                                        mem[_8641 + 164] = mem[_8641]
                                        s = 0
                                        while s < mem[_8641]:
                                            mem[_8641 + s + 196] = mem[_8641 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8641] % 32:
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8028), 128, mem[_8641 + 164 len mem[_8641] + 32]
                                        else:
                                            mem[floor32(mem[_8641]) + _8641 + 196] = mem[floor32(mem[_8641]) + _8641 + -(mem[_8641] % 32) + 228 len mem[_8641] % 32]
                                            require ext_code.size(address(_6423))
                                            call address(_6423).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6442 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6442 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6442 * ext_call.return_data[0]) + (_6442 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8028), 128, mem[_8641], mem[_8641 + 196 len floor32(mem[_8641]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 442 len 15]
            require arg5.length - 1 < arg5.length
            _3252 = mem[(32 * arg5.length - 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 329] = arg6
            require ext_code.size(address(_3252))
            staticcall address(_3252).0x70a08231 with:
                    gas gas_remaining wei
                   args arg6
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg5.length - 1:
                require idx < mem[96]
                _6427 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg3.length) + 128]
                _6447 = mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6455 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx + 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _6464 = mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 192]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6427)
                    require ext_code.size(address(_6455))
                    staticcall address(_6455).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6427)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6455) == address(_6455):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6447 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7349 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7349 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7349 + 36] = 0
                                        mem[_7349 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7349 + 100] = arg6
                                        mem[_7349 + 132] = 128
                                        mem[_7349 + 164] = mem[_7349]
                                        s = 0
                                        while s < mem[_7349]:
                                            mem[_7349 + s + 196] = mem[_7349 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7349] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7349 + 164 len mem[_7349] + 32]
                                        else:
                                            mem[floor32(mem[_7349]) + _7349 + 196] = mem[floor32(mem[_7349]) + _7349 + -(mem[_7349] % 32) + 228 len mem[_7349] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7349], mem[_7349 + 196 len floor32(mem[_7349]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7253 = mem[(32 * idx + 1) + 128]
                                        _7541 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7541 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7541 + 36] = 0
                                        mem[_7541 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7541 + 100] = address(_7253)
                                        mem[_7541 + 132] = 128
                                        mem[_7541 + 164] = mem[_7541]
                                        s = 0
                                        while s < mem[_7541]:
                                            mem[_7541 + s + 196] = mem[_7541 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7541] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7253), 128, mem[_7541 + 164 len mem[_7541] + 32]
                                        else:
                                            mem[floor32(mem[_7541]) + _7541 + 196] = mem[floor32(mem[_7541]) + _7541 + -(mem[_7541] % 32) + 228 len mem[_7541] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7253), 128, mem[_7541], mem[_7541 + 196 len floor32(mem[_7541]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7350 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7350 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7350 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7350 + 68] = 0
                                        mem[_7350 + 100] = arg6
                                        mem[_7350 + 132] = 128
                                        mem[_7350 + 164] = mem[_7350]
                                        s = 0
                                        while s < mem[_7350]:
                                            mem[_7350 + s + 196] = mem[_7350 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7350] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7350 + 164 len mem[_7350] + 32]
                                        else:
                                            mem[floor32(mem[_7350]) + _7350 + 196] = mem[floor32(mem[_7350]) + _7350 + -(mem[_7350] % 32) + 228 len mem[_7350] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7350], mem[_7350 + 196 len floor32(mem[_7350]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7254 = mem[(32 * idx + 1) + 128]
                                        _7545 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7545 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7545 + 68] = 0
                                        mem[_7545 + 100] = address(_7254)
                                        mem[_7545 + 132] = 128
                                        mem[_7545 + 164] = mem[_7545]
                                        s = 0
                                        while s < mem[_7545]:
                                            mem[_7545 + s + 196] = mem[_7545 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7545] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7254), 128, mem[_7545 + 164 len mem[_7545] + 32]
                                        else:
                                            mem[floor32(mem[_7545]) + _7545 + 196] = mem[floor32(mem[_7545]) + _7545 + -(mem[_7545] % 32) + 228 len mem[_7545] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7254), 128, mem[_7545], mem[_7545 + 196 len floor32(mem[_7545]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7747 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7747 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7747 + 36] = 0
                                        mem[_7747 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7747 + 100] = arg6
                                        mem[_7747 + 132] = 128
                                        mem[_7747 + 164] = mem[_7747]
                                        s = 0
                                        while s < mem[_7747]:
                                            mem[_7747 + s + 196] = mem[_7747 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7747] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7747 + 164 len mem[_7747] + 32]
                                        else:
                                            mem[floor32(mem[_7747]) + _7747 + 196] = mem[floor32(mem[_7747]) + _7747 + -(mem[_7747] % 32) + 228 len mem[_7747] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7747], mem[_7747 + 196 len floor32(mem[_7747]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7549 = mem[(32 * idx + 1) + 128]
                                        _8031 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8031 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8031 + 36] = 0
                                        mem[_8031 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_8031 + 100] = address(_7549)
                                        mem[_8031 + 132] = 128
                                        mem[_8031 + 164] = mem[_8031]
                                        s = 0
                                        while s < mem[_8031]:
                                            mem[_8031 + s + 196] = mem[_8031 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8031] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7549), 128, mem[_8031 + 164 len mem[_8031] + 32]
                                        else:
                                            mem[floor32(mem[_8031]) + _8031 + 196] = mem[floor32(mem[_8031]) + _8031 + -(mem[_8031] % 32) + 228 len mem[_8031] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7549), 128, mem[_8031], mem[_8031 + 196 len floor32(mem[_8031]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7748 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7748 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7748 + 68] = 0
                                        mem[_7748 + 100] = arg6
                                        mem[_7748 + 132] = 128
                                        mem[_7748 + 164] = mem[_7748]
                                        s = 0
                                        while s < mem[_7748]:
                                            mem[_7748 + s + 196] = mem[_7748 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7748] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7748 + 164 len mem[_7748] + 32]
                                        else:
                                            mem[floor32(mem[_7748]) + _7748 + 196] = mem[floor32(mem[_7748]) + _7748 + -(mem[_7748] % 32) + 228 len mem[_7748] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7748], mem[_7748 + 196 len floor32(mem[_7748]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7550 = mem[(32 * idx + 1) + 128]
                                        _8035 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8035 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8035 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_8035 + 68] = 0
                                        mem[_8035 + 100] = address(_7550)
                                        mem[_8035 + 132] = 128
                                        mem[_8035 + 164] = mem[_8035]
                                        s = 0
                                        while s < mem[_8035]:
                                            mem[_8035 + s + 196] = mem[_8035 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8035] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7550), 128, mem[_8035 + 164 len mem[_8035] + 32]
                                        else:
                                            mem[floor32(mem[_8035]) + _8035 + 196] = mem[floor32(mem[_8035]) + _8035 + -(mem[_8035] % 32) + 228 len mem[_8035] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7550), 128, mem[_8035], mem[_8035 + 196 len floor32(mem[_8035]) + 32]
                        else:
                            require -_6447 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) / -_6447 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7749 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7749 + 36] = 0
                                        mem[_7749 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7749 + 100] = arg6
                                        mem[_7749 + 132] = 128
                                        mem[_7749 + 164] = mem[_7749]
                                        s = 0
                                        while s < mem[_7749]:
                                            mem[_7749 + s + 196] = mem[_7749 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7749] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7749 + 164 len mem[_7749] + 32]
                                        else:
                                            mem[floor32(mem[_7749]) + _7749 + 196] = mem[floor32(mem[_7749]) + _7749 + -(mem[_7749] % 32) + 228 len mem[_7749] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7749], mem[_7749 + 196 len floor32(mem[_7749]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7551 = mem[(32 * idx + 1) + 128]
                                        _8039 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8039 + 36] = 0
                                        mem[_8039 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8039 + 100] = address(_7551)
                                        mem[_8039 + 132] = 128
                                        mem[_8039 + 164] = mem[_8039]
                                        s = 0
                                        while s < mem[_8039]:
                                            mem[_8039 + s + 196] = mem[_8039 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8039] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_7551), 128, mem[_8039 + 164 len mem[_8039] + 32]
                                        else:
                                            mem[floor32(mem[_8039]) + _8039 + 196] = mem[floor32(mem[_8039]) + _8039 + -(mem[_8039] % 32) + 228 len mem[_8039] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_7551), 128, mem[_8039], mem[_8039 + 196 len floor32(mem[_8039]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7750 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7750 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7750 + 68] = 0
                                        mem[_7750 + 100] = arg6
                                        mem[_7750 + 132] = 128
                                        mem[_7750 + 164] = mem[_7750]
                                        s = 0
                                        while s < mem[_7750]:
                                            mem[_7750 + s + 196] = mem[_7750 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7750] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7750 + 164 len mem[_7750] + 32]
                                        else:
                                            mem[floor32(mem[_7750]) + _7750 + 196] = mem[floor32(mem[_7750]) + _7750 + -(mem[_7750] % 32) + 228 len mem[_7750] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7750], mem[_7750 + 196 len floor32(mem[_7750]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7552 = mem[(32 * idx + 1) + 128]
                                        _8043 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8043 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8043 + 68] = 0
                                        mem[_8043 + 100] = address(_7552)
                                        mem[_8043 + 132] = 128
                                        mem[_8043 + 164] = mem[_8043]
                                        s = 0
                                        while s < mem[_8043]:
                                            mem[_8043 + s + 196] = mem[_8043 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8043] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7552), 128, mem[_8043 + 164 len mem[_8043] + 32]
                                        else:
                                            mem[floor32(mem[_8043]) + _8043 + 196] = mem[floor32(mem[_8043]) + _8043 + -(mem[_8043] % 32) + 228 len mem[_8043] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7552), 128, mem[_8043], mem[_8043 + 196 len floor32(mem[_8043]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8367 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8367 + 36] = 0
                                        mem[_8367 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8367 + 100] = arg6
                                        mem[_8367 + 132] = 128
                                        mem[_8367 + 164] = mem[_8367]
                                        s = 0
                                        while s < mem[_8367]:
                                            mem[_8367 + s + 196] = mem[_8367 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8367] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8367 + 164 len mem[_8367] + 32]
                                        else:
                                            mem[floor32(mem[_8367]) + _8367 + 196] = mem[floor32(mem[_8367]) + _8367 + -(mem[_8367] % 32) + 228 len mem[_8367] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8367], mem[_8367 + 196 len floor32(mem[_8367]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8047 = mem[(32 * idx + 1) + 128]
                                        _8655 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8655 + 36] = 0
                                        mem[_8655 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8655 + 100] = address(_8047)
                                        mem[_8655 + 132] = 128
                                        mem[_8655 + 164] = mem[_8655]
                                        s = 0
                                        while s < mem[_8655]:
                                            mem[_8655 + s + 196] = mem[_8655 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8655] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_8047), 128, mem[_8655 + 164 len mem[_8655] + 32]
                                        else:
                                            mem[floor32(mem[_8655]) + _8655 + 196] = mem[floor32(mem[_8655]) + _8655 + -(mem[_8655] % 32) + 228 len mem[_8655] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_8047), 128, mem[_8655], mem[_8655 + 196 len floor32(mem[_8655]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8368 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8368 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8368 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8368 + 68] = 0
                                        mem[_8368 + 100] = arg6
                                        mem[_8368 + 132] = 128
                                        mem[_8368 + 164] = mem[_8368]
                                        s = 0
                                        while s < mem[_8368]:
                                            mem[_8368 + s + 196] = mem[_8368 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8368] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8368 + 164 len mem[_8368] + 32]
                                        else:
                                            mem[floor32(mem[_8368]) + _8368 + 196] = mem[floor32(mem[_8368]) + _8368 + -(mem[_8368] % 32) + 228 len mem[_8368] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8368], mem[_8368 + 196 len floor32(mem[_8368]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8048 = mem[(32 * idx + 1) + 128]
                                        _8659 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8659 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8659 + 68] = 0
                                        mem[_8659 + 100] = address(_8048)
                                        mem[_8659 + 132] = 128
                                        mem[_8659 + 164] = mem[_8659]
                                        s = 0
                                        while s < mem[_8659]:
                                            mem[_8659 + s + 196] = mem[_8659 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8659] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8048), 128, mem[_8659 + 164 len mem[_8659] + 32]
                                        else:
                                            mem[floor32(mem[_8659]) + _8659 + 196] = mem[floor32(mem[_8659]) + _8659 + -(mem[_8659] % 32) + 228 len mem[_8659] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8048), 128, mem[_8659], mem[_8659 + 196 len floor32(mem[_8659]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6447 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7355 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7355 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7355 + 36] = 0
                                        mem[_7355 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7355 + 100] = arg6
                                        mem[_7355 + 132] = 128
                                        mem[_7355 + 164] = mem[_7355]
                                        s = 0
                                        while s < mem[_7355]:
                                            mem[_7355 + s + 196] = mem[_7355 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7355] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7355 + 164 len mem[_7355] + 32]
                                        else:
                                            mem[floor32(mem[_7355]) + _7355 + 196] = mem[floor32(mem[_7355]) + _7355 + -(mem[_7355] % 32) + 228 len mem[_7355] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7355], mem[_7355 + 196 len floor32(mem[_7355]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7259 = mem[(32 * idx + 1) + 128]
                                        _7555 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7555 + 36] = 0
                                        mem[_7555 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7555 + 100] = address(_7259)
                                        mem[_7555 + 132] = 128
                                        mem[_7555 + 164] = mem[_7555]
                                        s = 0
                                        while s < mem[_7555]:
                                            mem[_7555 + s + 196] = mem[_7555 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7555] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7259), 128, mem[_7555 + 164 len mem[_7555] + 32]
                                        else:
                                            mem[floor32(mem[_7555]) + _7555 + 196] = mem[floor32(mem[_7555]) + _7555 + -(mem[_7555] % 32) + 228 len mem[_7555] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7259), 128, mem[_7555], mem[_7555 + 196 len floor32(mem[_7555]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7356 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7356 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7356 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7356 + 68] = 0
                                        mem[_7356 + 100] = arg6
                                        mem[_7356 + 132] = 128
                                        mem[_7356 + 164] = mem[_7356]
                                        s = 0
                                        while s < mem[_7356]:
                                            mem[_7356 + s + 196] = mem[_7356 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7356] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7356 + 164 len mem[_7356] + 32]
                                        else:
                                            mem[floor32(mem[_7356]) + _7356 + 196] = mem[floor32(mem[_7356]) + _7356 + -(mem[_7356] % 32) + 228 len mem[_7356] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7356], mem[_7356 + 196 len floor32(mem[_7356]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7260 = mem[(32 * idx + 1) + 128]
                                        _7559 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7559 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7559 + 68] = 0
                                        mem[_7559 + 100] = address(_7260)
                                        mem[_7559 + 132] = 128
                                        mem[_7559 + 164] = mem[_7559]
                                        s = 0
                                        while s < mem[_7559]:
                                            mem[_7559 + s + 196] = mem[_7559 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7559] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7260), 128, mem[_7559 + 164 len mem[_7559] + 32]
                                        else:
                                            mem[floor32(mem[_7559]) + _7559 + 196] = mem[floor32(mem[_7559]) + _7559 + -(mem[_7559] % 32) + 228 len mem[_7559] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7260), 128, mem[_7559], mem[_7559 + 196 len floor32(mem[_7559]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7759 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7759 + 36] = 0
                                        mem[_7759 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7759 + 100] = arg6
                                        mem[_7759 + 132] = 128
                                        mem[_7759 + 164] = mem[_7759]
                                        s = 0
                                        while s < mem[_7759]:
                                            mem[_7759 + s + 196] = mem[_7759 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7759] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7759 + 164 len mem[_7759] + 32]
                                        else:
                                            mem[floor32(mem[_7759]) + _7759 + 196] = mem[floor32(mem[_7759]) + _7759 + -(mem[_7759] % 32) + 228 len mem[_7759] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7759], mem[_7759 + 196 len floor32(mem[_7759]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7563 = mem[(32 * idx + 1) + 128]
                                        _8051 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8051 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8051 + 36] = 0
                                        mem[_8051 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8051 + 100] = address(_7563)
                                        mem[_8051 + 132] = 128
                                        mem[_8051 + 164] = mem[_8051]
                                        s = 0
                                        while s < mem[_8051]:
                                            mem[_8051 + s + 196] = mem[_8051 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8051] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7563), 128, mem[_8051 + 164 len mem[_8051] + 32]
                                        else:
                                            mem[floor32(mem[_8051]) + _8051 + 196] = mem[floor32(mem[_8051]) + _8051 + -(mem[_8051] % 32) + 228 len mem[_8051] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7563), 128, mem[_8051], mem[_8051 + 196 len floor32(mem[_8051]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7760 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7760 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7760 + 68] = 0
                                        mem[_7760 + 100] = arg6
                                        mem[_7760 + 132] = 128
                                        mem[_7760 + 164] = mem[_7760]
                                        s = 0
                                        while s < mem[_7760]:
                                            mem[_7760 + s + 196] = mem[_7760 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7760] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7760 + 164 len mem[_7760] + 32]
                                        else:
                                            mem[floor32(mem[_7760]) + _7760 + 196] = mem[floor32(mem[_7760]) + _7760 + -(mem[_7760] % 32) + 228 len mem[_7760] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7760], mem[_7760 + 196 len floor32(mem[_7760]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7564 = mem[(32 * idx + 1) + 128]
                                        _8055 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8055 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8055 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8055 + 68] = 0
                                        mem[_8055 + 100] = address(_7564)
                                        mem[_8055 + 132] = 128
                                        mem[_8055 + 164] = mem[_8055]
                                        s = 0
                                        while s < mem[_8055]:
                                            mem[_8055 + s + 196] = mem[_8055 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8055] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7564), 128, mem[_8055 + 164 len mem[_8055] + 32]
                                        else:
                                            mem[floor32(mem[_8055]) + _8055 + 196] = mem[floor32(mem[_8055]) + _8055 + -(mem[_8055] % 32) + 228 len mem[_8055] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7564), 128, mem[_8055], mem[_8055 + 196 len floor32(mem[_8055]) + 32]
                        else:
                            require -_6447 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[32])) / -_6447 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7761 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7761 + 36] = 0
                                        mem[_7761 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7761 + 100] = arg6
                                        mem[_7761 + 132] = 128
                                        mem[_7761 + 164] = mem[_7761]
                                        s = 0
                                        while s < mem[_7761]:
                                            mem[_7761 + s + 196] = mem[_7761 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7761] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7761 + 164 len mem[_7761] + 32]
                                        else:
                                            mem[floor32(mem[_7761]) + _7761 + 196] = mem[floor32(mem[_7761]) + _7761 + -(mem[_7761] % 32) + 228 len mem[_7761] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7761], mem[_7761 + 196 len floor32(mem[_7761]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7565 = mem[(32 * idx + 1) + 128]
                                        _8059 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8059 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8059 + 36] = 0
                                        mem[_8059 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8059 + 100] = address(_7565)
                                        mem[_8059 + 132] = 128
                                        mem[_8059 + 164] = mem[_8059]
                                        s = 0
                                        while s < mem[_8059]:
                                            mem[_8059 + s + 196] = mem[_8059 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8059] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_7565), 128, mem[_8059 + 164 len mem[_8059] + 32]
                                        else:
                                            mem[floor32(mem[_8059]) + _8059 + 196] = mem[floor32(mem[_8059]) + _8059 + -(mem[_8059] % 32) + 228 len mem[_8059] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_7565), 128, mem[_8059], mem[_8059 + 196 len floor32(mem[_8059]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7762 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7762 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7762 + 68] = 0
                                        mem[_7762 + 100] = arg6
                                        mem[_7762 + 132] = 128
                                        mem[_7762 + 164] = mem[_7762]
                                        s = 0
                                        while s < mem[_7762]:
                                            mem[_7762 + s + 196] = mem[_7762 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7762] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7762 + 164 len mem[_7762] + 32]
                                        else:
                                            mem[floor32(mem[_7762]) + _7762 + 196] = mem[floor32(mem[_7762]) + _7762 + -(mem[_7762] % 32) + 228 len mem[_7762] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7762], mem[_7762 + 196 len floor32(mem[_7762]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7566 = mem[(32 * idx + 1) + 128]
                                        _8063 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8063 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8063 + 68] = 0
                                        mem[_8063 + 100] = address(_7566)
                                        mem[_8063 + 132] = 128
                                        mem[_8063 + 164] = mem[_8063]
                                        s = 0
                                        while s < mem[_8063]:
                                            mem[_8063 + s + 196] = mem[_8063 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8063] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7566), 128, mem[_8063 + 164 len mem[_8063] + 32]
                                        else:
                                            mem[floor32(mem[_8063]) + _8063 + 196] = mem[floor32(mem[_8063]) + _8063 + -(mem[_8063] % 32) + 228 len mem[_8063] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7566), 128, mem[_8063], mem[_8063 + 196 len floor32(mem[_8063]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6455) == address(_6455):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8387 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8387 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8387 + 36] = 0
                                        mem[_8387 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8387 + 100] = arg6
                                        mem[_8387 + 132] = 128
                                        mem[_8387 + 164] = mem[_8387]
                                        s = 0
                                        while s < mem[_8387]:
                                            mem[_8387 + s + 196] = mem[_8387 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8387] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8387 + 164 len mem[_8387] + 32]
                                        else:
                                            mem[floor32(mem[_8387]) + _8387 + 196] = mem[floor32(mem[_8387]) + _8387 + -(mem[_8387] % 32) + 228 len mem[_8387] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8387], mem[_8387 + 196 len floor32(mem[_8387]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8067 = mem[(32 * idx + 1) + 128]
                                        _8673 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8673 + 36] = 0
                                        mem[_8673 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8673 + 100] = address(_8067)
                                        mem[_8673 + 132] = 128
                                        mem[_8673 + 164] = mem[_8673]
                                        s = 0
                                        while s < mem[_8673]:
                                            mem[_8673 + s + 196] = mem[_8673 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8673] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_8067), 128, mem[_8673 + 164 len mem[_8673] + 32]
                                        else:
                                            mem[floor32(mem[_8673]) + _8673 + 196] = mem[floor32(mem[_8673]) + _8673 + -(mem[_8673] % 32) + 228 len mem[_8673] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_8067), 128, mem[_8673], mem[_8673 + 196 len floor32(mem[_8673]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8388 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8388 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8388 + 68] = 0
                                        mem[_8388 + 100] = arg6
                                        mem[_8388 + 132] = 128
                                        mem[_8388 + 164] = mem[_8388]
                                        s = 0
                                        while s < mem[_8388]:
                                            mem[_8388 + s + 196] = mem[_8388 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8388] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8388 + 164 len mem[_8388] + 32]
                                        else:
                                            mem[floor32(mem[_8388]) + _8388 + 196] = mem[floor32(mem[_8388]) + _8388 + -(mem[_8388] % 32) + 228 len mem[_8388] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8388], mem[_8388 + 196 len floor32(mem[_8388]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8068 = mem[(32 * idx + 1) + 128]
                                        _8677 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8677 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8677 + 68] = 0
                                        mem[_8677 + 100] = address(_8068)
                                        mem[_8677 + 132] = 128
                                        mem[_8677 + 164] = mem[_8677]
                                        s = 0
                                        while s < mem[_8677]:
                                            mem[_8677 + s + 196] = mem[_8677 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8677] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8068), 128, mem[_8677 + 164 len mem[_8677] + 32]
                                        else:
                                            mem[floor32(mem[_8677]) + _8677 + 196] = mem[floor32(mem[_8677]) + _8677 + -(mem[_8677] % 32) + 228 len mem[_8677] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8068), 128, mem[_8677], mem[_8677 + 196 len floor32(mem[_8677]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_6427)
                    require ext_code.size(address(_6455))
                    staticcall address(_6455).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6427)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_6455) == address(_6464):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6447 + 100000:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7361 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7361 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7361 + 36] = 0
                                        mem[_7361 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7361 + 100] = arg6
                                        mem[_7361 + 132] = 128
                                        mem[_7361 + 164] = mem[_7361]
                                        s = 0
                                        while s < mem[_7361]:
                                            mem[_7361 + s + 196] = mem[_7361 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7361] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7361 + 164 len mem[_7361] + 32]
                                        else:
                                            mem[floor32(mem[_7361]) + _7361 + 196] = mem[floor32(mem[_7361]) + _7361 + -(mem[_7361] % 32) + 228 len mem[_7361] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7361], mem[_7361 + 196 len floor32(mem[_7361]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7265 = mem[(32 * idx + 1) + 128]
                                        _7569 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7569 + 36] = 0
                                        mem[_7569 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7569 + 100] = address(_7265)
                                        mem[_7569 + 132] = 128
                                        mem[_7569 + 164] = mem[_7569]
                                        s = 0
                                        while s < mem[_7569]:
                                            mem[_7569 + s + 196] = mem[_7569 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7569] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7265), 128, mem[_7569 + 164 len mem[_7569] + 32]
                                        else:
                                            mem[floor32(mem[_7569]) + _7569 + 196] = mem[floor32(mem[_7569]) + _7569 + -(mem[_7569] % 32) + 228 len mem[_7569] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7265), 128, mem[_7569], mem[_7569 + 196 len floor32(mem[_7569]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7362 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7362 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7362 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7362 + 68] = 0
                                        mem[_7362 + 100] = arg6
                                        mem[_7362 + 132] = 128
                                        mem[_7362 + 164] = mem[_7362]
                                        s = 0
                                        while s < mem[_7362]:
                                            mem[_7362 + s + 196] = mem[_7362 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7362] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7362 + 164 len mem[_7362] + 32]
                                        else:
                                            mem[floor32(mem[_7362]) + _7362 + 196] = mem[floor32(mem[_7362]) + _7362 + -(mem[_7362] % 32) + 228 len mem[_7362] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7362], mem[_7362 + 196 len floor32(mem[_7362]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7266 = mem[(32 * idx + 1) + 128]
                                        _7573 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7573 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7573 + 68] = 0
                                        mem[_7573 + 100] = address(_7266)
                                        mem[_7573 + 132] = 128
                                        mem[_7573 + 164] = mem[_7573]
                                        s = 0
                                        while s < mem[_7573]:
                                            mem[_7573 + s + 196] = mem[_7573 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7573] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7266), 128, mem[_7573 + 164 len mem[_7573] + 32]
                                        else:
                                            mem[floor32(mem[_7573]) + _7573 + 196] = mem[floor32(mem[_7573]) + _7573 + -(mem[_7573] % 32) + 228 len mem[_7573] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7266), 128, mem[_7573], mem[_7573 + 196 len floor32(mem[_7573]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[0])
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7771 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7771 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7771 + 36] = 0
                                        mem[_7771 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7771 + 100] = arg6
                                        mem[_7771 + 132] = 128
                                        mem[_7771 + 164] = mem[_7771]
                                        s = 0
                                        while s < mem[_7771]:
                                            mem[_7771 + s + 196] = mem[_7771 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7771] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7771 + 164 len mem[_7771] + 32]
                                        else:
                                            mem[floor32(mem[_7771]) + _7771 + 196] = mem[floor32(mem[_7771]) + _7771 + -(mem[_7771] % 32) + 228 len mem[_7771] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(arg6), 128, mem[_7771], mem[_7771 + 196 len floor32(mem[_7771]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7577 = mem[(32 * idx + 1) + 128]
                                        _8071 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8071 + 36] = 0
                                        mem[_8071 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_8071 + 100] = address(_7577)
                                        mem[_8071 + 132] = 128
                                        mem[_8071 + 164] = mem[_8071]
                                        s = 0
                                        while s < mem[_8071]:
                                            mem[_8071 + s + 196] = mem[_8071 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8071] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7577), 128, mem[_8071 + 164 len mem[_8071] + 32]
                                        else:
                                            mem[floor32(mem[_8071]) + _8071 + 196] = mem[floor32(mem[_8071]) + _8071 + -(mem[_8071] % 32) + 228 len mem[_8071] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), address(_7577), 128, mem[_8071], mem[_8071 + 196 len floor32(mem[_8071]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7772 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7772 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_7772 + 68] = 0
                                        mem[_7772 + 100] = arg6
                                        mem[_7772 + 132] = 128
                                        mem[_7772 + 164] = mem[_7772]
                                        s = 0
                                        while s < mem[_7772]:
                                            mem[_7772 + s + 196] = mem[_7772 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7772] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7772 + 164 len mem[_7772] + 32]
                                        else:
                                            mem[floor32(mem[_7772]) + _7772 + 196] = mem[floor32(mem[_7772]) + _7772 + -(mem[_7772] % 32) + 228 len mem[_7772] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(arg6), 128, mem[_7772], mem[_7772 + 196 len floor32(mem[_7772]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7578 = mem[(32 * idx + 1) + 128]
                                        _8075 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8075 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[0])
                                        mem[_8075 + 68] = 0
                                        mem[_8075 + 100] = address(_7578)
                                        mem[_8075 + 132] = 128
                                        mem[_8075 + 164] = mem[_8075]
                                        s = 0
                                        while s < mem[_8075]:
                                            mem[_8075 + s + 196] = mem[_8075 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8075] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7578), 128, mem[_8075 + 164 len mem[_8075] + 32]
                                        else:
                                            mem[floor32(mem[_8075]) + _8075 + 196] = mem[floor32(mem[_8075]) + _8075 + -(mem[_8075] % 32) + 228 len mem[_8075] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_7578), 128, mem[_8075], mem[_8075 + 196 len floor32(mem[_8075]) + 32]
                        else:
                            require -_6447 + 100000
                            if (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) / -_6447 + 100000 != Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7773 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7773 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7773 + 36] = 0
                                        mem[_7773 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7773 + 100] = arg6
                                        mem[_7773 + 132] = 128
                                        mem[_7773 + 164] = mem[_7773]
                                        s = 0
                                        while s < mem[_7773]:
                                            mem[_7773 + s + 196] = mem[_7773 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7773] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7773 + 164 len mem[_7773] + 32]
                                        else:
                                            mem[floor32(mem[_7773]) + _7773 + 196] = mem[floor32(mem[_7773]) + _7773 + -(mem[_7773] % 32) + 228 len mem[_7773] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_7773], mem[_7773 + 196 len floor32(mem[_7773]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7579 = mem[(32 * idx + 1) + 128]
                                        _8079 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8079 + 36] = 0
                                        mem[_8079 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8079 + 100] = address(_7579)
                                        mem[_8079 + 132] = 128
                                        mem[_8079 + 164] = mem[_8079]
                                        s = 0
                                        while s < mem[_8079]:
                                            mem[_8079 + s + 196] = mem[_8079 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8079] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_7579), 128, mem[_8079 + 164 len mem[_8079] + 32]
                                        else:
                                            mem[floor32(mem[_8079]) + _8079 + 196] = mem[floor32(mem[_8079]) + _8079 + -(mem[_8079] % 32) + 228 len mem[_8079] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_7579), 128, mem[_8079], mem[_8079 + 196 len floor32(mem[_8079]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7774 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7774 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7774 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_7774 + 68] = 0
                                        mem[_7774 + 100] = arg6
                                        mem[_7774 + 132] = 128
                                        mem[_7774 + 164] = mem[_7774]
                                        s = 0
                                        while s < mem[_7774]:
                                            mem[_7774 + s + 196] = mem[_7774 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7774] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7774 + 164 len mem[_7774] + 32]
                                        else:
                                            mem[floor32(mem[_7774]) + _7774 + 196] = mem[floor32(mem[_7774]) + _7774 + -(mem[_7774] % 32) + 228 len mem[_7774] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_7774], mem[_7774 + 196 len floor32(mem[_7774]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7580 = mem[(32 * idx + 1) + 128]
                                        _8083 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8083 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8083 + 68] = 0
                                        mem[_8083 + 100] = address(_7580)
                                        mem[_8083 + 132] = 128
                                        mem[_8083 + 164] = mem[_8083]
                                        s = 0
                                        while s < mem[_8083]:
                                            mem[_8083 + s + 196] = mem[_8083 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8083] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7580), 128, mem[_8083 + 164 len mem[_8083] + 32]
                                        else:
                                            mem[floor32(mem[_8083]) + _8083 + 196] = mem[floor32(mem[_8083]) + _8083 + -(mem[_8083] % 32) + 228 len mem[_8083] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_7580), 128, mem[_8083], mem[_8083 + 196 len floor32(mem[_8083]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (100000 * Mask(144, 112, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[0]) / 100000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])) < 100000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8407 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8407 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8407 + 36] = 0
                                        mem[_8407 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8407 + 100] = arg6
                                        mem[_8407 + 132] = 128
                                        mem[_8407 + 164] = mem[_8407]
                                        s = 0
                                        while s < mem[_8407]:
                                            mem[_8407 + s + 196] = mem[_8407 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8407] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8407 + 164 len mem[_8407] + 32]
                                        else:
                                            mem[floor32(mem[_8407]) + _8407 + 196] = mem[floor32(mem[_8407]) + _8407 + -(mem[_8407] % 32) + 228 len mem[_8407] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(arg6), 128, mem[_8407], mem[_8407 + 196 len floor32(mem[_8407]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8087 = mem[(32 * idx + 1) + 128]
                                        _8691 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8691 + 36] = 0
                                        mem[_8691 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8691 + 100] = address(_8087)
                                        mem[_8691 + 132] = 128
                                        mem[_8691 + 164] = mem[_8691]
                                        s = 0
                                        while s < mem[_8691]:
                                            mem[_8691 + s + 196] = mem[_8691 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8691] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_8087), 128, mem[_8691 + 164 len mem[_8691] + 32]
                                        else:
                                            mem[floor32(mem[_8691]) + _8691 + 196] = mem[floor32(mem[_8691]) + _8691 + -(mem[_8691] % 32) + 228 len mem[_8691] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), address(_8087), 128, mem[_8691], mem[_8691 + 196 len floor32(mem[_8691]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8408 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8408 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8408 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8408 + 68] = 0
                                        mem[_8408 + 100] = arg6
                                        mem[_8408 + 132] = 128
                                        mem[_8408 + 164] = mem[_8408]
                                        s = 0
                                        while s < mem[_8408]:
                                            mem[_8408 + s + 196] = mem[_8408 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8408] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8408 + 164 len mem[_8408] + 32]
                                        else:
                                            mem[floor32(mem[_8408]) + _8408 + 196] = mem[floor32(mem[_8408]) + _8408 + -(mem[_8408] % 32) + 228 len mem[_8408] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg6), 128, mem[_8408], mem[_8408 + 196 len floor32(mem[_8408]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8088 = mem[(32 * idx + 1) + 128]
                                        _8695 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8695 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[_8695 + 68] = 0
                                        mem[_8695 + 100] = address(_8088)
                                        mem[_8695 + 132] = 128
                                        mem[_8695 + 164] = mem[_8695]
                                        s = 0
                                        while s < mem[_8695]:
                                            mem[_8695 + s + 196] = mem[_8695 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8695] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8088), 128, mem[_8695 + 164 len mem[_8695] + 32]
                                        else:
                                            mem[floor32(mem[_8695]) + _8695 + 196] = mem[floor32(mem[_8695]) + _8695 + -(mem[_8695] % 32) + 228 len mem[_8695] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (100000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[0])), 0, address(_8088), 128, mem[_8695], mem[_8695 + 196 len floor32(mem[_8695]) + 32]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if not -_6447 + 100000:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7367 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7367 + 36] = 0
                                        mem[_7367 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7367 + 100] = arg6
                                        mem[_7367 + 132] = 128
                                        mem[_7367 + 164] = mem[_7367]
                                        s = 0
                                        while s < mem[_7367]:
                                            mem[_7367 + s + 196] = mem[_7367 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7367] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7367 + 164 len mem[_7367] + 32]
                                        else:
                                            mem[floor32(mem[_7367]) + _7367 + 196] = mem[floor32(mem[_7367]) + _7367 + -(mem[_7367] % 32) + 228 len mem[_7367] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7367], mem[_7367 + 196 len floor32(mem[_7367]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7271 = mem[(32 * idx + 1) + 128]
                                        _7583 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7583 + 36] = 0
                                        mem[_7583 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7583 + 100] = address(_7271)
                                        mem[_7583 + 132] = 128
                                        mem[_7583 + 164] = mem[_7583]
                                        s = 0
                                        while s < mem[_7583]:
                                            mem[_7583 + s + 196] = mem[_7583 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7583] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7271), 128, mem[_7583 + 164 len mem[_7583] + 32]
                                        else:
                                            mem[floor32(mem[_7583]) + _7583 + 196] = mem[floor32(mem[_7583]) + _7583 + -(mem[_7583] % 32) + 228 len mem[_7583] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7271), 128, mem[_7583], mem[_7583 + 196 len floor32(mem[_7583]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7368 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7368 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7368 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7368 + 68] = 0
                                        mem[_7368 + 100] = arg6
                                        mem[_7368 + 132] = 128
                                        mem[_7368 + 164] = mem[_7368]
                                        s = 0
                                        while s < mem[_7368]:
                                            mem[_7368 + s + 196] = mem[_7368 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7368] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7368 + 164 len mem[_7368] + 32]
                                        else:
                                            mem[floor32(mem[_7368]) + _7368 + 196] = mem[floor32(mem[_7368]) + _7368 + -(mem[_7368] % 32) + 228 len mem[_7368] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7368], mem[_7368 + 196 len floor32(mem[_7368]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7272 = mem[(32 * idx + 1) + 128]
                                        _7587 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7587 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7587 + 68] = 0
                                        mem[_7587 + 100] = address(_7272)
                                        mem[_7587 + 132] = 128
                                        mem[_7587 + 164] = mem[_7587]
                                        s = 0
                                        while s < mem[_7587]:
                                            mem[_7587 + s + 196] = mem[_7587 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7587] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7272), 128, mem[_7587 + 164 len mem[_7587] + 32]
                                        else:
                                            mem[floor32(mem[_7587]) + _7587 + 196] = mem[floor32(mem[_7587]) + _7587 + -(mem[_7587] % 32) + 228 len mem[_7587] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7272), 128, mem[_7587], mem[_7587 + 196 len floor32(mem[_7587]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require 100000 * Mask(112, 0, ext_call.return_data[32])
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7783 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7783 + 36] = 0
                                        mem[_7783 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7783 + 100] = arg6
                                        mem[_7783 + 132] = 128
                                        mem[_7783 + 164] = mem[_7783]
                                        s = 0
                                        while s < mem[_7783]:
                                            mem[_7783 + s + 196] = mem[_7783 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7783] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7783 + 164 len mem[_7783] + 32]
                                        else:
                                            mem[floor32(mem[_7783]) + _7783 + 196] = mem[floor32(mem[_7783]) + _7783 + -(mem[_7783] % 32) + 228 len mem[_7783] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(arg6), 128, mem[_7783], mem[_7783 + 196 len floor32(mem[_7783]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7591 = mem[(32 * idx + 1) + 128]
                                        _8091 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8091 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8091 + 36] = 0
                                        mem[_8091 + 68] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8091 + 100] = address(_7591)
                                        mem[_8091 + 132] = 128
                                        mem[_8091 + 164] = mem[_8091]
                                        s = 0
                                        while s < mem[_8091]:
                                            mem[_8091 + s + 196] = mem[_8091 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8091] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7591), 128, mem[_8091 + 164 len mem[_8091] + 32]
                                        else:
                                            mem[floor32(mem[_8091]) + _8091 + 196] = mem[floor32(mem[_8091]) + _8091 + -(mem[_8091] % 32) + 228 len mem[_8091] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), address(_7591), 128, mem[_8091], mem[_8091 + 196 len floor32(mem[_8091]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7784 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7784 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_7784 + 68] = 0
                                        mem[_7784 + 100] = arg6
                                        mem[_7784 + 132] = 128
                                        mem[_7784 + 164] = mem[_7784]
                                        s = 0
                                        while s < mem[_7784]:
                                            mem[_7784 + s + 196] = mem[_7784 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7784] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7784 + 164 len mem[_7784] + 32]
                                        else:
                                            mem[floor32(mem[_7784]) + _7784 + 196] = mem[floor32(mem[_7784]) + _7784 + -(mem[_7784] % 32) + 228 len mem[_7784] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg6), 128, mem[_7784], mem[_7784 + 196 len floor32(mem[_7784]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7592 = mem[(32 * idx + 1) + 128]
                                        _8095 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8095 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8095 + 36] = 0 / 100000 * Mask(112, 0, ext_call.return_data[32])
                                        mem[_8095 + 68] = 0
                                        mem[_8095 + 100] = address(_7592)
                                        mem[_8095 + 132] = 128
                                        mem[_8095 + 164] = mem[_8095]
                                        s = 0
                                        while s < mem[_8095]:
                                            mem[_8095 + s + 196] = mem[_8095 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8095] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7592), 128, mem[_8095 + 164 len mem[_8095] + 32]
                                        else:
                                            mem[floor32(mem[_8095]) + _8095 + 196] = mem[floor32(mem[_8095]) + _8095 + -(mem[_8095] % 32) + 228 len mem[_8095] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / 100000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_7592), 128, mem[_8095], mem[_8095 + 196 len floor32(mem[_8095]) + 32]
                        else:
                            require -_6447 + 100000
                            if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[32])) / -_6447 + 100000 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7785 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7785 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7785 + 36] = 0
                                        mem[_7785 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7785 + 100] = arg6
                                        mem[_7785 + 132] = 128
                                        mem[_7785 + 164] = mem[_7785]
                                        s = 0
                                        while s < mem[_7785]:
                                            mem[_7785 + s + 196] = mem[_7785 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7785] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7785 + 164 len mem[_7785] + 32]
                                        else:
                                            mem[floor32(mem[_7785]) + _7785 + 196] = mem[floor32(mem[_7785]) + _7785 + -(mem[_7785] % 32) + 228 len mem[_7785] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_7785], mem[_7785 + 196 len floor32(mem[_7785]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7593 = mem[(32 * idx + 1) + 128]
                                        _8099 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8099 + 36] = 0
                                        mem[_8099 + 68] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8099 + 100] = address(_7593)
                                        mem[_8099 + 132] = 128
                                        mem[_8099 + 164] = mem[_8099]
                                        s = 0
                                        while s < mem[_8099]:
                                            mem[_8099 + s + 196] = mem[_8099 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8099] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_7593), 128, mem[_8099 + 164 len mem[_8099] + 32]
                                        else:
                                            mem[floor32(mem[_8099]) + _8099 + 196] = mem[floor32(mem[_8099]) + _8099 + -(mem[_8099] % 32) + 228 len mem[_8099] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_7593), 128, mem[_8099], mem[_8099 + 196 len floor32(mem[_8099]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _7786 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7786 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7786 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_7786 + 68] = 0
                                        mem[_7786 + 100] = arg6
                                        mem[_7786 + 132] = 128
                                        mem[_7786 + 164] = mem[_7786]
                                        s = 0
                                        while s < mem[_7786]:
                                            mem[_7786 + s + 196] = mem[_7786 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_7786] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7786 + 164 len mem[_7786] + 32]
                                        else:
                                            mem[floor32(mem[_7786]) + _7786 + 196] = mem[floor32(mem[_7786]) + _7786 + -(mem[_7786] % 32) + 228 len mem[_7786] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_7786], mem[_7786 + 196 len floor32(mem[_7786]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _7594 = mem[(32 * idx + 1) + 128]
                                        _8103 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8103 + 36] = 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8103 + 68] = 0
                                        mem[_8103 + 100] = address(_7594)
                                        mem[_8103 + 132] = 128
                                        mem[_8103 + 164] = mem[_8103]
                                        s = 0
                                        while s < mem[_8103]:
                                            mem[_8103 + s + 196] = mem[_8103 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8103] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7594), 128, mem[_8103 + 164 len mem[_8103] + 32]
                                        else:
                                            mem[floor32(mem[_8103]) + _8103 + 196] = mem[floor32(mem[_8103]) + _8103 + -(mem[_8103] % 32) + 228 len mem[_8103] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_7594), 128, mem[_8103], mem[_8103 + 196 len floor32(mem[_8103]) + 32]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) - (100000 * Mask(112, 0, ext_call.return_data[32])) + (_6447 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * Mask(112, 0, ext_call.return_data[32]) / 100000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])) < 100000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                if address(_6455) == address(_6464):
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8427 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8427 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8427 + 36] = 0
                                        mem[_8427 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8427 + 100] = arg6
                                        mem[_8427 + 132] = 128
                                        mem[_8427 + 164] = mem[_8427]
                                        s = 0
                                        while s < mem[_8427]:
                                            mem[_8427 + s + 196] = mem[_8427 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8427] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8427 + 164 len mem[_8427] + 32]
                                        else:
                                            mem[floor32(mem[_8427]) + _8427 + 196] = mem[floor32(mem[_8427]) + _8427 + -(mem[_8427] % 32) + 228 len mem[_8427] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(arg6), 128, mem[_8427], mem[_8427 + 196 len floor32(mem[_8427]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8107 = mem[(32 * idx + 1) + 128]
                                        _8709 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8709 + 36] = 0
                                        mem[_8709 + 68] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8709 + 100] = address(_8107)
                                        mem[_8709 + 132] = 128
                                        mem[_8709 + 164] = mem[_8709]
                                        s = 0
                                        while s < mem[_8709]:
                                            mem[_8709 + s + 196] = mem[_8709 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8709] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_8107), 128, mem[_8709 + 164 len mem[_8709] + 32]
                                        else:
                                            mem[floor32(mem[_8709]) + _8709 + 196] = mem[floor32(mem[_8709]) + _8709 + -(mem[_8709] % 32) + 228 len mem[_8709] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), address(_8107), 128, mem[_8709], mem[_8709 + 196 len floor32(mem[_8709]) + 32]
                                else:
                                    if idx >= mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 2:
                                        _8428 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8428 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8428 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8428 + 68] = 0
                                        mem[_8428 + 100] = arg6
                                        mem[_8428 + 132] = 128
                                        mem[_8428 + 164] = mem[_8428]
                                        s = 0
                                        while s < mem[_8428]:
                                            mem[_8428 + s + 196] = mem[_8428 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8428] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8428 + 164 len mem[_8428] + 32]
                                        else:
                                            mem[floor32(mem[_8428]) + _8428 + 196] = mem[floor32(mem[_8428]) + _8428 + -(mem[_8428] % 32) + 228 len mem[_8428] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg6), 128, mem[_8428], mem[_8428 + 196 len floor32(mem[_8428]) + 32]
                                    else:
                                        require idx + 1 < mem[96]
                                        _8108 = mem[(32 * idx + 1) + 128]
                                        _8713 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_8713 + 36] = (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32]))
                                        mem[_8713 + 68] = 0
                                        mem[_8713 + 100] = address(_8108)
                                        mem[_8713 + 132] = 128
                                        mem[_8713 + 164] = mem[_8713]
                                        s = 0
                                        while s < mem[_8713]:
                                            mem[_8713 + s + 196] = mem[_8713 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not mem[_8713] % 32:
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8108), 128, mem[_8713 + 164 len mem[_8713] + 32]
                                        else:
                                            mem[floor32(mem[_8713]) + _8713 + 196] = mem[floor32(mem[_8713]) + _8713 + -(mem[_8713] % 32) + 228 len mem[_8713] % 32]
                                            require ext_code.size(address(_6427))
                                            call address(_6427).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args (100000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (_6447 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (100000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (_6447 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (100000 * ext_call.return_data[0]) - (_6447 * ext_call.return_data[0]) + (_6447 * Mask(112, 0, ext_call.return_data[32])), 0, address(_8108), 128, mem[_8713], mem[_8713 + 196 len floor32(mem[_8713]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    require mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 1 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    require ext_code.size(mem[(32 * mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20])
    staticcall mem[(32 * mem[(32 * arg3.length) + (32 * arg4.length) + 160] - 1) + (32 * arg3.length) + (32 * arg4.length) + 204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args address(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if 0 < arg2:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41130
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
