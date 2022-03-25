contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}

function sub_c55425c2(?) {
    require calldata.size - 4 >= 64
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tx.origin with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Not enough native coin'
}

function drainMe(address arg1) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NO MONEYYY'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    require arg4.length >= 160
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    if arg2 > 0:
        _9 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg2
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256
        if cd[(arg4 + 164)]:
            idx = 0
            s = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1109 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1109 % 32) + 452 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1112 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1112 % 32) + 452 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1118 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1118 % 32) + 452 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_742) == address(_725):
                            _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_897)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1130 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1130 % 32) + 452 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _743 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _755 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_743) != address(_743):
                            _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_743))
                            staticcall address(_743).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_926)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            continue 
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1157 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1157 % 32) + 452 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1160 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1160 % 32) + 452 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1169 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1169 % 32) + 452 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1172 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1172 % 32) + 452 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1175 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1175 % 32) + 452 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
        else:
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _712 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _730 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _712
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _785 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _785:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _785 % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[mem[64] + 132 len _785 + 32]
                        else:
                            mem[floor32(_785) + mem[64] + 164] = mem[floor32(_785) + mem[64] + -(_785 % 32) + 196 len _785 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[mem[64] + 132 len floor32(_785) + 64]
                    else:
                        _786 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _712
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _788 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _788:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _788 % 32:
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _788 + _786 + -mem[64] + 160]
                        else:
                            mem[floor32(_788) + _786 + 164] = mem[floor32(_788) + _786 + -(_788 % 32) + 196 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + _786 + -mem[64] + 192]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _687 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _731 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _747 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _731
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_687)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _731, 0, address(_687), 128, mem[mem[64] + 132 len _814 + 32]
                        else:
                            mem[floor32(_814) + mem[64] + 164] = mem[floor32(_814) + mem[64] + -(_814 % 32) + 196 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _731, 0, address(_687), 128, mem[mem[64] + 132 len floor32(_814) + 64]
                    else:
                        _809 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _731
                        mem[mem[64] + 68] = address(_687)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _811 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _811:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _811 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _811 + _809 + -mem[64] + 160]
                        else:
                            mem[floor32(_811) + _809 + 164] = mem[floor32(_811) + _809 + -(_811 % 32) + 196 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + _809 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256
        if cd[(arg4 + 164)]:
            idx = 0
            s = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1133 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1133 % 32) + 452 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1136 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1136 % 32) + 452 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1139 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1139:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1139 % 32:
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1139 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1139 % 32) + 452 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1142 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1142:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1142 % 32:
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1142 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1142 % 32) + 452 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1151 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1151 % 32) + 452 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _750 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _759 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_750) == address(_750):
                            _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_750))
                            staticcall address(_750).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_935)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1055))
                                    call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1055))
                                    call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1181:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1181 % 32:
                                    require ext_code.size(address(_1055))
                                    call address(_1055).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1181 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1181 % 32) + 452 len _1181 % 32]
                                    require ext_code.size(address(_1055))
                                    call address(_1055).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_938)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1187 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1187:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1187 % 32:
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1187 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1187 % 32) + 452 len _1187 % 32]
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1190:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1190 % 32:
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1190 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1190 % 32) + 452 len _1190 % 32]
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_759) == address(_750):
                            _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_750))
                            staticcall address(_750).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_941)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1193:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1193 % 32:
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1193 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1193 % 32) + 452 len _1193 % 32]
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1196:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1196 % 32:
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1196 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1196 % 32) + 452 len _1196 % 32]
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_944)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1199:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1199 % 32:
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1199 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1199 % 32) + 452 len _1199 % 32]
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1202:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1202 % 32:
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1202 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1202 % 32) + 452 len _1202 % 32]
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
        else:
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _721 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _738 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _721
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _721, 0, address(this.address), 128, mem[mem[64] + 132 len _802 + 32]
                        else:
                            mem[floor32(_802) + mem[64] + 164] = mem[floor32(_802) + mem[64] + -(_802 % 32) + 196 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _721, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_802) + 64]
                    else:
                        _797 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _721
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _799 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _799:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _799 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _799 + _797 + -mem[64] + 160]
                        else:
                            mem[floor32(_799) + _797 + 164] = mem[floor32(_799) + _797 + -(_799 % 32) + 196 len _799 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_799) + _797 + -mem[64] + 192]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _692 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _739 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _754 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _821 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _739
                        mem[mem[64] + 68] = address(_692)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _823 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _823:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _823 % 32:
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _823 + _821 + -mem[64] + 160]
                        else:
                            mem[floor32(_823) + _821 + 164] = mem[floor32(_823) + _821 + -(_823 % 32) + 196 len _823 % 32]
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_823) + _821 + -mem[64] + 192]
                    else:
                        _824 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _739
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_692)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _826 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _826:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _826 % 32:
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _826 + _824 + -mem[64] + 160]
                        else:
                            mem[floor32(_826) + _824 + 164] = mem[floor32(_826) + _824 + -(_826 % 32) + 196 len _826 % 32]
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_826) + _824 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    require arg4.length >= 160
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    if arg2 > 0:
        _9 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg2
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256
        if cd[(arg4 + 164)]:
            idx = 0
            s = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1109 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1109 % 32) + 452 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1109) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1112 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1112 % 32) + 452 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1112) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1118 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1118 % 32) + 452 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1118) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_742) == address(_725):
                            _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_897)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1013))
                                    call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1130 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1130 % 32) + 452 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1130) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _743 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _755 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_743) != address(_743):
                            _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_743))
                            staticcall address(_743).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_926)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1044))
                                    call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            continue 
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1157 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1157 % 32) + 452 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1157) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1160 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1160 % 32) + 452 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1160) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1169 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1169 % 32) + 452 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1169) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1172 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1172 % 32) + 452 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1172) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_685)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1175 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1175 % 32) + 452 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1175) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
        else:
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _712 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _730 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _712
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _785 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _785:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _785 % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[mem[64] + 132 len _785 + 32]
                        else:
                            mem[floor32(_785) + mem[64] + 164] = mem[floor32(_785) + mem[64] + -(_785 % 32) + 196 len _785 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[mem[64] + 132 len floor32(_785) + 64]
                    else:
                        _786 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _712
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _788 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _788:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _788 % 32:
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _788 + _786 + -mem[64] + 160]
                        else:
                            mem[floor32(_788) + _786 + 164] = mem[floor32(_788) + _786 + -(_788 % 32) + 196 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + _786 + -mem[64] + 192]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _687 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _731 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _747 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _731
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_687)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _731, 0, address(_687), 128, mem[mem[64] + 132 len _814 + 32]
                        else:
                            mem[floor32(_814) + mem[64] + 164] = mem[floor32(_814) + mem[64] + -(_814 % 32) + 196 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _731, 0, address(_687), 128, mem[mem[64] + 132 len floor32(_814) + 64]
                    else:
                        _809 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _731
                        mem[mem[64] + 68] = address(_687)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _811 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _811:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _811 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _811 + _809 + -mem[64] + 160]
                        else:
                            mem[floor32(_811) + _809 + 164] = mem[floor32(_811) + _809 + -(_811 % 32) + 196 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + _809 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256
        if cd[(arg4 + 164)]:
            idx = 0
            s = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1133 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1133 % 32) + 452 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1133) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1136 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1136 % 32) + 452 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1136) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1139 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1139:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1139 % 32:
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1139 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1139 % 32) + 452 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1142 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1142:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1142 % 32:
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1142 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1142 % 32) + 452 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1151 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1151 % 32) + 452 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1151) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _750 = mem[(32 * idx) + 128]
                    require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    _759 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_750) == address(_750):
                            _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_750))
                            staticcall address(_750).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_935)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                    mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                    require ext_code.size(address(_1055))
                                    call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                else:
                                    mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                    require ext_code.size(address(_1055))
                                    call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1181:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1181 % 32:
                                    require ext_code.size(address(_1055))
                                    call address(_1055).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1181 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1181 % 32) + 452 len _1181 % 32]
                                    require ext_code.size(address(_1055))
                                    call address(_1055).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1181) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_938)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1187 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1187:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1187 % 32:
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1187 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1187 % 32) + 452 len _1187 % 32]
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1187) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1190:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1190 % 32:
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1190 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1190 % 32) + 452 len _1190 % 32]
                                require ext_code.size(address(_1056))
                                call address(_1056).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1190) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        if address(_759) == address(_750):
                            _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_750))
                            staticcall address(_750).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_941)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1193:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1193 % 32:
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1193 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1193 % 32) + 452 len _1193 % 32]
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1193) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1196:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1196 % 32:
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1196 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                else:
                                    mem[floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1196 % 32) + 452 len _1196 % 32]
                                    require ext_code.size(address(_1057))
                                    call address(_1057).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_944)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1199:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1199 % 32:
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1199 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1199 % 32) + 452 len _1199 % 32]
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1199) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_690)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1202:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1202 % 32:
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1202 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1202 % 32) + 452 len _1202 % 32]
                                require ext_code.size(address(_1058))
                                call address(_1058).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1202) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
        else:
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _721 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _738 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _721
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _721, 0, address(this.address), 128, mem[mem[64] + 132 len _802 + 32]
                        else:
                            mem[floor32(_802) + mem[64] + 164] = mem[floor32(_802) + mem[64] + -(_802 % 32) + 196 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _721, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_802) + 64]
                    else:
                        _797 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _721
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _799 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _799:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _799 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _799 + _797 + -mem[64] + 160]
                        else:
                            mem[floor32(_799) + _797 + 164] = mem[floor32(_799) + _797 + -(_799 % 32) + 196 len _799 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_799) + _797 + -mem[64] + 192]
                else:
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _692 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require idx < mem[96]
                    require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                    _739 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _754 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _821 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _739
                        mem[mem[64] + 68] = address(_692)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _823 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _823:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _823 % 32:
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _823 + _821 + -mem[64] + 160]
                        else:
                            mem[floor32(_823) + _821 + 164] = mem[floor32(_823) + _821 + -(_823 % 32) + 196 len _823 % 32]
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_823) + _821 + -mem[64] + 192]
                    else:
                        _824 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _739
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_692)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _826 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _826:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _826 % 32:
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _826 + _824 + -mem[64] + 160]
                        else:
                            mem[floor32(_826) + _824 + 164] = mem[floor32(_826) + _824 + -(_826 % 32) + 196 len _826 % 32]
                            require ext_code.size(address(_754))
                            call address(_754).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_826) + _824 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_4a06c6db(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    require 3 < arg1.length
    _8 = mem[224]
    require arg3.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg3.length
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256
    if not arg3.length:
        require 0 < arg3.length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = _8
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            _1473 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx + 1 < arg3.length
            _1481 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                if address(_1473) == address(_1473):
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
                else:
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
            else:
                if address(_1481) == address(_1473):
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
                else:
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
            idx = idx + 1
            continue 
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        if mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] - 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] <= mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
            revert with 0, 'Fail !!!!'
        require 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _1498 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
        require 0 < arg3.length
        require 3 < arg1.length
        require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[224]:
            require 1 < arg1.length
            require 2 < arg1.length
            require 0 < arg3.length
            require 0 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 260] = mem[(32 * arg1.length) + 172 len 20]
            if mem[160] > 0:
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = mem[160]
                require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
                call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 172 len 20], mem[160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = 0
                mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288
                if _1498 != 0:
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3012 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3039 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3012) == address(_3012):
                                    _3358 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3012))
                                    staticcall address(_3012).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3358)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3598 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3795 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3795:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3795 % 32:
                                            require ext_code.size(address(_3598))
                                            call address(_3598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3795 + 32]
                                        else:
                                            mem[floor32(_3795) + mem[64] + 164] = mem[floor32(_3795) + mem[64] + -(_3795 % 32) + 196 len _3795 % 32]
                                            require ext_code.size(address(_3598))
                                            call address(_3598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3795) + 64]
                                    else:
                                        _3790 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3792 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3792:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3792 % 32:
                                            require ext_code.size(address(_3598))
                                            call address(_3598).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3792 + _3790 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3792) + _3790 + 164] = mem[floor32(_3792) + _3790 + -(_3792 % 32) + 196 len _3792 % 32]
                                            require ext_code.size(address(_3598))
                                            call address(_3598).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3792) + _3790 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3361 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3012))
                                staticcall address(_3012).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3361)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3599 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3796 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3798 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3798:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3798 % 32:
                                        require ext_code.size(address(_3599))
                                        call address(_3599).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3798 + _3796 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3798) + _3796 + 164] = mem[floor32(_3798) + _3796 + -(_3798 % 32) + 196 len _3798 % 32]
                                        require ext_code.size(address(_3599))
                                        call address(_3599).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3798) + _3796 + -mem[64] + 192]
                                else:
                                    _3799 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3801 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3801:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3801 % 32:
                                        require ext_code.size(address(_3599))
                                        call address(_3599).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3801 + _3799 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3801) + _3799 + 164] = mem[floor32(_3801) + _3799 + -(_3801 % 32) + 196 len _3801 % 32]
                                        require ext_code.size(address(_3599))
                                        call address(_3599).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3801) + _3799 + -mem[64] + 192]
                            else:
                                if address(_3039) == address(_3012):
                                    _3364 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3012))
                                    staticcall address(_3012).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3364)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3600 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3804 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3804:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3804 % 32:
                                            require ext_code.size(address(_3600))
                                            call address(_3600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _3804 + 32]
                                        else:
                                            mem[floor32(_3804) + mem[64] + 164] = mem[floor32(_3804) + mem[64] + -(_3804 % 32) + 196 len _3804 % 32]
                                            require ext_code.size(address(_3600))
                                            call address(_3600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_3804) + 64]
                                    else:
                                        _3805 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3807 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3807:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3807 % 32:
                                            require ext_code.size(address(_3600))
                                            call address(_3600).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3807 + _3805 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3807) + _3805 + 164] = mem[floor32(_3807) + _3805 + -(_3807 % 32) + 196 len _3807 % 32]
                                            require ext_code.size(address(_3600))
                                            call address(_3600).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3807) + _3805 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3367 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3012))
                                staticcall address(_3012).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3367)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3601 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3808 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3810 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3810:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3810 % 32:
                                        require ext_code.size(address(_3601))
                                        call address(_3601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3810 + _3808 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3810) + _3808 + 164] = mem[floor32(_3810) + _3808 + -(_3810 % 32) + 196 len _3810 % 32]
                                        require ext_code.size(address(_3601))
                                        call address(_3601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3810) + _3808 + -mem[64] + 192]
                                else:
                                    _3811 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3813 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3813:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3813 % 32:
                                        require ext_code.size(address(_3601))
                                        call address(_3601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3813 + _3811 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3813) + _3811 + 164] = mem[floor32(_3813) + _3811 + -(_3813 % 32) + 196 len _3813 % 32]
                                        require ext_code.size(address(_3601))
                                        call address(_3601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3813) + _3811 + -mem[64] + 192]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2944 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3040 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3068 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3040) == address(_3040):
                                    _3422 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3040))
                                    staticcall address(_3040).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3422)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3654 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2944)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3888 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3888:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3888 % 32:
                                            require ext_code.size(address(_3654))
                                            call address(_3654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_2944), 128, mem[mem[64] + 132 len _3888 + 32]
                                        else:
                                            mem[floor32(_3888) + mem[64] + 164] = mem[floor32(_3888) + mem[64] + -(_3888 % 32) + 196 len _3888 % 32]
                                            require ext_code.size(address(_3654))
                                            call address(_3654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_2944), 128, mem[mem[64] + 132 len floor32(_3888) + 64]
                                    else:
                                        _3889 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2944)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3891 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3891:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3891 % 32:
                                            require ext_code.size(address(_3654))
                                            call address(_3654).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3891 + _3889 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3891) + _3889 + 164] = mem[floor32(_3891) + _3889 + -(_3891 % 32) + 196 len _3891 % 32]
                                            require ext_code.size(address(_3654))
                                            call address(_3654).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3891) + _3889 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3425 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3040))
                                staticcall address(_3040).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3425)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3655 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2944)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3894 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3894:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3894 % 32:
                                        require ext_code.size(address(_3655))
                                        call address(_3655).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2944), 128, mem[mem[64] + 132 len _3894 + 32]
                                    else:
                                        mem[floor32(_3894) + mem[64] + 164] = mem[floor32(_3894) + mem[64] + -(_3894 % 32) + 196 len _3894 % 32]
                                        require ext_code.size(address(_3655))
                                        call address(_3655).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2944), 128, mem[mem[64] + 132 len floor32(_3894) + 64]
                                else:
                                    _3895 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2944)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3897 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3897:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3897 % 32:
                                        require ext_code.size(address(_3655))
                                        call address(_3655).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3897 + _3895 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3897) + _3895 + 164] = mem[floor32(_3897) + _3895 + -(_3897 % 32) + 196 len _3897 % 32]
                                        require ext_code.size(address(_3655))
                                        call address(_3655).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3897) + _3895 + -mem[64] + 192]
                            else:
                                if address(_3068) == address(_3040):
                                    _3428 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3040))
                                    staticcall address(_3040).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3428)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3656 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2944)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3903 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3903:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3903 % 32:
                                            require ext_code.size(address(_3656))
                                            call address(_3656).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2944), 128, mem[mem[64] + 132 len _3903 + 32]
                                        else:
                                            mem[floor32(_3903) + mem[64] + 164] = mem[floor32(_3903) + mem[64] + -(_3903 % 32) + 196 len _3903 % 32]
                                            require ext_code.size(address(_3656))
                                            call address(_3656).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2944), 128, mem[mem[64] + 132 len floor32(_3903) + 64]
                                    else:
                                        _3898 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2944)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3900 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3900:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3900 % 32:
                                            require ext_code.size(address(_3656))
                                            call address(_3656).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3900 + _3898 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3900) + _3898 + 164] = mem[floor32(_3900) + _3898 + -(_3900 % 32) + 196 len _3900 % 32]
                                            require ext_code.size(address(_3656))
                                            call address(_3656).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3900) + _3898 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3431 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3040))
                                staticcall address(_3040).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3431)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3657 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3904 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2944)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3906 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3906:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3906 % 32:
                                        require ext_code.size(address(_3657))
                                        call address(_3657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3906 + _3904 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3906) + _3904 + 164] = mem[floor32(_3906) + _3904 + -(_3906 % 32) + 196 len _3906 % 32]
                                        require ext_code.size(address(_3657))
                                        call address(_3657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3906) + _3904 + -mem[64] + 192]
                                else:
                                    _3907 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2944)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3909 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3909:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3909 % 32:
                                        require ext_code.size(address(_3657))
                                        call address(_3657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3909 + _3907 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3909) + _3907 + 164] = mem[floor32(_3909) + _3907 + -(_3909 % 32) + 196 len _3909 % 32]
                                        require ext_code.size(address(_3657))
                                        call address(_3657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3909) + _3907 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                else:
                    idx = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _2987 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3015 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2987
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3129 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3129:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3129 % 32:
                                    require ext_code.size(address(_3015))
                                    call address(_3015).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2987, address(this.address), 128, mem[mem[64] + 132 len _3129 + 32]
                                else:
                                    mem[floor32(_3129) + mem[64] + 164] = mem[floor32(_3129) + mem[64] + -(_3129 % 32) + 196 len _3129 % 32]
                                    require ext_code.size(address(_3015))
                                    call address(_3015).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2987, address(this.address), 128, mem[mem[64] + 132 len floor32(_3129) + 64]
                            else:
                                _3130 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2987
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3132 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3132:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3132 % 32:
                                    require ext_code.size(address(_3015))
                                    call address(_3015).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3132 + _3130 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3132) + _3130 + 164] = mem[floor32(_3132) + _3130 + -(_3132 % 32) + 196 len _3132 % 32]
                                    require ext_code.size(address(_3015))
                                    call address(_3015).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3132) + _3130 + -mem[64] + 192]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2946 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3016 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3044 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _3016
                                mem[mem[64] + 68] = address(_2946)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3186 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3186:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3186 % 32:
                                    require ext_code.size(address(_3044))
                                    call address(_3044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3016, address(_2946), 128, mem[mem[64] + 132 len _3186 + 32]
                                else:
                                    mem[floor32(_3186) + mem[64] + 164] = mem[floor32(_3186) + mem[64] + -(_3186 % 32) + 196 len _3186 % 32]
                                    require ext_code.size(address(_3044))
                                    call address(_3044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3016, address(_2946), 128, mem[mem[64] + 132 len floor32(_3186) + 64]
                            else:
                                _3187 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3016
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2946)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3189 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3189:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3189 % 32:
                                    require ext_code.size(address(_3044))
                                    call address(_3044).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3189 + _3187 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3189) + _3187 + 164] = mem[floor32(_3189) + _3187 + -(_3189 % 32) + 196 len _3189 % 32]
                                    require ext_code.size(address(_3044))
                                    call address(_3044).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3189) + _3187 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = mem[192]
                require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
                call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 172 len 20], mem[192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = 0
                mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288
                if _1498 != 0:
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3018 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3045 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3018) != address(_3018):
                                    _3377 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3018))
                                    staticcall address(_3018).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3377)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3611 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3822 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3822:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3822 % 32:
                                            require ext_code.size(address(_3611))
                                            call address(_3611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _3822 + 32]
                                        else:
                                            mem[floor32(_3822) + mem[64] + 164] = mem[floor32(_3822) + mem[64] + -(_3822 % 32) + 196 len _3822 % 32]
                                            require ext_code.size(address(_3611))
                                            call address(_3611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_3822) + 64]
                                    else:
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3825 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3825:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3825 % 32:
                                            require ext_code.size(address(_3611))
                                            call address(_3611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3825 + 32]
                                        else:
                                            mem[floor32(_3825) + mem[64] + 164] = mem[floor32(_3825) + mem[64] + -(_3825 % 32) + 196 len _3825 % 32]
                                            require ext_code.size(address(_3611))
                                            call address(_3611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3825) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3374 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3018))
                                staticcall address(_3018).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3374)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3610 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3819 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3819:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3819 % 32:
                                        require ext_code.size(address(_3610))
                                        call address(_3610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3819 + 32]
                                    else:
                                        mem[floor32(_3819) + mem[64] + 164] = mem[floor32(_3819) + mem[64] + -(_3819 % 32) + 196 len _3819 % 32]
                                        require ext_code.size(address(_3610))
                                        call address(_3610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3819) + 64]
                                else:
                                    _3814 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3816 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3816:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3816 % 32:
                                        require ext_code.size(address(_3610))
                                        call address(_3610).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3816 + _3814 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3816) + _3814 + 164] = mem[floor32(_3816) + _3814 + -(_3816 % 32) + 196 len _3816 % 32]
                                        require ext_code.size(address(_3610))
                                        call address(_3610).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3816) + _3814 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                continue 
                            if address(_3045) == address(_3018):
                                _3380 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3018))
                                staticcall address(_3018).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3380)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3612 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3831 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3831:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3831 % 32:
                                        require ext_code.size(address(_3612))
                                        call address(_3612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3831 + 32]
                                    else:
                                        mem[floor32(_3831) + mem[64] + 164] = mem[floor32(_3831) + mem[64] + -(_3831 % 32) + 196 len _3831 % 32]
                                        require ext_code.size(address(_3612))
                                        call address(_3612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3831) + 64]
                                else:
                                    _3826 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3828 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3828:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3828 % 32:
                                        require ext_code.size(address(_3612))
                                        call address(_3612).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3828 + _3826 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3828) + _3826 + 164] = mem[floor32(_3828) + _3826 + -(_3828 % 32) + 196 len _3828 % 32]
                                        require ext_code.size(address(_3612))
                                        call address(_3612).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3828) + _3826 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                continue 
                            _3383 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                            require ext_code.size(address(_3018))
                            staticcall address(_3018).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3383)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3613 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3837 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3837:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3837 % 32:
                                    require ext_code.size(address(_3613))
                                    call address(_3613).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3837 + 32]
                                else:
                                    mem[floor32(_3837) + mem[64] + 164] = mem[floor32(_3837) + mem[64] + -(_3837 % 32) + 196 len _3837 % 32]
                                    require ext_code.size(address(_3613))
                                    call address(_3613).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3837) + 64]
                            else:
                                _3832 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3834 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3834:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3834 % 32:
                                    require ext_code.size(address(_3613))
                                    call address(_3613).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3834 + _3832 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3834) + _3832 + 164] = mem[floor32(_3834) + _3832 + -(_3834 % 32) + 196 len _3834 % 32]
                                    require ext_code.size(address(_3613))
                                    call address(_3613).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3834) + _3832 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            continue 
                        require idx + 1 < mem[(32 * arg1.length) + 128]
                        _2948 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        _3046 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        _3071 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                        require idx < mem[(32 * arg1.length) + 128]
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                            if address(_3046) == address(_3046):
                                _3434 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3046))
                                staticcall address(_3046).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3434)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3666 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3910 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2948)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3912 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3912:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3912 % 32:
                                        require ext_code.size(address(_3666))
                                        call address(_3666).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3912 + _3910 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3912) + _3910 + 164] = mem[floor32(_3912) + _3910 + -(_3912 % 32) + 196 len _3912 % 32]
                                        require ext_code.size(address(_3666))
                                        call address(_3666).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3912) + _3910 + -mem[64] + 192]
                                else:
                                    _3913 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2948)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3915 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3915:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3915 % 32:
                                        require ext_code.size(address(_3666))
                                        call address(_3666).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3915 + _3913 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3915) + _3913 + 164] = mem[floor32(_3915) + _3913 + -(_3915 % 32) + 196 len _3915 % 32]
                                        require ext_code.size(address(_3666))
                                        call address(_3666).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3915) + _3913 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                continue 
                            _3437 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                            require ext_code.size(address(_3046))
                            staticcall address(_3046).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3437)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3667 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                _3916 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = address(_2948)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3918 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3918:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3918 % 32:
                                    require ext_code.size(address(_3667))
                                    call address(_3667).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3918 + _3916 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3918) + _3916 + 164] = mem[floor32(_3918) + _3916 + -(_3918 % 32) + 196 len _3918 % 32]
                                    require ext_code.size(address(_3667))
                                    call address(_3667).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3918) + _3916 + -mem[64] + 192]
                            else:
                                _3919 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2948)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3921 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3921:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3921 % 32:
                                    require ext_code.size(address(_3667))
                                    call address(_3667).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3921 + _3919 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3921) + _3919 + 164] = mem[floor32(_3921) + _3919 + -(_3921 % 32) + 196 len _3921 % 32]
                                    require ext_code.size(address(_3667))
                                    call address(_3667).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3921) + _3919 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            continue 
                        if address(_3071) != address(_3046):
                            _3443 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                            require ext_code.size(address(_3046))
                            staticcall address(_3046).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3443)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3669 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = address(_2948)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3930 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3930:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3930 % 32:
                                    require ext_code.size(address(_3669))
                                    call address(_3669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2948), 128, mem[mem[64] + 132 len _3930 + 32]
                                else:
                                    mem[floor32(_3930) + mem[64] + 164] = mem[floor32(_3930) + mem[64] + -(_3930 % 32) + 196 len _3930 % 32]
                                    require ext_code.size(address(_3669))
                                    call address(_3669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2948), 128, mem[mem[64] + 132 len floor32(_3930) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2948)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3933 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3933:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3933 % 32:
                                    require ext_code.size(address(_3669))
                                    call address(_3669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2948), 128, mem[mem[64] + 132 len _3933 + 32]
                                else:
                                    mem[floor32(_3933) + mem[64] + 164] = mem[floor32(_3933) + mem[64] + -(_3933 % 32) + 196 len _3933 % 32]
                                    require ext_code.size(address(_3669))
                                    call address(_3669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2948), 128, mem[mem[64] + 132 len floor32(_3933) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            continue 
                        _3440 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                        require ext_code.size(address(_3046))
                        staticcall address(_3046).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3440)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        _3668 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2948)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                            _3927 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                            s = 0
                            while s < _3927:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                s = s + 32
                                continue 
                            if not _3927 % 32:
                                require ext_code.size(address(_3668))
                                call address(_3668).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2948), 128, mem[mem[64] + 132 len _3927 + 32]
                            else:
                                mem[floor32(_3927) + mem[64] + 164] = mem[floor32(_3927) + mem[64] + -(_3927 % 32) + 196 len _3927 % 32]
                                require ext_code.size(address(_3668))
                                call address(_3668).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2948), 128, mem[mem[64] + 132 len floor32(_3927) + 64]
                        else:
                            _3922 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_2948)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                            _3924 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                            s = 0
                            while s < _3924:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                s = s + 32
                                continue 
                            if not _3924 % 32:
                                require ext_code.size(address(_3668))
                                call address(_3668).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3924 + _3922 + -mem[64] + 160]
                            else:
                                mem[floor32(_3924) + _3922 + 164] = mem[floor32(_3924) + _3922 + -(_3924 % 32) + 196 len _3924 % 32]
                                require ext_code.size(address(_3668))
                                call address(_3668).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_3924) + _3922 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                else:
                    idx = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _2993 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3021 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                _3141 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2993
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3143 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3143:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3143 % 32:
                                    require ext_code.size(address(_3021))
                                    call address(_3021).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3143 + _3141 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3143) + _3141 + 164] = mem[floor32(_3143) + _3141 + -(_3143 % 32) + 196 len _3143 % 32]
                                    require ext_code.size(address(_3021))
                                    call address(_3021).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3143) + _3141 + -mem[64] + 192]
                            else:
                                _3144 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2993
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3146 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3146:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3146 % 32:
                                    require ext_code.size(address(_3021))
                                    call address(_3021).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3146 + _3144 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3146) + _3144 + 164] = mem[floor32(_3146) + _3144 + -(_3146 % 32) + 196 len _3146 % 32]
                                    require ext_code.size(address(_3021))
                                    call address(_3021).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3146) + _3144 + -mem[64] + 192]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2950 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3022 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3050 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                _3196 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _3022
                                mem[mem[64] + 68] = address(_2950)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3198 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3198:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3198 % 32:
                                    require ext_code.size(address(_3050))
                                    call address(_3050).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3198 + _3196 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3198) + _3196 + 164] = mem[floor32(_3198) + _3196 + -(_3198 % 32) + 196 len _3198 % 32]
                                    require ext_code.size(address(_3050))
                                    call address(_3050).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3198) + _3196 + -mem[64] + 192]
                            else:
                                _3199 = mem[64]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3022
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2950)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3201 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3201:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3201 % 32:
                                    require ext_code.size(address(_3050))
                                    call address(_3050).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3201 + _3199 + -mem[64] + 160]
                                else:
                                    mem[floor32(_3201) + _3199 + 164] = mem[floor32(_3201) + _3199 + -(_3201 % 32) + 196 len _3201 % 32]
                                    require ext_code.size(address(_3050))
                                    call address(_3050).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3201) + _3199 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 416] = _1498 != 0
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 160
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 448] = arg3.length
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 480 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 320] = (32 * arg3.length) + 192
            mem[(98 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 480] = arg2.length
            mem[(98 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 512 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 352] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[(64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 512] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            mem[(64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 544 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 384] = (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 256
            mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 544] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            _4601 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = (32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288
            mem[64] = (32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576
            require 0 < arg1.length
            require 1 < arg1.length
            require 2 < arg1.length
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 580] = mem[160]
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 612] = mem[192]
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 644] = this.address
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 676] = 128
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
            mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 740 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256])] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256])]
            if not mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[160], mem[192], address(this.address), 128, mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] + 32]
            else:
                mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 740] = mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + -(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32) + 772 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[160], mem[192], address(this.address), 128, mem[(32 * _4601) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = _8
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            _1476 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx + 1 < arg3.length
            _1486 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                if address(_1476) == address(_1476):
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
                else:
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
            else:
                if address(_1486) == address(_1476):
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
                else:
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256])
            idx = idx + 1
            continue 
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        if mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] - 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] <= mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
            revert with 0, 'Fail !!!!'
        require 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _1500 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
        require 0 < arg3.length
        require 3 < arg1.length
        require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[224]:
            require 1 < arg1.length
            require 2 < arg1.length
            require 0 < arg3.length
            require 0 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 260] = mem[(32 * arg1.length) + 172 len 20]
            if mem[160] > 0:
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = mem[160]
                require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
                call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 172 len 20], mem[160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = 0
                mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288
                if _1500 != 0:
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3024 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3054 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3024) == address(_3024):
                                    _3390 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3024))
                                    staticcall address(_3024).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3390)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3622 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3843 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3843:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3843 % 32:
                                            require ext_code.size(address(_3622))
                                            call address(_3622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3843 + 32]
                                        else:
                                            mem[floor32(_3843) + mem[64] + 164] = mem[floor32(_3843) + mem[64] + -(_3843 % 32) + 196 len _3843 % 32]
                                            require ext_code.size(address(_3622))
                                            call address(_3622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3843) + 64]
                                    else:
                                        _3838 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3840 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3840:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3840 % 32:
                                            require ext_code.size(address(_3622))
                                            call address(_3622).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3840 + _3838 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3840) + _3838 + 164] = mem[floor32(_3840) + _3838 + -(_3840 % 32) + 196 len _3840 % 32]
                                            require ext_code.size(address(_3622))
                                            call address(_3622).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3840) + _3838 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3393 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3024))
                                staticcall address(_3024).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3393)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3623 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3846 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3846:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3846 % 32:
                                        require ext_code.size(address(_3623))
                                        call address(_3623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _3846 + 32]
                                    else:
                                        mem[floor32(_3846) + mem[64] + 164] = mem[floor32(_3846) + mem[64] + -(_3846 % 32) + 196 len _3846 % 32]
                                        require ext_code.size(address(_3623))
                                        call address(_3623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_3846) + 64]
                                else:
                                    _3847 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3849 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3849:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3849 % 32:
                                        require ext_code.size(address(_3623))
                                        call address(_3623).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3849 + _3847 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3849) + _3847 + 164] = mem[floor32(_3849) + _3847 + -(_3849 % 32) + 196 len _3849 % 32]
                                        require ext_code.size(address(_3623))
                                        call address(_3623).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3849) + _3847 + -mem[64] + 192]
                            else:
                                if address(_3054) == address(_3024):
                                    _3396 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3024))
                                    staticcall address(_3024).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3396)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3624 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        _3850 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3852 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3852:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3852 % 32:
                                            require ext_code.size(address(_3624))
                                            call address(_3624).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3852 + _3850 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3852) + _3850 + 164] = mem[floor32(_3852) + _3850 + -(_3852 % 32) + 196 len _3852 % 32]
                                            require ext_code.size(address(_3624))
                                            call address(_3624).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3852) + _3850 + -mem[64] + 192]
                                    else:
                                        _3853 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3855 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3855:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3855 % 32:
                                            require ext_code.size(address(_3624))
                                            call address(_3624).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3855 + _3853 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3855) + _3853 + 164] = mem[floor32(_3855) + _3853 + -(_3855 % 32) + 196 len _3855 % 32]
                                            require ext_code.size(address(_3624))
                                            call address(_3624).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3855) + _3853 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3399 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3024))
                                staticcall address(_3024).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3399)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3625 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3856 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3858 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3858:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3858 % 32:
                                        require ext_code.size(address(_3625))
                                        call address(_3625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3858 + _3856 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3858) + _3856 + 164] = mem[floor32(_3858) + _3856 + -(_3858 % 32) + 196 len _3858 % 32]
                                        require ext_code.size(address(_3625))
                                        call address(_3625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3858) + _3856 + -mem[64] + 192]
                                else:
                                    _3859 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3861 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3861:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3861 % 32:
                                        require ext_code.size(address(_3625))
                                        call address(_3625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3861 + _3859 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3861) + _3859 + 164] = mem[floor32(_3861) + _3859 + -(_3861 % 32) + 196 len _3861 % 32]
                                        require ext_code.size(address(_3625))
                                        call address(_3625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3861) + _3859 + -mem[64] + 192]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2955 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3055 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3076 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3055) == address(_3055):
                                    _3446 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3055))
                                    staticcall address(_3055).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3446)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3678 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2955)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3939 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3939:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3939 % 32:
                                            require ext_code.size(address(_3678))
                                            call address(_3678).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len _3939 + 32]
                                        else:
                                            mem[floor32(_3939) + mem[64] + 164] = mem[floor32(_3939) + mem[64] + -(_3939 % 32) + 196 len _3939 % 32]
                                            require ext_code.size(address(_3678))
                                            call address(_3678).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len floor32(_3939) + 64]
                                    else:
                                        _3934 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2955)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3936 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3936:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3936 % 32:
                                            require ext_code.size(address(_3678))
                                            call address(_3678).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3936 + _3934 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3936) + _3934 + 164] = mem[floor32(_3936) + _3934 + -(_3936 % 32) + 196 len _3936 % 32]
                                            require ext_code.size(address(_3678))
                                            call address(_3678).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3936) + _3934 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3449 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3055))
                                staticcall address(_3055).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3449)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3679 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3940 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2955)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3942 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3942:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3942 % 32:
                                        require ext_code.size(address(_3679))
                                        call address(_3679).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3942 + _3940 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3942) + _3940 + 164] = mem[floor32(_3942) + _3940 + -(_3942 % 32) + 196 len _3942 % 32]
                                        require ext_code.size(address(_3679))
                                        call address(_3679).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3942) + _3940 + -mem[64] + 192]
                                else:
                                    _3943 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2955)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3945 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3945:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3945 % 32:
                                        require ext_code.size(address(_3679))
                                        call address(_3679).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3945 + _3943 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3945) + _3943 + 164] = mem[floor32(_3945) + _3943 + -(_3945 % 32) + 196 len _3945 % 32]
                                        require ext_code.size(address(_3679))
                                        call address(_3679).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3945) + _3943 + -mem[64] + 192]
                            else:
                                if address(_3076) == address(_3055):
                                    _3452 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3055))
                                    staticcall address(_3055).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3452)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3680 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2955)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3951 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3951:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3951 % 32:
                                            require ext_code.size(address(_3680))
                                            call address(_3680).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len _3951 + 32]
                                        else:
                                            mem[floor32(_3951) + mem[64] + 164] = mem[floor32(_3951) + mem[64] + -(_3951 % 32) + 196 len _3951 % 32]
                                            require ext_code.size(address(_3680))
                                            call address(_3680).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len floor32(_3951) + 64]
                                    else:
                                        _3946 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2955)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3948 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3948:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3948 % 32:
                                            require ext_code.size(address(_3680))
                                            call address(_3680).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3948 + _3946 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3948) + _3946 + 164] = mem[floor32(_3948) + _3946 + -(_3948 % 32) + 196 len _3948 % 32]
                                            require ext_code.size(address(_3680))
                                            call address(_3680).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3948) + _3946 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3455 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3055))
                                staticcall address(_3055).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3455)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3681 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2955)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3957 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3957:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3957 % 32:
                                        require ext_code.size(address(_3681))
                                        call address(_3681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len _3957 + 32]
                                    else:
                                        mem[floor32(_3957) + mem[64] + 164] = mem[floor32(_3957) + mem[64] + -(_3957 % 32) + 196 len _3957 % 32]
                                        require ext_code.size(address(_3681))
                                        call address(_3681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2955), 128, mem[mem[64] + 132 len floor32(_3957) + 64]
                                else:
                                    _3952 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2955)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3954 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3954:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3954 % 32:
                                        require ext_code.size(address(_3681))
                                        call address(_3681).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3954 + _3952 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3954) + _3952 + 164] = mem[floor32(_3954) + _3952 + -(_3954 % 32) + 196 len _3954 % 32]
                                        require ext_code.size(address(_3681))
                                        call address(_3681).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3954) + _3952 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                else:
                    idx = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3002 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3027 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = _3002
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = this.address
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]:
                                    mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32:
                                    require ext_code.size(address(_3027))
                                    call address(_3027).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3002, 0, address(this.address), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]]
                                else:
                                    mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32) + 484 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32]
                                    require ext_code.size(address(_3027))
                                    call address(_3027).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3002, 0, address(this.address), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + 32]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = _3002
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = this.address
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3158 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3158:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3158 % 32:
                                    require ext_code.size(address(_3027))
                                    call address(_3027).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3158 + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 448]
                                else:
                                    mem[floor32(_3158) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(_3158) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(_3158 % 32) + 484 len _3158 % 32]
                                    require ext_code.size(address(_3027))
                                    call address(_3027).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3158) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 480]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2957 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3028 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3059 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = _3028
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = address(_2957)
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]:
                                    mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32:
                                    require ext_code.size(address(_3059))
                                    call address(_3059).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3028, 0, address(_2957), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]]
                                else:
                                    mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32) + 484 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32]
                                    require ext_code.size(address(_3059))
                                    call address(_3059).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3028, 0, address(_2957), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + 32]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = _3028
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = address(_2957)
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3212 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3212:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3212 % 32:
                                    require ext_code.size(address(_3059))
                                    call address(_3059).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3212 + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 448]
                                else:
                                    mem[floor32(_3212) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(_3212) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(_3212 % 32) + 484 len _3212 % 32]
                                    require ext_code.size(address(_3059))
                                    call address(_3059).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3212) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = mem[192]
                require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
                call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 172 len 20], mem[192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = 0
                mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288
                if _1500 != 0:
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3030 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3060 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3030) == address(_3030):
                                    _3406 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3030))
                                    staticcall address(_3030).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3406)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3634 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3867 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3867:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3867 % 32:
                                            require ext_code.size(address(_3634))
                                            call address(_3634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3867 + 32]
                                        else:
                                            mem[floor32(_3867) + mem[64] + 164] = mem[floor32(_3867) + mem[64] + -(_3867 % 32) + 196 len _3867 % 32]
                                            require ext_code.size(address(_3634))
                                            call address(_3634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3867) + 64]
                                    else:
                                        _3862 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3864 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3864:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3864 % 32:
                                            require ext_code.size(address(_3634))
                                            call address(_3634).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3864 + _3862 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3864) + _3862 + 164] = mem[floor32(_3864) + _3862 + -(_3864 % 32) + 196 len _3864 % 32]
                                            require ext_code.size(address(_3634))
                                            call address(_3634).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3864) + _3862 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3409 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3030))
                                staticcall address(_3030).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3409)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3635 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3868 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3870 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3870:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3870 % 32:
                                        require ext_code.size(address(_3635))
                                        call address(_3635).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3870 + _3868 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3870) + _3868 + 164] = mem[floor32(_3870) + _3868 + -(_3870 % 32) + 196 len _3870 % 32]
                                        require ext_code.size(address(_3635))
                                        call address(_3635).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3870) + _3868 + -mem[64] + 192]
                                else:
                                    _3871 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3873 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3873:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3873 % 32:
                                        require ext_code.size(address(_3635))
                                        call address(_3635).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3873 + _3871 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3873) + _3871 + 164] = mem[floor32(_3873) + _3871 + -(_3873 % 32) + 196 len _3873 % 32]
                                        require ext_code.size(address(_3635))
                                        call address(_3635).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3873) + _3871 + -mem[64] + 192]
                            else:
                                if address(_3060) == address(_3030):
                                    _3412 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3030))
                                    staticcall address(_3030).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3412)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3636 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3879 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3879:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3879 % 32:
                                            require ext_code.size(address(_3636))
                                            call address(_3636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _3879 + 32]
                                        else:
                                            mem[floor32(_3879) + mem[64] + 164] = mem[floor32(_3879) + mem[64] + -(_3879 % 32) + 196 len _3879 % 32]
                                            require ext_code.size(address(_3636))
                                            call address(_3636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_3879) + 64]
                                    else:
                                        _3874 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3876 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3876:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3876 % 32:
                                            require ext_code.size(address(_3636))
                                            call address(_3636).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3876 + _3874 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3876) + _3874 + 164] = mem[floor32(_3876) + _3874 + -(_3876 % 32) + 196 len _3876 % 32]
                                            require ext_code.size(address(_3636))
                                            call address(_3636).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3876) + _3874 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3415 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3030))
                                staticcall address(_3030).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3415)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3637 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    _3880 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3882 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3882:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3882 % 32:
                                        require ext_code.size(address(_3637))
                                        call address(_3637).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3882 + _3880 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3882) + _3880 + 164] = mem[floor32(_3882) + _3880 + -(_3882 % 32) + 196 len _3882 % 32]
                                        require ext_code.size(address(_3637))
                                        call address(_3637).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3882) + _3880 + -mem[64] + 192]
                                else:
                                    _3883 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3885 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3885:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3885 % 32:
                                        require ext_code.size(address(_3637))
                                        call address(_3637).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3885 + _3883 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3885) + _3883 + 164] = mem[floor32(_3885) + _3883 + -(_3885 % 32) + 196 len _3885 % 32]
                                        require ext_code.size(address(_3637))
                                        call address(_3637).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3885) + _3883 + -mem[64] + 192]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2959 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3061 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            _3079 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            require idx < mem[(32 * arg1.length) + 128]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                if address(_3061) == address(_3061):
                                    _3458 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3061))
                                    staticcall address(_3061).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3458)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3690 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2959)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3960 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3960:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3960 % 32:
                                            require ext_code.size(address(_3690))
                                            call address(_3690).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_2959), 128, mem[mem[64] + 132 len _3960 + 32]
                                        else:
                                            mem[floor32(_3960) + mem[64] + 164] = mem[floor32(_3960) + mem[64] + -(_3960 % 32) + 196 len _3960 % 32]
                                            require ext_code.size(address(_3690))
                                            call address(_3690).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_2959), 128, mem[mem[64] + 132 len floor32(_3960) + 64]
                                    else:
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2959)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3963 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3963:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3963 % 32:
                                            require ext_code.size(address(_3690))
                                            call address(_3690).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2959), 128, mem[mem[64] + 132 len _3963 + 32]
                                        else:
                                            mem[floor32(_3963) + mem[64] + 164] = mem[floor32(_3963) + mem[64] + -(_3963 % 32) + 196 len _3963 % 32]
                                            require ext_code.size(address(_3690))
                                            call address(_3690).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_2959), 128, mem[mem[64] + 132 len floor32(_3963) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3461 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3061))
                                staticcall address(_3061).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3461)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3691 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2959)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3969 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3969:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3969 % 32:
                                        require ext_code.size(address(_3691))
                                        call address(_3691).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2959), 128, mem[mem[64] + 132 len _3969 + 32]
                                    else:
                                        mem[floor32(_3969) + mem[64] + 164] = mem[floor32(_3969) + mem[64] + -(_3969 % 32) + 196 len _3969 % 32]
                                        require ext_code.size(address(_3691))
                                        call address(_3691).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_2959), 128, mem[mem[64] + 132 len floor32(_3969) + 64]
                                else:
                                    _3964 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2959)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3966 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3966:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3966 % 32:
                                        require ext_code.size(address(_3691))
                                        call address(_3691).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3966 + _3964 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3966) + _3964 + 164] = mem[floor32(_3966) + _3964 + -(_3966 % 32) + 196 len _3966 % 32]
                                        require ext_code.size(address(_3691))
                                        call address(_3691).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3966) + _3964 + -mem[64] + 192]
                            else:
                                if address(_3079) == address(_3061):
                                    _3464 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                    require ext_code.size(address(_3061))
                                    staticcall address(_3061).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_3464)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    _3692 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                        _3970 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 68] = address(_2959)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3972 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3972:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3972 % 32:
                                            require ext_code.size(address(_3692))
                                            call address(_3692).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3972 + _3970 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3972) + _3970 + 164] = mem[floor32(_3972) + _3970 + -(_3972 % 32) + 196 len _3972 % 32]
                                            require ext_code.size(address(_3692))
                                            call address(_3692).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3972) + _3970 + -mem[64] + 192]
                                    else:
                                        _3973 = mem[64]
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_2959)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        _3975 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                        s = 0
                                        while s < _3975:
                                            mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                            s = s + 32
                                            continue 
                                        if not _3975 % 32:
                                            require ext_code.size(address(_3692))
                                            call address(_3692).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3975 + _3973 + -mem[64] + 160]
                                        else:
                                            mem[floor32(_3975) + _3973 + 164] = mem[floor32(_3975) + _3973 + -(_3975 % 32) + 196 len _3975 % 32]
                                            require ext_code.size(address(_3692))
                                            call address(_3692).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len floor32(_3975) + _3973 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    continue 
                                _3467 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                                require ext_code.size(address(_3061))
                                staticcall address(_3061).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3467)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg1.length) + 128]
                                _3693 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 68] = address(_2959)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3978 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3978:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3978 % 32:
                                        require ext_code.size(address(_3693))
                                        call address(_3693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2959), 128, mem[mem[64] + 132 len _3978 + 32]
                                    else:
                                        mem[floor32(_3978) + mem[64] + 164] = mem[floor32(_3978) + mem[64] + -(_3978 % 32) + 196 len _3978 % 32]
                                        require ext_code.size(address(_3693))
                                        call address(_3693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_2959), 128, mem[mem[64] + 132 len floor32(_3978) + 64]
                                else:
                                    _3979 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_2959)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    _3981 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                    s = 0
                                    while s < _3981:
                                        mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                        s = s + 32
                                        continue 
                                    if not _3981 % 32:
                                        require ext_code.size(address(_3693))
                                        call address(_3693).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3981 + _3979 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_3981) + _3979 + 164] = mem[floor32(_3981) + _3979 + -(_3981 % 32) + 196 len _3981 % 32]
                                        require ext_code.size(address(_3693))
                                        call address(_3693).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_3981) + _3979 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                else:
                    idx = 0
                    while idx < arg2.length:
                        if idx + 1 == arg2.length:
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3008 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3033 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = _3008
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = this.address
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]:
                                    mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32:
                                    require ext_code.size(address(_3033))
                                    call address(_3033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3008, address(this.address), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]]
                                else:
                                    mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32) + 484 len mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] % 32]
                                    require ext_code.size(address(_3033))
                                    call address(_3033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3008, address(this.address), 128, mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + 32]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = _3008
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = this.address
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3175 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3175:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3175 % 32:
                                    require ext_code.size(address(_3033))
                                    call address(_3033).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3175 + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 448]
                                else:
                                    mem[floor32(_3175) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(_3175) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(_3175 % 32) + 484 len _3175 % 32]
                                    require ext_code.size(address(_3033))
                                    call address(_3033).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3175) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 480]
                        else:
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            _2961 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                            _3034 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                            require idx < mem[(32 * arg1.length) + 128]
                            _3065 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = _3034
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = address(_2961)
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3224 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3224:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3224 % 32:
                                    require ext_code.size(address(_3065))
                                    call address(_3065).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3224 + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 448]
                                else:
                                    mem[floor32(_3224) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(_3224) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(_3224 % 32) + 484 len _3224 % 32]
                                    require ext_code.size(address(_3065))
                                    call address(_3065).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3224) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 480]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 292] = _3034
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 324] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 356] = address(_2961)
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 388] = 128
                                mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 420] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                _3227 = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]
                                s = 0
                                while s < _3227:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288]
                                    s = s + 32
                                    continue 
                                if not _3227 % 32:
                                    require ext_code.size(address(_3065))
                                    call address(_3065).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3227 + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 448]
                                else:
                                    mem[floor32(_3227) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 452] = mem[floor32(_3227) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -(_3227 % 32) + 484 len _3227 % 32]
                                    require ext_code.size(address(_3065))
                                    call address(_3065).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_3227) + (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 416] = _1500 != 0
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288] = 160
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 448] = arg3.length
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 480 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 320] = (32 * arg3.length) + 192
            mem[(98 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 480] = arg2.length
            mem[(98 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 512 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 352] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[(64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 512] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            mem[(64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 544 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 384] = (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 256
            mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 544] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            _4604 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])]
            mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256] = (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288
            mem[64] = (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576
            require 0 < arg1.length
            require 1 < arg1.length
            require 2 < arg1.length
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 580] = mem[160]
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 612] = mem[192]
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 644] = this.address
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 676] = 128
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708] = (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288
            mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 740 len floor32((32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 31) + 9] = mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288 len floor32((32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 31) + 9]
            if not (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288 % 32:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[160], mem[192], address(this.address), 128, mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708 len (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 320]
            else:
                mem[floor32((32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288) + (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 740] = mem[floor32((32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288) + (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + -((32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288 % 32) + 772 len (32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (32 * arg2.length) + (32 * arg3.length) + 288 % 32]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[160], mem[192], address(this.address), 128, mem[(32 * _4604) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) + (64 * arg2.length) + (98 * arg3.length) + (32 * arg1.length) + (32 * arg4.length) + 708 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
