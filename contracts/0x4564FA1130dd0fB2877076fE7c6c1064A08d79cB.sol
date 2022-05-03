contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address sub_c8391a3dAddress;
address sub_e4822589Address;
address stor8;
address stor9;
uint256 stor9;
uint256 stor10;
uint256 stor11; offset 32
uint256 stor11;
uint256 stor12; offset 32
uint256 stor12;
uint256 sub_c39bfafa;
uint256 sub_a96ea720;
uint8 sub_efc798b1;
uint8 sub_9504ce5a; offset 8
uint256 stor15; offset 8

function sub_9504ce5a(?) {
    return bool(sub_9504ce5a)
}

function sub_a96ea720(?) {
    return sub_a96ea720
}

function sub_c39bfafa(?) {
    return sub_c39bfafa
}

function sub_c8391a3d(?) {
    return sub_c8391a3dAddress
}

function sub_e4822589(?) {
    return sub_e4822589Address
}

function sub_efc798b1(?) {
    return bool(sub_efc798b1)
}

function _fallback() payable {
    revert
}

function sub_75c8e6e1(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_a96ea720 = arg1
}

function sub_f7d6a87a(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_c39bfafa = arg1
}

function sub_34df8b11(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_c8391a3dAddress = arg1
}

function sub_9872fd63(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_e4822589Address = arg1
}

function sub_be6cb59c(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3a143661(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_702acd61(?) {
    if sub_efc798b1:
        require ext_code.size(stor5)
        staticcall stor5.0xe6a43905 with:
                gas gas_remaining wei
               args sub_c8391a3dAddress, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        staticcall stor5.0xe6a43905 with:
                gas gas_remaining wei
               args sub_e4822589Address, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'np'
            uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
            if not sub_efc798b1:
                if sub_9504ce5a:
                    require ext_code.size(sub_e4822589Address)
                    staticcall sub_e4822589Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor9)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > stor10:
                        mem[192] = sub_e4822589Address
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor12.field_0)
                        mem[260] = sub_a96ea720
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                        stor15 = 0
            else:
                require ext_code.size(sub_c8391a3dAddress)
                staticcall sub_c8391a3dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= stor10:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    mem[96] = 3
                    mem[128] = stor3
                    mem[160] = stor2
                    mem[192] = sub_c8391a3dAddress
                    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[228] = uint256(stor11.field_0)
                    mem[260] = sub_c39bfafa
                    mem[324] = stor1
                    mem[356] = 1756181673
                    mem[292] = 160
                    mem[388] = 3
                    mem[420 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _537 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                    require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                    require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                    require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                    _589 = mem[_537 + 224]
                    mem[ceil32(return_data.size) + 256 len floor32(mem[_537 + 224])] = mem[_537 + 256 len floor32(mem[_537 + 224])]
                    sub_efc798b1 = 0
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[(32 * _589) + ceil32(return_data.size) + 352] = sub_e4822589Address
                            mem[(32 * _589) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _589) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                            mem[(32 * _589) + ceil32(return_data.size) + 420] = sub_a96ea720
                            mem[(32 * _589) + ceil32(return_data.size) + 484] = stor1
                            mem[(32 * _589) + ceil32(return_data.size) + 516] = 1756181673
                            mem[(32 * _589) + ceil32(return_data.size) + 452] = 160
                            mem[(32 * _589) + ceil32(return_data.size) + 548] = 3
                            mem[(32 * _589) + ceil32(return_data.size) + 580 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _589) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _589) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _589) + (2 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _589) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[(32 * _589) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[(32 * _589) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _589) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _589) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _589) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _589) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                            stor15 = 0
        else:
            stor8 = address(ext_call.return_data[0])
            if not ext_call.return_data[12 len 20]:
                if not sub_efc798b1:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    require ext_code.size(sub_c8391a3dAddress)
                    staticcall sub_c8391a3dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor10:
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[192] = sub_e4822589Address
                                mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[228] = uint256(stor12.field_0)
                                mem[260] = sub_a96ea720
                                mem[324] = stor1
                                mem[356] = 1756181673
                                mem[292] = 160
                                mem[388] = 3
                                mem[420 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                                stor15 = 0
                    else:
                        mem[96] = 3
                        mem[128] = stor3
                        mem[160] = stor2
                        mem[192] = sub_c8391a3dAddress
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor11.field_0)
                        mem[260] = sub_c39bfafa
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _543 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                        _592 = mem[_543 + 224]
                        mem[ceil32(return_data.size) + 256 len floor32(mem[_543 + 224])] = mem[_543 + 256 len floor32(mem[_543 + 224])]
                        sub_efc798b1 = 0
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[(32 * _592) + ceil32(return_data.size) + 352] = sub_e4822589Address
                                mem[(32 * _592) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _592) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                                mem[(32 * _592) + ceil32(return_data.size) + 420] = sub_a96ea720
                                mem[(32 * _592) + ceil32(return_data.size) + 484] = stor1
                                mem[(32 * _592) + ceil32(return_data.size) + 516] = 1756181673
                                mem[(32 * _592) + ceil32(return_data.size) + 452] = 160
                                mem[(32 * _592) + ceil32(return_data.size) + 548] = 3
                                mem[(32 * _592) + ceil32(return_data.size) + 580 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _592) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _592) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _592) + (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require mem[(32 * _592) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[(32 * _592) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[(32 * _592) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _592) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _592) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _592) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _592) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                                stor15 = 0
            else:
                uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
                if not sub_efc798b1:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    require ext_code.size(sub_c8391a3dAddress)
                    staticcall sub_c8391a3dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor10:
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[192] = sub_e4822589Address
                                mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[228] = uint256(stor12.field_0)
                                mem[260] = sub_a96ea720
                                mem[324] = stor1
                                mem[356] = 1756181673
                                mem[292] = 160
                                mem[388] = 3
                                mem[420 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                                stor15 = 0
                    else:
                        mem[96] = 3
                        mem[128] = stor3
                        mem[160] = stor2
                        mem[192] = sub_c8391a3dAddress
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor11.field_0)
                        mem[260] = sub_c39bfafa
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _549 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                        _595 = mem[_549 + 224]
                        mem[ceil32(return_data.size) + 256 len floor32(mem[_549 + 224])] = mem[_549 + 256 len floor32(mem[_549 + 224])]
                        sub_efc798b1 = 0
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[(32 * _595) + ceil32(return_data.size) + 352] = sub_e4822589Address
                                mem[(32 * _595) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _595) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                                mem[(32 * _595) + ceil32(return_data.size) + 420] = sub_a96ea720
                                mem[(32 * _595) + ceil32(return_data.size) + 484] = stor1
                                mem[(32 * _595) + ceil32(return_data.size) + 516] = 1756181673
                                mem[(32 * _595) + ceil32(return_data.size) + 452] = 160
                                mem[(32 * _595) + ceil32(return_data.size) + 548] = 3
                                mem[(32 * _595) + ceil32(return_data.size) + 580 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _595) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _595) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _595) + (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require mem[(32 * _595) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[(32 * _595) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[(32 * _595) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _595) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _595) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _595) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _595) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                                stor15 = 0
    else:
        if not sub_9504ce5a:
            revert with 0, 's'
        require ext_code.size(stor5)
        staticcall stor5.0xe6a43905 with:
                gas gas_remaining wei
               args sub_c8391a3dAddress, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        staticcall stor5.0xe6a43905 with:
                gas gas_remaining wei
               args sub_e4822589Address, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'np'
            uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
            if not sub_efc798b1:
                if sub_9504ce5a:
                    require ext_code.size(sub_e4822589Address)
                    staticcall sub_e4822589Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor9)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > stor10:
                        mem[192] = sub_e4822589Address
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor12.field_0)
                        mem[260] = sub_a96ea720
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                        stor15 = 0
            else:
                require ext_code.size(sub_c8391a3dAddress)
                staticcall sub_c8391a3dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= stor10:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    mem[96] = 3
                    mem[128] = stor3
                    mem[160] = stor2
                    mem[192] = sub_c8391a3dAddress
                    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[228] = uint256(stor11.field_0)
                    mem[260] = sub_c39bfafa
                    mem[324] = stor1
                    mem[356] = 1756181673
                    mem[292] = 160
                    mem[388] = 3
                    mem[420 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _555 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                    require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                    require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                    require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                    _598 = mem[_555 + 224]
                    mem[ceil32(return_data.size) + 256 len floor32(mem[_555 + 224])] = mem[_555 + 256 len floor32(mem[_555 + 224])]
                    sub_efc798b1 = 0
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[(32 * _598) + ceil32(return_data.size) + 352] = sub_e4822589Address
                            mem[(32 * _598) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _598) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                            mem[(32 * _598) + ceil32(return_data.size) + 420] = sub_a96ea720
                            mem[(32 * _598) + ceil32(return_data.size) + 484] = stor1
                            mem[(32 * _598) + ceil32(return_data.size) + 516] = 1756181673
                            mem[(32 * _598) + ceil32(return_data.size) + 452] = 160
                            mem[(32 * _598) + ceil32(return_data.size) + 548] = 3
                            mem[(32 * _598) + ceil32(return_data.size) + 580 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _598) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _598) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _598) + (2 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _598) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[(32 * _598) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[(32 * _598) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _598) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _598) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _598) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _598) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                            stor15 = 0
        else:
            stor8 = address(ext_call.return_data[0])
            if not ext_call.return_data[12 len 20]:
                if not sub_efc798b1:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    require ext_code.size(sub_c8391a3dAddress)
                    staticcall sub_c8391a3dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor10:
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[192] = sub_e4822589Address
                                mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[228] = uint256(stor12.field_0)
                                mem[260] = sub_a96ea720
                                mem[324] = stor1
                                mem[356] = 1756181673
                                mem[292] = 160
                                mem[388] = 3
                                mem[420 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                                stor15 = 0
                    else:
                        mem[96] = 3
                        mem[128] = stor3
                        mem[160] = stor2
                        mem[192] = sub_c8391a3dAddress
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor11.field_0)
                        mem[260] = sub_c39bfafa
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _561 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                        _601 = mem[_561 + 224]
                        mem[ceil32(return_data.size) + 256 len floor32(mem[_561 + 224])] = mem[_561 + 256 len floor32(mem[_561 + 224])]
                        sub_efc798b1 = 0
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[(32 * _601) + ceil32(return_data.size) + 352] = sub_e4822589Address
                                mem[(32 * _601) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _601) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                                mem[(32 * _601) + ceil32(return_data.size) + 420] = sub_a96ea720
                                mem[(32 * _601) + ceil32(return_data.size) + 484] = stor1
                                mem[(32 * _601) + ceil32(return_data.size) + 516] = 1756181673
                                mem[(32 * _601) + ceil32(return_data.size) + 452] = 160
                                mem[(32 * _601) + ceil32(return_data.size) + 548] = 3
                                mem[(32 * _601) + ceil32(return_data.size) + 580 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _601) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _601) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _601) + (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require mem[(32 * _601) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[(32 * _601) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[(32 * _601) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _601) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _601) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _601) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _601) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                                stor15 = 0
            else:
                uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
                if not sub_efc798b1:
                    if sub_9504ce5a:
                        require ext_code.size(sub_e4822589Address)
                        staticcall sub_e4822589Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > stor10:
                            mem[192] = sub_e4822589Address
                            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[228] = uint256(stor12.field_0)
                            mem[260] = sub_a96ea720
                            mem[324] = stor1
                            mem[356] = 1756181673
                            mem[292] = 160
                            mem[388] = 3
                            mem[420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                            require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                            require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                            stor15 = 0
                else:
                    require ext_code.size(sub_c8391a3dAddress)
                    staticcall sub_c8391a3dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor10:
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[192] = sub_e4822589Address
                                mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[228] = uint256(stor12.field_0)
                                mem[260] = sub_a96ea720
                                mem[324] = stor1
                                mem[356] = 1756181673
                                mem[292] = 160
                                mem[388] = 3
                                mem[420 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[224 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor12.field_32) + 224]) + 32 <= return_data.size
                                stor15 = 0
                    else:
                        mem[96] = 3
                        mem[128] = stor3
                        mem[160] = stor2
                        mem[192] = sub_c8391a3dAddress
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = uint256(stor11.field_0)
                        mem[260] = sub_c39bfafa
                        mem[324] = stor1
                        mem[356] = 1756181673
                        mem[292] = 160
                        mem[388] = 3
                        mem[420 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint256(stor11.field_0), sub_c39bfafa, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _567 = mem[224 len 4], Mask(224, 0, stor11.field_32)
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) <= 4294967296
                        require mem[224 len 4], Mask(224, 0, stor11.field_32) + 32 <= return_data.size
                        require mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor11.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
                        _604 = mem[_567 + 224]
                        mem[ceil32(return_data.size) + 256 len floor32(mem[_567 + 224])] = mem[_567 + 256 len floor32(mem[_567 + 224])]
                        sub_efc798b1 = 0
                        if sub_9504ce5a:
                            require ext_code.size(sub_e4822589Address)
                            staticcall sub_e4822589Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > stor10:
                                mem[(32 * _604) + ceil32(return_data.size) + 352] = sub_e4822589Address
                                mem[(32 * _604) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _604) + ceil32(return_data.size) + 388] = uint256(stor12.field_0)
                                mem[(32 * _604) + ceil32(return_data.size) + 420] = sub_a96ea720
                                mem[(32 * _604) + ceil32(return_data.size) + 484] = stor1
                                mem[(32 * _604) + ceil32(return_data.size) + 516] = 1756181673
                                mem[(32 * _604) + ceil32(return_data.size) + 452] = 160
                                mem[(32 * _604) + ceil32(return_data.size) + 548] = 3
                                mem[(32 * _604) + ceil32(return_data.size) + 580 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor12.field_0), sub_a96ea720, Array(len=3, data=mem[(32 * _604) + ceil32(return_data.size) + 580 len 96]), stor1, 1756181673
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _604) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _604) + (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require mem[(32 * _604) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                                require mem[(32 * _604) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                                require mem[mem[(32 * _604) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _604) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _604) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[mem[(32 * _604) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor12.field_32) + (32 * _604) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
                                stor15 = 0
}



}
