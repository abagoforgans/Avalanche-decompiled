contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a06c6db(?)
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
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NO MONEYYY'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1109 + 32]
                                else:
                                    mem[floor32(_1109) + mem[64] + 164] = mem[floor32(_1109) + mem[64] + -(_1109 % 32) + 196 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1109) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1112 + 32]
                                else:
                                    mem[floor32(_1112) + mem[64] + 164] = mem[floor32(_1112) + mem[64] + -(_1112 % 32) + 196 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1112) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1115 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1115:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1115 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1115 + 32]
                            else:
                                mem[floor32(_1115) + mem[64] + 164] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 196 len _1115 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1115) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1118 + 32]
                            else:
                                mem[floor32(_1118) + mem[64] + 164] = mem[floor32(_1118) + mem[64] + -(_1118 % 32) + 196 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1118) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_742) != address(_725):
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1127 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1127:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1127 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1127 + 32]
                            else:
                                mem[floor32(_1127) + mem[64] + 164] = mem[floor32(_1127) + mem[64] + -(_1127 % 32) + 196 len _1127 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1127) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1130 + 32]
                            else:
                                mem[floor32(_1130) + mem[64] + 164] = mem[floor32(_1130) + mem[64] + -(_1130 % 32) + 196 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1130) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_725))
                    staticcall address(_725).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_897)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1121 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1121:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1121 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1121 + 32]
                        else:
                            mem[floor32(_1121) + mem[64] + 164] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 196 len _1121 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1121) + 64]
                    else:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1124 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1124:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1124 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1124 + _1122 + -mem[64] + 160]
                        else:
                            mem[floor32(_1124) + _1122 + 164] = mem[floor32(_1124) + _1122 + -(_1124 % 32) + 196 len _1124 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1124) + _1122 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _743 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _755 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_743) == address(_743):
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1157 + 32]
                            else:
                                mem[floor32(_1157) + mem[64] + 164] = mem[floor32(_1157) + mem[64] + -(_1157 % 32) + 196 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1157) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1160 + 32]
                            else:
                                mem[floor32(_1160) + mem[64] + 164] = mem[floor32(_1160) + mem[64] + -(_1160 % 32) + 196 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1160) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_926)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1166 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1166:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1166 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1166 + 32]
                        else:
                            mem[floor32(_1166) + mem[64] + 164] = mem[floor32(_1166) + mem[64] + -(_1166 % 32) + 196 len _1166 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1166) + 64]
                    else:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1163 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1163:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1163 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1163 + _1161 + -mem[64] + 160]
                        else:
                            mem[floor32(_1163) + _1161 + 164] = mem[floor32(_1163) + _1161 + -(_1163 % 32) + 196 len _1163 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1163) + _1161 + -mem[64] + 192]
                else:
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1169 + 32]
                            else:
                                mem[floor32(_1169) + mem[64] + 164] = mem[floor32(_1169) + mem[64] + -(_1169 % 32) + 196 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1169) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1172 + 32]
                            else:
                                mem[floor32(_1172) + mem[64] + 164] = mem[floor32(_1172) + mem[64] + -(_1172 % 32) + 196 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1172) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1175 + 32]
                        else:
                            mem[floor32(_1175) + mem[64] + 164] = mem[floor32(_1175) + mem[64] + -(_1175 % 32) + 196 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1175) + 64]
                    else:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1178 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1178:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1178 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1178 + _1176 + -mem[64] + 160]
                        else:
                            mem[floor32(_1178) + _1176 + 164] = mem[floor32(_1178) + _1176 + -(_1178 % 32) + 196 len _1178 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1178) + _1176 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _788 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_788 % 32) + 452 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _811 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_811 % 32) + 452 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _814 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_814 % 32) + 452 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + mem[64] + 164] = mem[floor32(_1133) + mem[64] + -(_1133 % 32) + 196 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1133) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + mem[64] + 164] = mem[floor32(_1136) + mem[64] + -(_1136 % 32) + 196 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            _1137 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1139 + _1137 + -mem[64] + 160]
                            else:
                                mem[floor32(_1139) + _1137 + 164] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 196 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + _1137 + -mem[64] + 192]
                        else:
                            _1140 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1142 + _1140 + -mem[64] + 160]
                            else:
                                mem[floor32(_1142) + _1140 + 164] = mem[floor32(_1142) + _1140 + -(_1142 % 32) + 196 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + _1140 + -mem[64] + 192]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1145 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1145:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1145 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1145 + 32]
                                else:
                                    mem[floor32(_1145) + mem[64] + 164] = mem[floor32(_1145) + mem[64] + -(_1145 % 32) + 196 len _1145 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1145) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1148 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1148:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1148 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1148 + 32]
                                else:
                                    mem[floor32(_1148) + mem[64] + 164] = mem[floor32(_1148) + mem[64] + -(_1148 % 32) + 196 len _1148 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1148) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1151 + 32]
                            else:
                                mem[floor32(_1151) + mem[64] + 164] = mem[floor32(_1151) + mem[64] + -(_1151 % 32) + 196 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1151) + 64]
                        else:
                            _1152 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1154 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1154:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1154 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1154 + _1152 + -mem[64] + 160]
                            else:
                                mem[floor32(_1154) + _1152 + 164] = mem[floor32(_1154) + _1152 + -(_1154 % 32) + 196 len _1154 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1154) + _1152 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _750 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _759 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_750) == address(_750):
                        _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_935)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1181:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1181 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1181 + 32]
                            else:
                                mem[floor32(_1181) + mem[64] + 164] = mem[floor32(_1181) + mem[64] + -(_1181 % 32) + 196 len _1181 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1181) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1184:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1184 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1184 + 32]
                            else:
                                mem[floor32(_1184) + mem[64] + 164] = mem[floor32(_1184) + mem[64] + -(_1184 % 32) + 196 len _1184 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1184) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_938)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _1185 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1187 + _1185 + -mem[64] + 160]
                        else:
                            mem[floor32(_1187) + _1185 + 164] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 196 len _1187 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1187) + _1185 + -mem[64] + 192]
                    else:
                        _1188 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1190 + _1188 + -mem[64] + 160]
                        else:
                            mem[floor32(_1190) + _1188 + 164] = mem[floor32(_1190) + _1188 + -(_1190 % 32) + 196 len _1190 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1190) + _1188 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                if address(_759) != address(_750):
                    _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_944)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1199:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1199 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1199 + 32]
                        else:
                            mem[floor32(_1199) + mem[64] + 164] = mem[floor32(_1199) + mem[64] + -(_1199 % 32) + 196 len _1199 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1199) + 64]
                    else:
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1202:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1202 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1202 + 32]
                        else:
                            mem[floor32(_1202) + mem[64] + 164] = mem[floor32(_1202) + mem[64] + -(_1202 % 32) + 196 len _1202 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1202) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                require ext_code.size(address(_750))
                staticcall address(_750).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_941)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    s = 0
                    while s < _1193:
                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                        s = s + 32
                        continue 
                    if not _1193 % 32:
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1193 + 32]
                    else:
                        mem[floor32(_1193) + mem[64] + 164] = mem[floor32(_1193) + mem[64] + -(_1193 % 32) + 196 len _1193 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1193) + 64]
                else:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                            args mem[mem[64] + 4 len _1196 + _1194 + -mem[64] + 160]
                    else:
                        mem[floor32(_1196) + _1194 + 164] = mem[floor32(_1196) + _1194 + -(_1196 % 32) + 196 len _1196 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1196) + _1194 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _802 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_802 % 32) + 452 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1109 + 32]
                                else:
                                    mem[floor32(_1109) + mem[64] + 164] = mem[floor32(_1109) + mem[64] + -(_1109 % 32) + 196 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1109) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1112 + 32]
                                else:
                                    mem[floor32(_1112) + mem[64] + 164] = mem[floor32(_1112) + mem[64] + -(_1112 % 32) + 196 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1112) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1115 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1115:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1115 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1115 + 32]
                            else:
                                mem[floor32(_1115) + mem[64] + 164] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 196 len _1115 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1115) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1118 + 32]
                            else:
                                mem[floor32(_1118) + mem[64] + 164] = mem[floor32(_1118) + mem[64] + -(_1118 % 32) + 196 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1118) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_742) != address(_725):
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1127 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1127:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1127 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1127 + 32]
                            else:
                                mem[floor32(_1127) + mem[64] + 164] = mem[floor32(_1127) + mem[64] + -(_1127 % 32) + 196 len _1127 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1127) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1130 + 32]
                            else:
                                mem[floor32(_1130) + mem[64] + 164] = mem[floor32(_1130) + mem[64] + -(_1130 % 32) + 196 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1130) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_725))
                    staticcall address(_725).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_897)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1121 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1121:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1121 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1121 + 32]
                        else:
                            mem[floor32(_1121) + mem[64] + 164] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 196 len _1121 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1121) + 64]
                    else:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1124 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1124:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1124 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1124 + _1122 + -mem[64] + 160]
                        else:
                            mem[floor32(_1124) + _1122 + 164] = mem[floor32(_1124) + _1122 + -(_1124 % 32) + 196 len _1124 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1124) + _1122 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _743 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _755 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_743) == address(_743):
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1157 + 32]
                            else:
                                mem[floor32(_1157) + mem[64] + 164] = mem[floor32(_1157) + mem[64] + -(_1157 % 32) + 196 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1157) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1160 + 32]
                            else:
                                mem[floor32(_1160) + mem[64] + 164] = mem[floor32(_1160) + mem[64] + -(_1160 % 32) + 196 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1160) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_926)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1166 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1166:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1166 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1166 + 32]
                        else:
                            mem[floor32(_1166) + mem[64] + 164] = mem[floor32(_1166) + mem[64] + -(_1166 % 32) + 196 len _1166 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1166) + 64]
                    else:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1163 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1163:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1163 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1163 + _1161 + -mem[64] + 160]
                        else:
                            mem[floor32(_1163) + _1161 + 164] = mem[floor32(_1163) + _1161 + -(_1163 % 32) + 196 len _1163 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1163) + _1161 + -mem[64] + 192]
                else:
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1169 + 32]
                            else:
                                mem[floor32(_1169) + mem[64] + 164] = mem[floor32(_1169) + mem[64] + -(_1169 % 32) + 196 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1169) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1172 + 32]
                            else:
                                mem[floor32(_1172) + mem[64] + 164] = mem[floor32(_1172) + mem[64] + -(_1172 % 32) + 196 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1172) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1175 + 32]
                        else:
                            mem[floor32(_1175) + mem[64] + 164] = mem[floor32(_1175) + mem[64] + -(_1175 % 32) + 196 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1175) + 64]
                    else:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1178 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1178:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1178 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1178 + _1176 + -mem[64] + 160]
                        else:
                            mem[floor32(_1178) + _1176 + 164] = mem[floor32(_1178) + _1176 + -(_1178 % 32) + 196 len _1178 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1178) + _1176 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _788 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_788 % 32) + 452 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _811 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_811 % 32) + 452 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _814 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_814 % 32) + 452 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + mem[64] + 164] = mem[floor32(_1133) + mem[64] + -(_1133 % 32) + 196 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1133) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + mem[64] + 164] = mem[floor32(_1136) + mem[64] + -(_1136 % 32) + 196 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            _1137 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1139 + _1137 + -mem[64] + 160]
                            else:
                                mem[floor32(_1139) + _1137 + 164] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 196 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + _1137 + -mem[64] + 192]
                        else:
                            _1140 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1142 + _1140 + -mem[64] + 160]
                            else:
                                mem[floor32(_1142) + _1140 + 164] = mem[floor32(_1142) + _1140 + -(_1142 % 32) + 196 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + _1140 + -mem[64] + 192]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1145 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1145:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1145 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1145 + 32]
                                else:
                                    mem[floor32(_1145) + mem[64] + 164] = mem[floor32(_1145) + mem[64] + -(_1145 % 32) + 196 len _1145 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1145) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1148 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1148:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1148 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1148 + 32]
                                else:
                                    mem[floor32(_1148) + mem[64] + 164] = mem[floor32(_1148) + mem[64] + -(_1148 % 32) + 196 len _1148 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1148) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1151 + 32]
                            else:
                                mem[floor32(_1151) + mem[64] + 164] = mem[floor32(_1151) + mem[64] + -(_1151 % 32) + 196 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1151) + 64]
                        else:
                            _1152 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1154 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1154:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1154 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1154 + _1152 + -mem[64] + 160]
                            else:
                                mem[floor32(_1154) + _1152 + 164] = mem[floor32(_1154) + _1152 + -(_1154 % 32) + 196 len _1154 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1154) + _1152 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _750 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _759 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_750) == address(_750):
                        _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_935)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1181:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1181 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1181 + 32]
                            else:
                                mem[floor32(_1181) + mem[64] + 164] = mem[floor32(_1181) + mem[64] + -(_1181 % 32) + 196 len _1181 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1181) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1184:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1184 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1184 + 32]
                            else:
                                mem[floor32(_1184) + mem[64] + 164] = mem[floor32(_1184) + mem[64] + -(_1184 % 32) + 196 len _1184 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1184) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_938)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _1185 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1187 + _1185 + -mem[64] + 160]
                        else:
                            mem[floor32(_1187) + _1185 + 164] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 196 len _1187 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1187) + _1185 + -mem[64] + 192]
                    else:
                        _1188 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1190 + _1188 + -mem[64] + 160]
                        else:
                            mem[floor32(_1190) + _1188 + 164] = mem[floor32(_1190) + _1188 + -(_1190 % 32) + 196 len _1190 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1190) + _1188 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                if address(_759) != address(_750):
                    _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_944)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1199:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1199 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1199 + 32]
                        else:
                            mem[floor32(_1199) + mem[64] + 164] = mem[floor32(_1199) + mem[64] + -(_1199 % 32) + 196 len _1199 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1199) + 64]
                    else:
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1202:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1202 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1202 + 32]
                        else:
                            mem[floor32(_1202) + mem[64] + 164] = mem[floor32(_1202) + mem[64] + -(_1202 % 32) + 196 len _1202 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1202) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                require ext_code.size(address(_750))
                staticcall address(_750).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_941)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    s = 0
                    while s < _1193:
                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                        s = s + 32
                        continue 
                    if not _1193 % 32:
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1193 + 32]
                    else:
                        mem[floor32(_1193) + mem[64] + 164] = mem[floor32(_1193) + mem[64] + -(_1193 % 32) + 196 len _1193 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1193) + 64]
                else:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                            args mem[mem[64] + 4 len _1196 + _1194 + -mem[64] + 160]
                    else:
                        mem[floor32(_1196) + _1194 + 164] = mem[floor32(_1196) + _1194 + -(_1196 % 32) + 196 len _1196 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1196) + _1194 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _802 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_802 % 32) + 452 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
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
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1109 + 32]
                                else:
                                    mem[floor32(_1109) + mem[64] + 164] = mem[floor32(_1109) + mem[64] + -(_1109 % 32) + 196 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1109) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1112 + 32]
                                else:
                                    mem[floor32(_1112) + mem[64] + 164] = mem[floor32(_1112) + mem[64] + -(_1112 % 32) + 196 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1112) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1115 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1115:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1115 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1115 + 32]
                            else:
                                mem[floor32(_1115) + mem[64] + 164] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 196 len _1115 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1115) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1118 + 32]
                            else:
                                mem[floor32(_1118) + mem[64] + 164] = mem[floor32(_1118) + mem[64] + -(_1118 % 32) + 196 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1118) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_742) != address(_725):
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1127 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1127:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1127 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1127 + 32]
                            else:
                                mem[floor32(_1127) + mem[64] + 164] = mem[floor32(_1127) + mem[64] + -(_1127 % 32) + 196 len _1127 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1127) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1130 + 32]
                            else:
                                mem[floor32(_1130) + mem[64] + 164] = mem[floor32(_1130) + mem[64] + -(_1130 % 32) + 196 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1130) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_725))
                    staticcall address(_725).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_897)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1121 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1121:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1121 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1121 + 32]
                        else:
                            mem[floor32(_1121) + mem[64] + 164] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 196 len _1121 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1121) + 64]
                    else:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1124 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1124:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1124 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1124 + _1122 + -mem[64] + 160]
                        else:
                            mem[floor32(_1124) + _1122 + 164] = mem[floor32(_1124) + _1122 + -(_1124 % 32) + 196 len _1124 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1124) + _1122 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _743 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _755 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_743) == address(_743):
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1157 + 32]
                            else:
                                mem[floor32(_1157) + mem[64] + 164] = mem[floor32(_1157) + mem[64] + -(_1157 % 32) + 196 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1157) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1160 + 32]
                            else:
                                mem[floor32(_1160) + mem[64] + 164] = mem[floor32(_1160) + mem[64] + -(_1160 % 32) + 196 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1160) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_926)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1166 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1166:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1166 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1166 + 32]
                        else:
                            mem[floor32(_1166) + mem[64] + 164] = mem[floor32(_1166) + mem[64] + -(_1166 % 32) + 196 len _1166 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1166) + 64]
                    else:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1163 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1163:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1163 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1163 + _1161 + -mem[64] + 160]
                        else:
                            mem[floor32(_1163) + _1161 + 164] = mem[floor32(_1163) + _1161 + -(_1163 % 32) + 196 len _1163 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1163) + _1161 + -mem[64] + 192]
                else:
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1169 + 32]
                            else:
                                mem[floor32(_1169) + mem[64] + 164] = mem[floor32(_1169) + mem[64] + -(_1169 % 32) + 196 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1169) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1172 + 32]
                            else:
                                mem[floor32(_1172) + mem[64] + 164] = mem[floor32(_1172) + mem[64] + -(_1172 % 32) + 196 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1172) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1175 + 32]
                        else:
                            mem[floor32(_1175) + mem[64] + 164] = mem[floor32(_1175) + mem[64] + -(_1175 % 32) + 196 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1175) + 64]
                    else:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1178 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1178:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1178 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1178 + _1176 + -mem[64] + 160]
                        else:
                            mem[floor32(_1178) + _1176 + 164] = mem[floor32(_1178) + _1176 + -(_1178 % 32) + 196 len _1178 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1178) + _1176 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _788 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_788 % 32) + 452 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _811 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_811 % 32) + 452 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _814 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_814 % 32) + 452 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + mem[64] + 164] = mem[floor32(_1133) + mem[64] + -(_1133 % 32) + 196 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1133) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + mem[64] + 164] = mem[floor32(_1136) + mem[64] + -(_1136 % 32) + 196 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            _1137 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1139 + _1137 + -mem[64] + 160]
                            else:
                                mem[floor32(_1139) + _1137 + 164] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 196 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + _1137 + -mem[64] + 192]
                        else:
                            _1140 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1142 + _1140 + -mem[64] + 160]
                            else:
                                mem[floor32(_1142) + _1140 + 164] = mem[floor32(_1142) + _1140 + -(_1142 % 32) + 196 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + _1140 + -mem[64] + 192]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1145 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1145:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1145 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1145 + 32]
                                else:
                                    mem[floor32(_1145) + mem[64] + 164] = mem[floor32(_1145) + mem[64] + -(_1145 % 32) + 196 len _1145 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1145) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1148 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1148:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1148 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1148 + 32]
                                else:
                                    mem[floor32(_1148) + mem[64] + 164] = mem[floor32(_1148) + mem[64] + -(_1148 % 32) + 196 len _1148 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1148) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1151 + 32]
                            else:
                                mem[floor32(_1151) + mem[64] + 164] = mem[floor32(_1151) + mem[64] + -(_1151 % 32) + 196 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1151) + 64]
                        else:
                            _1152 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1154 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1154:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1154 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1154 + _1152 + -mem[64] + 160]
                            else:
                                mem[floor32(_1154) + _1152 + 164] = mem[floor32(_1154) + _1152 + -(_1154 % 32) + 196 len _1154 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1154) + _1152 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _750 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _759 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_750) == address(_750):
                        _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_935)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1181:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1181 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1181 + 32]
                            else:
                                mem[floor32(_1181) + mem[64] + 164] = mem[floor32(_1181) + mem[64] + -(_1181 % 32) + 196 len _1181 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1181) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1184:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1184 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1184 + 32]
                            else:
                                mem[floor32(_1184) + mem[64] + 164] = mem[floor32(_1184) + mem[64] + -(_1184 % 32) + 196 len _1184 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1184) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_938)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _1185 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1187 + _1185 + -mem[64] + 160]
                        else:
                            mem[floor32(_1187) + _1185 + 164] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 196 len _1187 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1187) + _1185 + -mem[64] + 192]
                    else:
                        _1188 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1190 + _1188 + -mem[64] + 160]
                        else:
                            mem[floor32(_1190) + _1188 + 164] = mem[floor32(_1190) + _1188 + -(_1190 % 32) + 196 len _1190 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1190) + _1188 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                if address(_759) != address(_750):
                    _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_944)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1199:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1199 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1199 + 32]
                        else:
                            mem[floor32(_1199) + mem[64] + 164] = mem[floor32(_1199) + mem[64] + -(_1199 % 32) + 196 len _1199 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1199) + 64]
                    else:
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1202:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1202 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1202 + 32]
                        else:
                            mem[floor32(_1202) + mem[64] + 164] = mem[floor32(_1202) + mem[64] + -(_1202 % 32) + 196 len _1202 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1202) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                require ext_code.size(address(_750))
                staticcall address(_750).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_941)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    s = 0
                    while s < _1193:
                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                        s = s + 32
                        continue 
                    if not _1193 % 32:
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1193 + 32]
                    else:
                        mem[floor32(_1193) + mem[64] + 164] = mem[floor32(_1193) + mem[64] + -(_1193 % 32) + 196 len _1193 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1193) + 64]
                else:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                            args mem[mem[64] + 4 len _1196 + _1194 + -mem[64] + 160]
                    else:
                        mem[floor32(_1196) + _1194 + 164] = mem[floor32(_1196) + _1194 + -(_1196 % 32) + 196 len _1196 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1196) + _1194 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _802 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_802 % 32) + 452 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1109 + 32]
                                else:
                                    mem[floor32(_1109) + mem[64] + 164] = mem[floor32(_1109) + mem[64] + -(_1109 % 32) + 196 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1109) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1112 + 32]
                                else:
                                    mem[floor32(_1112) + mem[64] + 164] = mem[floor32(_1112) + mem[64] + -(_1112 % 32) + 196 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1112) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1115 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1115:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1115 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1115 + 32]
                            else:
                                mem[floor32(_1115) + mem[64] + 164] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 196 len _1115 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1115) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1118 + 32]
                            else:
                                mem[floor32(_1118) + mem[64] + 164] = mem[floor32(_1118) + mem[64] + -(_1118 % 32) + 196 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1118) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_742) != address(_725):
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1127 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1127:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1127 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1127 + 32]
                            else:
                                mem[floor32(_1127) + mem[64] + 164] = mem[floor32(_1127) + mem[64] + -(_1127 % 32) + 196 len _1127 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1127) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1130 + 32]
                            else:
                                mem[floor32(_1130) + mem[64] + 164] = mem[floor32(_1130) + mem[64] + -(_1130 % 32) + 196 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1130) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_725))
                    staticcall address(_725).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_897)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1121 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1121:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1121 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1121 + 32]
                        else:
                            mem[floor32(_1121) + mem[64] + 164] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 196 len _1121 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1121) + 64]
                    else:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1124 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1124:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1124 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1124 + _1122 + -mem[64] + 160]
                        else:
                            mem[floor32(_1124) + _1122 + 164] = mem[floor32(_1124) + _1122 + -(_1124 % 32) + 196 len _1124 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1124) + _1122 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _743 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _755 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_743) == address(_743):
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1157 + 32]
                            else:
                                mem[floor32(_1157) + mem[64] + 164] = mem[floor32(_1157) + mem[64] + -(_1157 % 32) + 196 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1157) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1160 + 32]
                            else:
                                mem[floor32(_1160) + mem[64] + 164] = mem[floor32(_1160) + mem[64] + -(_1160 % 32) + 196 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1160) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_926)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1166 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1166:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1166 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1166 + 32]
                        else:
                            mem[floor32(_1166) + mem[64] + 164] = mem[floor32(_1166) + mem[64] + -(_1166 % 32) + 196 len _1166 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1166) + 64]
                    else:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1163 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1163:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1163 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1163 + _1161 + -mem[64] + 160]
                        else:
                            mem[floor32(_1163) + _1161 + 164] = mem[floor32(_1163) + _1161 + -(_1163 % 32) + 196 len _1163 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1163) + _1161 + -mem[64] + 192]
                else:
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1169 + 32]
                            else:
                                mem[floor32(_1169) + mem[64] + 164] = mem[floor32(_1169) + mem[64] + -(_1169 % 32) + 196 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1169) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1172 + 32]
                            else:
                                mem[floor32(_1172) + mem[64] + 164] = mem[floor32(_1172) + mem[64] + -(_1172 % 32) + 196 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1172) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1175 + 32]
                        else:
                            mem[floor32(_1175) + mem[64] + 164] = mem[floor32(_1175) + mem[64] + -(_1175 % 32) + 196 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1175) + 64]
                    else:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1178 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1178:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1178 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1178 + _1176 + -mem[64] + 160]
                        else:
                            mem[floor32(_1178) + _1176 + 164] = mem[floor32(_1178) + _1176 + -(_1178 % 32) + 196 len _1178 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1178) + _1176 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _788 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_788 % 32) + 452 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _811 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_811 % 32) + 452 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _814 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_814 % 32) + 452 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + mem[64] + 164] = mem[floor32(_1133) + mem[64] + -(_1133 % 32) + 196 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1133) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + mem[64] + 164] = mem[floor32(_1136) + mem[64] + -(_1136 % 32) + 196 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            _1137 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1139 + _1137 + -mem[64] + 160]
                            else:
                                mem[floor32(_1139) + _1137 + 164] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 196 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + _1137 + -mem[64] + 192]
                        else:
                            _1140 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1142 + _1140 + -mem[64] + 160]
                            else:
                                mem[floor32(_1142) + _1140 + 164] = mem[floor32(_1142) + _1140 + -(_1142 % 32) + 196 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + _1140 + -mem[64] + 192]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1145 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1145:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1145 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1145 + 32]
                                else:
                                    mem[floor32(_1145) + mem[64] + 164] = mem[floor32(_1145) + mem[64] + -(_1145 % 32) + 196 len _1145 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1145) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1148 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1148:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1148 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1148 + 32]
                                else:
                                    mem[floor32(_1148) + mem[64] + 164] = mem[floor32(_1148) + mem[64] + -(_1148 % 32) + 196 len _1148 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1148) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1151 + 32]
                            else:
                                mem[floor32(_1151) + mem[64] + 164] = mem[floor32(_1151) + mem[64] + -(_1151 % 32) + 196 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1151) + 64]
                        else:
                            _1152 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1154 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1154:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1154 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1154 + _1152 + -mem[64] + 160]
                            else:
                                mem[floor32(_1154) + _1152 + 164] = mem[floor32(_1154) + _1152 + -(_1154 % 32) + 196 len _1154 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1154) + _1152 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _750 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _759 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_750) == address(_750):
                        _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_935)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1181:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1181 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1181 + 32]
                            else:
                                mem[floor32(_1181) + mem[64] + 164] = mem[floor32(_1181) + mem[64] + -(_1181 % 32) + 196 len _1181 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1181) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1184:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1184 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1184 + 32]
                            else:
                                mem[floor32(_1184) + mem[64] + 164] = mem[floor32(_1184) + mem[64] + -(_1184 % 32) + 196 len _1184 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1184) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_938)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _1185 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1187 + _1185 + -mem[64] + 160]
                        else:
                            mem[floor32(_1187) + _1185 + 164] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 196 len _1187 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1187) + _1185 + -mem[64] + 192]
                    else:
                        _1188 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1190 + _1188 + -mem[64] + 160]
                        else:
                            mem[floor32(_1190) + _1188 + 164] = mem[floor32(_1190) + _1188 + -(_1190 % 32) + 196 len _1190 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1190) + _1188 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                if address(_759) != address(_750):
                    _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_944)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1199:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1199 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1199 + 32]
                        else:
                            mem[floor32(_1199) + mem[64] + 164] = mem[floor32(_1199) + mem[64] + -(_1199 % 32) + 196 len _1199 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1199) + 64]
                    else:
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1202:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1202 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1202 + 32]
                        else:
                            mem[floor32(_1202) + mem[64] + 164] = mem[floor32(_1202) + mem[64] + -(_1202 % 32) + 196 len _1202 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1202) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                require ext_code.size(address(_750))
                staticcall address(_750).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_941)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    s = 0
                    while s < _1193:
                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                        s = s + 32
                        continue 
                    if not _1193 % 32:
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1193 + 32]
                    else:
                        mem[floor32(_1193) + mem[64] + 164] = mem[floor32(_1193) + mem[64] + -(_1193 % 32) + 196 len _1193 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1193) + 64]
                else:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                            args mem[mem[64] + 4 len _1196 + _1194 + -mem[64] + 160]
                    else:
                        mem[floor32(_1196) + _1194 + 164] = mem[floor32(_1196) + _1194 + -(_1196 % 32) + 196 len _1196 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1196) + _1194 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _802 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_802 % 32) + 452 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _742 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_725) == address(_725):
                            _891 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_725))
                            staticcall address(_725).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_891)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1011 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1109 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1109:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1109 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1109 + 32]
                                else:
                                    mem[floor32(_1109) + mem[64] + 164] = mem[floor32(_1109) + mem[64] + -(_1109 % 32) + 196 len _1109 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1109) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1112 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1112:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1112 % 32:
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1112 + 32]
                                else:
                                    mem[floor32(_1112) + mem[64] + 164] = mem[floor32(_1112) + mem[64] + -(_1112 % 32) + 196 len _1112 % 32]
                                    require ext_code.size(address(_1011))
                                    call address(_1011).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1112) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _894 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1012 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1115 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1115:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1115 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1115 + 32]
                            else:
                                mem[floor32(_1115) + mem[64] + 164] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 196 len _1115 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1115) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1118 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1118:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1118 % 32:
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1118 + 32]
                            else:
                                mem[floor32(_1118) + mem[64] + 164] = mem[floor32(_1118) + mem[64] + -(_1118 % 32) + 196 len _1118 % 32]
                                require ext_code.size(address(_1012))
                                call address(_1012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1118) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    if address(_742) != address(_725):
                        _900 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_725))
                        staticcall address(_725).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_900)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1014 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1127 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1127:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1127 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1127 + 32]
                            else:
                                mem[floor32(_1127) + mem[64] + 164] = mem[floor32(_1127) + mem[64] + -(_1127 % 32) + 196 len _1127 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1127) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1130 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1130:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1130 % 32:
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1130 + 32]
                            else:
                                mem[floor32(_1130) + mem[64] + 164] = mem[floor32(_1130) + mem[64] + -(_1130 % 32) + 196 len _1130 % 32]
                                require ext_code.size(address(_1014))
                                call address(_1014).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1130) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        continue 
                    _897 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_725))
                    staticcall address(_725).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_897)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1013 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1121 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1121:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1121 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1121 + 32]
                        else:
                            mem[floor32(_1121) + mem[64] + 164] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 196 len _1121 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1121) + 64]
                    else:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1124 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1124:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1124 % 32:
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1124 + _1122 + -mem[64] + 160]
                        else:
                            mem[floor32(_1124) + _1122 + 164] = mem[floor32(_1124) + _1122 + -(_1124 % 32) + 196 len _1124 % 32]
                            require ext_code.size(address(_1013))
                            call address(_1013).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1124) + _1122 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _685 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _743 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _755 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_743) == address(_743):
                        _923 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_923)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1043 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1157 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1157:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1157 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1157 + 32]
                            else:
                                mem[floor32(_1157) + mem[64] + 164] = mem[floor32(_1157) + mem[64] + -(_1157 % 32) + 196 len _1157 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1157) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1160 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1160:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1160 % 32:
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1160 + 32]
                            else:
                                mem[floor32(_1160) + mem[64] + 164] = mem[floor32(_1160) + mem[64] + -(_1160 % 32) + 196 len _1160 % 32]
                                require ext_code.size(address(_1043))
                                call address(_1043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1160) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _926 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_926)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1166 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1166:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1166 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1166 + 32]
                        else:
                            mem[floor32(_1166) + mem[64] + 164] = mem[floor32(_1166) + mem[64] + -(_1166 % 32) + 196 len _1166 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1166) + 64]
                    else:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1163 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1163:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1163 % 32:
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1163 + _1161 + -mem[64] + 160]
                        else:
                            mem[floor32(_1163) + _1161 + 164] = mem[floor32(_1163) + _1161 + -(_1163 % 32) + 196 len _1163 % 32]
                            require ext_code.size(address(_1044))
                            call address(_1044).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1163) + _1161 + -mem[64] + 192]
                else:
                    if address(_755) == address(_743):
                        _929 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_743))
                        staticcall address(_743).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_929)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1169 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1169:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1169 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1169 + 32]
                            else:
                                mem[floor32(_1169) + mem[64] + 164] = mem[floor32(_1169) + mem[64] + -(_1169 % 32) + 196 len _1169 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1169) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_685)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1172 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1172:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1172 % 32:
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len _1172 + 32]
                            else:
                                mem[floor32(_1172) + mem[64] + 164] = mem[floor32(_1172) + mem[64] + -(_1172 % 32) + 196 len _1172 % 32]
                                require ext_code.size(address(_1045))
                                call address(_1045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_685), 128, mem[mem[64] + 132 len floor32(_1172) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _932 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_743))
                    staticcall address(_743).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_932)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1175 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1175:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1175 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len _1175 + 32]
                        else:
                            mem[floor32(_1175) + mem[64] + 164] = mem[floor32(_1175) + mem[64] + -(_1175 % 32) + 196 len _1175 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_685), 128, mem[mem[64] + 132 len floor32(_1175) + 64]
                    else:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_685)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1178 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1178:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1178 % 32:
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1178 + _1176 + -mem[64] + 160]
                        else:
                            mem[floor32(_1178) + _1176 + 164] = mem[floor32(_1178) + _1176 + -(_1178 % 32) + 196 len _1178 % 32]
                            require ext_code.size(address(_1046))
                            call address(_1046).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1178) + _1176 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_9))
            call address(_9).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_730))
                            call address(_730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _712
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _788 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_788 % 32) + 452 len _788 % 32]
                            require ext_code.size(address(_730))
                            call address(_730).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_788) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _811 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_811 % 32) + 452 len _811 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_811) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _731
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_687)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _814 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _814:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _814 % 32:
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _814 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_814 % 32) + 452 len _814 % 32]
                            require ext_code.size(address(_747))
                            call address(_747).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_814) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        _11 = mem[128]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = arg3
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
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
                    require idx < mem[96]
                    _733 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _749 = mem[(32 * idx + 1) + 128]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if address(_733) == address(_733):
                            _907 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1133 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1133:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1133 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + mem[64] + 164] = mem[floor32(_1133) + mem[64] + -(_1133 % 32) + 196 len _1133 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1133) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1136 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1136:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1136 % 32:
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + mem[64] + 164] = mem[floor32(_1136) + mem[64] + -(_1136 % 32) + 196 len _1136 % 32]
                                    require ext_code.size(address(_1023))
                                    call address(_1023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _910 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_910)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1024 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            _1137 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1139 + _1137 + -mem[64] + 160]
                            else:
                                mem[floor32(_1139) + _1137 + 164] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 196 len _1139 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1139) + _1137 + -mem[64] + 192]
                        else:
                            _1140 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                    args mem[mem[64] + 4 len _1142 + _1140 + -mem[64] + 160]
                            else:
                                mem[floor32(_1142) + _1140 + 164] = mem[floor32(_1142) + _1140 + -(_1142 % 32) + 196 len _1142 % 32]
                                require ext_code.size(address(_1024))
                                call address(_1024).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1142) + _1140 + -mem[64] + 192]
                    else:
                        if address(_749) == address(_733):
                            _913 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                            require ext_code.size(address(_733))
                            staticcall address(_733).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_913)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                            _1025 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                            require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                            staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1145 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1145:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1145 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1145 + 32]
                                else:
                                    mem[floor32(_1145) + mem[64] + 164] = mem[floor32(_1145) + mem[64] + -(_1145 % 32) + 196 len _1145 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1145) + 64]
                            else:
                                mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                _1148 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                s = 0
                                while s < _1148:
                                    mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                    s = s + 32
                                    continue 
                                if not _1148 % 32:
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len _1148 + 32]
                                else:
                                    mem[floor32(_1148) + mem[64] + 164] = mem[floor32(_1148) + mem[64] + -(_1148 % 32) + 196 len _1148 % 32]
                                    require ext_code.size(address(_1025))
                                    call address(_1025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1148) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            continue 
                        _916 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_733))
                        staticcall address(_733).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1026 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1151:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1151 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len _1151 + 32]
                            else:
                                mem[floor32(_1151) + mem[64] + 164] = mem[floor32(_1151) + mem[64] + -(_1151 % 32) + 196 len _1151 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[mem[64] + 132 len floor32(_1151) + 64]
                        else:
                            _1152 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1154 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1154:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1154 % 32:
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1154 + _1152 + -mem[64] + 160]
                            else:
                                mem[floor32(_1154) + _1152 + 164] = mem[floor32(_1154) + _1152 + -(_1154 % 32) + 196 len _1154 % 32]
                                require ext_code.size(address(_1026))
                                call address(_1026).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1154) + _1152 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _690 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require idx < mem[96]
                _750 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _759 = mem[(32 * idx + 1) + 128]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if address(_750) == address(_750):
                        _935 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                        require ext_code.size(address(_750))
                        staticcall address(_750).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_935)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1055 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1181 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1181:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1181 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1181 + 32]
                            else:
                                mem[floor32(_1181) + mem[64] + 164] = mem[floor32(_1181) + mem[64] + -(_1181 % 32) + 196 len _1181 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1181) + 64]
                        else:
                            mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_690)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1184:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1184 % 32:
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1184 + 32]
                            else:
                                mem[floor32(_1184) + mem[64] + 164] = mem[floor32(_1184) + mem[64] + -(_1184 % 32) + 196 len _1184 % 32]
                                require ext_code.size(address(_1055))
                                call address(_1055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1184) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        continue 
                    _938 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_938)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        _1185 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1187 + _1185 + -mem[64] + 160]
                        else:
                            mem[floor32(_1187) + _1185 + 164] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 196 len _1187 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1187) + _1185 + -mem[64] + 192]
                    else:
                        _1188 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                                args mem[mem[64] + 4 len _1190 + _1188 + -mem[64] + 160]
                        else:
                            mem[floor32(_1190) + _1188 + 164] = mem[floor32(_1190) + _1188 + -(_1190 % 32) + 196 len _1190 % 32]
                            require ext_code.size(address(_1056))
                            call address(_1056).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1190) + _1188 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                if address(_759) != address(_750):
                    _944 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                    require ext_code.size(address(_750))
                    staticcall address(_750).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_944)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                    _1058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1199 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1199:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1199 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1199 + 32]
                        else:
                            mem[floor32(_1199) + mem[64] + 164] = mem[floor32(_1199) + mem[64] + -(_1199 % 32) + 196 len _1199 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1199) + 64]
                    else:
                        mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_690)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _1202 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _1202:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _1202 % 32:
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len _1202 + 32]
                        else:
                            mem[floor32(_1202) + mem[64] + 164] = mem[floor32(_1202) + mem[64] + -(_1202 % 32) + 196 len _1202 % 32]
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_690), 128, mem[mem[64] + 132 len floor32(_1202) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    continue 
                _941 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                require ext_code.size(address(_750))
                staticcall address(_750).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_941)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                _1057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    _1193 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                    s = 0
                    while s < _1193:
                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                        s = s + 32
                        continue 
                    if not _1193 % 32:
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len _1193 + 32]
                    else:
                        mem[floor32(_1193) + mem[64] + 164] = mem[floor32(_1193) + mem[64] + -(_1193 % 32) + 196 len _1193 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_690), 128, mem[mem[64] + 132 len floor32(_1193) + 64]
                else:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_690)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
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
                            args mem[mem[64] + 4 len _1196 + _1194 + -mem[64] + 160]
                    else:
                        mem[floor32(_1196) + _1194 + 164] = mem[floor32(_1196) + _1194 + -(_1196 % 32) + 196 len _1196 % 32]
                        require ext_code.size(address(_1057))
                        call address(_1057).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1196) + _1194 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(address(_11))
            call address(_11).transfer(address rg1, uint256 rg2) with:
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_738))
                            call address(_738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _721
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        _802 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < _802:
                            mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not _802 % 32:
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _802 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                        else:
                            mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_802 % 32) + 452 len _802 % 32]
                            require ext_code.size(address(_738))
                            call address(_738).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_802) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _739, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _739
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_692)
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                        s = 0
                        while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                            mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                            s = s + 32
                            continue 
                        if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                        else:
                            mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                            require ext_code.size(address(_754))
                            call address(_754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _739, 0, address(_692), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
