contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_2bce3eb7(?) payable {
    require calldata.size - 4 >= 256
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg5, arg6, address(this.address), 128, 128, address(arg1), address(arg2), arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    require arg4.length >= 128
    if not arg2:
        if not arg2:
            if not arg2:
                _43 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1016 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])] = mem[_1016 + ceil32(arg4.length) + 256 len floor32(mem[_1016 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _43
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1018 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])] = mem[_1018 + ceil32(arg4.length) + 256 len floor32(mem[_1018 + ceil32(arg4.length) + 224])]
                    else:
                        _1020 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])] = mem[_1020 + ceil32(arg4.length) + 256 len floor32(mem[_1020 + ceil32(arg4.length) + 224])]
            else:
                _49 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1022 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])] = mem[_1022 + ceil32(arg4.length) + 256 len floor32(mem[_1022 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _49
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1024 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])] = mem[_1024 + ceil32(arg4.length) + 256 len floor32(mem[_1024 + ceil32(arg4.length) + 224])]
                    else:
                        _1026 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])] = mem[_1026 + ceil32(arg4.length) + 256 len floor32(mem[_1026 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _55 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1028 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])] = mem[_1028 + ceil32(arg4.length) + 256 len floor32(mem[_1028 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _55
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1030 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])] = mem[_1030 + ceil32(arg4.length) + 256 len floor32(mem[_1030 + ceil32(arg4.length) + 224])]
                    else:
                        _1032 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])] = mem[_1032 + ceil32(arg4.length) + 256 len floor32(mem[_1032 + ceil32(arg4.length) + 224])]
            else:
                _61 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1034 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])] = mem[_1034 + ceil32(arg4.length) + 256 len floor32(mem[_1034 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg3
                    mem[ceil32(arg4.length) + 260] = _61
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1036 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])] = mem[_1036 + ceil32(arg4.length) + 256 len floor32(mem[_1036 + ceil32(arg4.length) + 224])]
                    else:
                        _1038 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])] = mem[_1038 + ceil32(arg4.length) + 256 len floor32(mem[_1038 + ceil32(arg4.length) + 224])]
    else:
        if not arg2:
            if not arg2:
                _67 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1040 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])] = mem[_1040 + ceil32(arg4.length) + 256 len floor32(mem[_1040 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _67
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1042 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])] = mem[_1042 + ceil32(arg4.length) + 256 len floor32(mem[_1042 + ceil32(arg4.length) + 224])]
                    else:
                        _1044 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])] = mem[_1044 + ceil32(arg4.length) + 256 len floor32(mem[_1044 + ceil32(arg4.length) + 224])]
            else:
                _73 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1046 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])] = mem[_1046 + ceil32(arg4.length) + 256 len floor32(mem[_1046 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _73
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1048 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])] = mem[_1048 + ceil32(arg4.length) + 256 len floor32(mem[_1048 + ceil32(arg4.length) + 224])]
                    else:
                        _1050 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])] = mem[_1050 + ceil32(arg4.length) + 256 len floor32(mem[_1050 + ceil32(arg4.length) + 224])]
        else:
            if not arg2:
                _79 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1052 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])] = mem[_1052 + ceil32(arg4.length) + 256 len floor32(mem[_1052 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _79
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1054 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])] = mem[_1054 + ceil32(arg4.length) + 256 len floor32(mem[_1054 + ceil32(arg4.length) + 224])]
                    else:
                        _1056 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])] = mem[_1056 + ceil32(arg4.length) + 256 len floor32(mem[_1056 + ceil32(arg4.length) + 224])]
            else:
                _85 = mem[224]
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!pair'
                if arg1 != this.address:
                    revert with 0, '!sender'
                if not arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1058 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])] = mem[_1058 + ceil32(arg4.length) + 256 len floor32(mem[_1058 + ceil32(arg4.length) + 224])]
                else:
                    if arg3:
                        revert with 0, 'both amounts zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[172 len 20], mem[224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = _85
                    mem[ceil32(arg4.length) + 324] = this.address
                    mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].0x38ed1739 with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    if not arg2:
                        _1060 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])] = mem[_1060 + ceil32(arg4.length) + 256 len floor32(mem[_1060 + ceil32(arg4.length) + 224])]
                    else:
                        _1062 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])] = mem[_1062 + ceil32(arg4.length) + 256 len floor32(mem[_1062 + ceil32(arg4.length) + 224])]
    require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
