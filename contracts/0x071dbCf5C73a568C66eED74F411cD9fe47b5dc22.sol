contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a06c6db(?)
#
mapping of uint8 stor0;

function isUserPermissioned() {
    return bool(stor0[tx.origin])
}

function _fallback() payable {
    revert
}

function addUser(address arg1) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    stor0[address(arg1)] = 1
}

function removeUser(address arg1) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        revert with 0, 'Check origin !!!'
    stor0[address(arg1)] = 0
}

function drainMe(address arg1) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        if not stor0[tx.origin]:
            revert with 0, 'Check rights !!!'
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

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if 0x2cbc862857490c73d46f9f142dfd4b14df027d16 == tx.origin:
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
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
        if arg2 > 0:
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
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1448 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1481 = mem[(32 * idx + 1) + 128]
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
                            if address(_1448) == address(_1448):
                                _1780 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1448))
                                staticcall address(_1448).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1780)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2020 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2020))
                                        call address(_2020).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2020))
                                        call address(_2020).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2020))
                                        call address(_2020).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2020))
                                        call address(_2020).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1783 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1448))
                                staticcall address(_1448).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1783)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2021 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2021))
                                        call address(_2021).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2021))
                                        call address(_2021).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2220 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2220:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2220 % 32:
                                        require ext_code.size(address(_2021))
                                        call address(_2021).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2220 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2220) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2220) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2220 % 32) + 452 len _2220 % 32]
                                        require ext_code.size(address(_2021))
                                        call address(_2021).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2220) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            if address(_1481) == address(_1448):
                                _1786 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1448))
                                staticcall address(_1448).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1786)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2022 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2022))
                                        call address(_2022).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2022))
                                        call address(_2022).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2022))
                                        call address(_2022).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2022))
                                        call address(_2022).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1789 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1448))
                                staticcall address(_1448).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1789)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2023 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2023))
                                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2023))
                                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2232 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2232:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2232 % 32:
                                        require ext_code.size(address(_2023))
                                        call address(_2023).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2232 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2232) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2232) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2232 % 32) + 452 len _2232 % 32]
                                        require ext_code.size(address(_2023))
                                        call address(_2023).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2232) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1366 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1482 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1508 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                            if address(_1508) == address(_1482):
                                _1850 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1482))
                                staticcall address(_1482).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1850)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2078 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2078))
                                        call address(_2078).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2078))
                                        call address(_2078).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2078))
                                        call address(_2078).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2078))
                                        call address(_2078).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1853 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1482))
                                staticcall address(_1482).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1853)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2079 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2079))
                                        call address(_2079).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2079))
                                        call address(_2079).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2079))
                                        call address(_2079).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2079))
                                        call address(_2079).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            if address(_1482) == address(_1482):
                                _1844 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1482))
                                staticcall address(_1482).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1844)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2076 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2076))
                                        call address(_2076).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2076))
                                        call address(_2076).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2310 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2310:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2310 % 32:
                                        require ext_code.size(address(_2076))
                                        call address(_2076).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2310 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2310) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2310) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2310 % 32) + 452 len _2310 % 32]
                                        require ext_code.size(address(_2076))
                                        call address(_2076).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2310) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                            else:
                                _1847 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1482))
                                staticcall address(_1482).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1847)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2077 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2077))
                                        call address(_2077).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2077))
                                        call address(_2077).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1366), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1366)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2316 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2316:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2316 % 32:
                                        require ext_code.size(address(_2077))
                                        call address(_2077).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2316 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2316) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2316) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2316 % 32) + 452 len _2316 % 32]
                                        require ext_code.size(address(_2077))
                                        call address(_2077).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2316) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1417 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1453 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _1417
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1453))
                                call address(_1453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1417, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1453))
                                call address(_1453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1417, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _1417
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
                                require ext_code.size(address(_1453))
                                call address(_1453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1417, 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1453))
                                call address(_1453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1417, 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1368 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1454 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1486 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _1454
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1368)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1612 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1612:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1612 % 32:
                                require ext_code.size(address(_1486))
                                call address(_1486).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1612 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1612) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1612) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1612 % 32) + 452 len _1612 % 32]
                                require ext_code.size(address(_1486))
                                call address(_1486).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1612) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _1454
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1368)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1615 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1615:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1615 % 32:
                                require ext_code.size(address(_1486))
                                call address(_1486).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1615 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1615) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1615) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1615 % 32) + 452 len _1615 % 32]
                                require ext_code.size(address(_1486))
                                call address(_1486).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1615) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
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
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1456 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1488 = mem[(32 * idx + 1) + 128]
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
                            if address(_1456) == address(_1456):
                                _1796 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1456))
                                staticcall address(_1456).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1796)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2032 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2032))
                                        call address(_2032).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2032))
                                        call address(_2032).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2032))
                                        call address(_2032).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2032))
                                        call address(_2032).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1799 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1456))
                                staticcall address(_1456).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1799)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2033 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2033))
                                        call address(_2033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2033))
                                        call address(_2033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
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
                                        require ext_code.size(address(_2033))
                                        call address(_2033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2033))
                                        call address(_2033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            if address(_1488) == address(_1456):
                                _1802 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1456))
                                staticcall address(_1456).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1802)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2034 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2034))
                                        call address(_2034).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2034))
                                        call address(_2034).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2034))
                                        call address(_2034).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2034))
                                        call address(_2034).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1805 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1456))
                                staticcall address(_1456).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1805)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2035 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2035))
                                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2035))
                                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2259 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2259:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2259 % 32:
                                        require ext_code.size(address(_2035))
                                        call address(_2035).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2259 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2259) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2259) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2259 % 32) + 452 len _2259 % 32]
                                        require ext_code.size(address(_2035))
                                        call address(_2035).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2259) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1371 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1489 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1512 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                            if address(_1512) == address(_1489):
                                _1862 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1489))
                                staticcall address(_1489).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1862)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2090 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2090))
                                        call address(_2090).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2090))
                                        call address(_2090).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2090))
                                        call address(_2090).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2090))
                                        call address(_2090).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1865 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1489))
                                staticcall address(_1489).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1865)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2091 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2091))
                                        call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2091))
                                        call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2091))
                                        call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2091))
                                        call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            if address(_1489) != address(_1489):
                                _1859 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1489))
                                staticcall address(_1489).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1859)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2089 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2089))
                                        call address(_2089).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2089))
                                        call address(_2089).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2089))
                                        call address(_2089).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2089))
                                        call address(_2089).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1856 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1489))
                                staticcall address(_1489).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1856)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2088 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2088))
                                        call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2088))
                                        call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1371), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1371)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2337 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2337:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2337 % 32:
                                        require ext_code.size(address(_2088))
                                        call address(_2088).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2337 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2337) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2337) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2337 % 32) + 452 len _2337 % 32]
                                        require ext_code.size(address(_2088))
                                        call address(_2088).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2337) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1426 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1461 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _1426
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1461))
                                call address(_1461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1426, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1461))
                                call address(_1461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1426, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _1426
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
                                require ext_code.size(address(_1461))
                                call address(_1461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1426, 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1461))
                                call address(_1461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1426, 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1373 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1462 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1493 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _1462
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1373)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                require ext_code.size(address(_1493))
                                call address(_1493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1462, 0, address(_1373), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                            else:
                                mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                require ext_code.size(address(_1493))
                                call address(_1493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1462, 0, address(_1373), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = _1462
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1373)
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1624 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1624:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1624 % 32:
                                require ext_code.size(address(_1493))
                                call address(_1493).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1624 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                            else:
                                mem[floor32(_1624) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_1624) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_1624 % 32) + 452 len _1624 % 32]
                                require ext_code.size(address(_1493))
                                call address(_1493).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1624) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    else:
        mem[0] = tx.origin
        if not stor0[tx.origin]:
            revert with 0, 'Check rights !!!'
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
            _26 = mem[128]
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
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1464 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1495 = mem[(32 * idx + 1) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if address(_1464) == address(_1464):
                                _1812 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1464))
                                staticcall address(_1464).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1812)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2044 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2044))
                                    call address(_2044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2044))
                                    call address(_2044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                            else:
                                _1815 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1464))
                                staticcall address(_1464).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1815)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2045 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2045))
                                    call address(_2045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2045))
                                    call address(_2045).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                        else:
                            if address(_1495) == address(_1464):
                                _1818 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1464))
                                staticcall address(_1464).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1818)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2046 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2046))
                                    call address(_2046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2046))
                                    call address(_2046).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                            else:
                                _1821 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1464))
                                staticcall address(_1464).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1821)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2047 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2047))
                                    call address(_2047).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2047))
                                    call address(_2047).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                    else:
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        _1376 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1496 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1516 = mem[(32 * idx + 1) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if address(_1496) == address(_1496):
                                _1868 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1496))
                                staticcall address(_1496).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1868)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2100 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2100))
                                    call address(_2100).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1376), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2100))
                                    call address(_2100).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1376), 128, 0, None
                            else:
                                _1871 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1496))
                                staticcall address(_1496).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1871)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2101 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2101))
                                    call address(_2101).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1376), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2101))
                                    call address(_2101).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1376), 128, 0, None
                        else:
                            if address(_1516) == address(_1496):
                                _1874 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1496))
                                staticcall address(_1496).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1874)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2102 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2102))
                                    call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1376), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2102))
                                    call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1376), 128, 0, None
                            else:
                                _1877 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1496))
                                staticcall address(_1496).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1877)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                                _2103 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2103))
                                    call address(_2103).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1376), 128, 0, None
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1376)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_2103))
                                    call address(_2103).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1376), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
            else:
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[96]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1435 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1469 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1435
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1586 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1586:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1586 % 32:
                                require ext_code.size(address(_1469))
                                call address(_1469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1435, address(this.address), 128, mem[mem[64] + 132 len _1586 + 32]
                            else:
                                mem[floor32(_1586) + mem[64] + 164] = mem[floor32(_1586) + mem[64] + -(_1586 % 32) + 196 len _1586 % 32]
                                require ext_code.size(address(_1469))
                                call address(_1469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1435, address(this.address), 128, mem[mem[64] + 132 len floor32(_1586) + 64]
                        else:
                            _1587 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1435
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1589 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1589:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1589 % 32:
                                require ext_code.size(address(_1469))
                                call address(_1469).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1589 + _1587 + -mem[64] + 160]
                            else:
                                mem[floor32(_1589) + _1587 + 164] = mem[floor32(_1589) + _1587 + -(_1589 % 32) + 196 len _1589 % 32]
                                require ext_code.size(address(_1469))
                                call address(_1469).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1589) + _1587 + -mem[64] + 192]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1378 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < mem[96]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1470 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1500 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1470
                            mem[mem[64] + 68] = address(_1378)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1636 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1636:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1636 % 32:
                                require ext_code.size(address(_1500))
                                call address(_1500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1470, address(_1378), 128, mem[mem[64] + 132 len _1636 + 32]
                            else:
                                mem[floor32(_1636) + mem[64] + 164] = mem[floor32(_1636) + mem[64] + -(_1636 % 32) + 196 len _1636 % 32]
                                require ext_code.size(address(_1500))
                                call address(_1500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1470, address(_1378), 128, mem[mem[64] + 132 len floor32(_1636) + 64]
                        else:
                            mem[mem[64] + 4] = _1470
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1378)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1639 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1639:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1639 % 32:
                                require ext_code.size(address(_1500))
                                call address(_1500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1470, 0, address(_1378), 128, mem[mem[64] + 132 len _1639 + 32]
                            else:
                                mem[floor32(_1639) + mem[64] + 164] = mem[floor32(_1639) + mem[64] + -(_1639 % 32) + 196 len _1639 % 32]
                                require ext_code.size(address(_1500))
                                call address(_1500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1470, 0, address(_1378), 128, mem[mem[64] + 132 len floor32(_1639) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                require ext_code.size(address(_26))
                call address(_26).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
        else:
            _28 = mem[128]
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
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1472 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1502 = mem[(32 * idx + 1) + 128]
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
                            if address(_1472) == address(_1472):
                                _1828 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1472))
                                staticcall address(_1472).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1828)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2056 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2056))
                                        call address(_2056).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2056))
                                        call address(_2056).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2056))
                                        call address(_2056).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2056))
                                        call address(_2056).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1831 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1472))
                                staticcall address(_1472).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1831)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2057 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2057))
                                        call address(_2057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2057))
                                        call address(_2057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
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
                                        require ext_code.size(address(_2057))
                                        call address(_2057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2057))
                                        call address(_2057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            if address(_1502) == address(_1472):
                                _1834 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1472))
                                staticcall address(_1472).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1834)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2058 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2058))
                                        call address(_2058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2058))
                                        call address(_2058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                                        require ext_code.size(address(_2058))
                                        call address(_2058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2058))
                                        call address(_2058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1837 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1472))
                                staticcall address(_1472).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1837)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2059 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                        require ext_code.size(address(_2059))
                                        call address(_2059).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2059))
                                        call address(_2059).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = this.address
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2304 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2304:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2304 % 32:
                                        require ext_code.size(address(_2059))
                                        call address(_2059).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2304 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2304) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2304) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2304 % 32) + 452 len _2304 % 32]
                                        require ext_code.size(address(_2059))
                                        call address(_2059).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2304) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1381 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1503 = mem[(32 * idx) + 128]
                        require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                        _1520 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                            if address(_1520) == address(_1503):
                                _1886 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1503))
                                staticcall address(_1503).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1886)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2114 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2114))
                                        call address(_2114).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2114))
                                        call address(_2114).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2114))
                                        call address(_2114).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2114))
                                        call address(_2114).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1889 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1503))
                                staticcall address(_1503).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1889)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2115 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2115))
                                        call address(_2115).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2115))
                                        call address(_2115).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2115))
                                        call address(_2115).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2115))
                                        call address(_2115).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                        else:
                            if address(_1503) != address(_1503):
                                _1883 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1503))
                                staticcall address(_1503).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1883)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2113 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2113))
                                        call address(_2113).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2113))
                                        call address(_2113).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2113))
                                        call address(_2113).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2113))
                                        call address(_2113).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                            else:
                                _1880 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20]
                                require ext_code.size(address(_1503))
                                staticcall address(_1503).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1880)
                                mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                                _2112 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
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
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]:
                                        mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32:
                                        require ext_code.size(address(_2112))
                                        call address(_2112).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]]
                                    else:
                                        mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32) + 452 len mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] % 32]
                                        require ext_code.size(address(_2112))
                                        call address(_2112).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(_1381), 128, mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]) + 32]
                                else:
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = address(_1381)
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 128
                                    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    _2382 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                                    s = 0
                                    while s < _2382:
                                        mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                        s = s + 32
                                        continue 
                                    if not _2382 % 32:
                                        require ext_code.size(address(_2112))
                                        call address(_2112).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2382 + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 416]
                                    else:
                                        mem[floor32(_2382) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = mem[floor32(_2382) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -(_2382 % 32) + 452 len _2382 % 32]
                                        require ext_code.size(address(_2112))
                                        call address(_2112).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_2382) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
            else:
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    if idx + 1 == cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[96]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1444 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1477 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(ext_call.return_data[0]) == mem[(32 * idx) + 140 len 20]:
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1444
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1600 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1600:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1600 % 32:
                                require ext_code.size(address(_1477))
                                call address(_1477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1444, address(this.address), 128, mem[mem[64] + 132 len _1600 + 32]
                            else:
                                mem[floor32(_1600) + mem[64] + 164] = mem[floor32(_1600) + mem[64] + -(_1600 % 32) + 196 len _1600 % 32]
                                require ext_code.size(address(_1477))
                                call address(_1477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1444, address(this.address), 128, mem[mem[64] + 132 len floor32(_1600) + 64]
                        else:
                            mem[mem[64] + 4] = _1444
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1603 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1603:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1603 % 32:
                                require ext_code.size(address(_1477))
                                call address(_1477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1444, 0, address(this.address), 128, mem[mem[64] + 132 len _1603 + 32]
                            else:
                                mem[floor32(_1603) + mem[64] + 164] = mem[floor32(_1603) + mem[64] + -(_1603 % 32) + 196 len _1603 % 32]
                                require ext_code.size(address(_1477))
                                call address(_1477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1444, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_1603) + 64]
                    else:
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1383 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require idx < mem[96]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                        _1478 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
                        _1507 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                        require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1478
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1383)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1651 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1651:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1651 % 32:
                                require ext_code.size(address(_1507))
                                call address(_1507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1478, 0, address(_1383), 128, mem[mem[64] + 132 len _1651 + 32]
                            else:
                                mem[floor32(_1651) + mem[64] + 164] = mem[floor32(_1651) + mem[64] + -(_1651 % 32) + 196 len _1651 % 32]
                                require ext_code.size(address(_1507))
                                call address(_1507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1478, 0, address(_1383), 128, mem[mem[64] + 132 len floor32(_1651) + 64]
                        else:
                            _1646 = mem[64]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1478
                            mem[mem[64] + 68] = address(_1383)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            _1648 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224]
                            s = 0
                            while s < _1648:
                                mem[s + mem[64] + 164] = mem[s + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 256]
                                s = s + 32
                                continue 
                            if not _1648 % 32:
                                require ext_code.size(address(_1507))
                                call address(_1507).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1648 + _1646 + -mem[64] + 160]
                            else:
                                mem[floor32(_1648) + _1646 + 164] = mem[floor32(_1648) + _1646 + -(_1648 % 32) + 196 len _1648 % 32]
                                require ext_code.size(address(_1507))
                                call address(_1507).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1648) + _1646 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192]
                require ext_code.size(address(_28))
                call address(_28).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
