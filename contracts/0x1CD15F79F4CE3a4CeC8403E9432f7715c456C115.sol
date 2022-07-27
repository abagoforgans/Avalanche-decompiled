contract main {




// =====================  Runtime code  =====================


#
#  - sub_351d45e4(?)
#
address stor0;
address stor1;
address stor2;
address stor3;

function sub_d737a999(?) {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x1408bad2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 <= test266151307()
            require arg2 + 35 < calldata.size
            if arg2.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                revert with 0, 65
            mem[128] = arg2.length
            require arg2 + arg2.length + 36 <= calldata.size
            mem[160 len arg2.length] = arg2[all]
            mem[arg2.length + 160] = 0
            mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
            call address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
            require ext_call.success
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x351d45e4(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x66bff266(?????):
                    if unknown_0xd0e30db0(?????) == uint32(call.func_hash) >> 224:
                    require unknown_0xd737a999(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require msg.sender == stor0
                    selfdestruct(msg.sender)
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 <= test266151307()
                require arg3 + 35 < calldata.size
                if arg3.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                    revert with 0, 65
                require arg3 + arg3.length + 36 <= calldata.size
                mem[160 len arg3.length] = arg3[all]
                mem[arg3.length + 160] = 0
                mem[ceil32(ceil32(arg3.length)) + 133] = address(arg2)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[ceil32(ceil32(arg3.length)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 133] = address(arg1)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 129 len ceil32(arg3.length)] = arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
                if ceil32(arg3.length) > arg3.length:
                    mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg3.length + 129] = 0
                call address(arg1).mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 129 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 133 len arg3.length - 4]
                require ext_call.success
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] == ext_call.return_data[0]:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] > 0
            else:
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 <= test266151307()
                require arg4 + 35 < calldata.size
                if arg4.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg4.length)) + 129 < 128 or ceil32(ceil32(arg4.length)) + 129 > test266151307():
                    revert with 0, 65
                require arg4 + arg4.length + 36 <= calldata.size
                mem[160 len arg4.length] = arg4[all]
                mem[arg4.length + 160] = 0
                mem[ceil32(ceil32(arg4.length)) + 133] = address(arg3)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                mem[ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 133] = address(arg2)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = address(arg1)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 133] = address(arg1)
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg4.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 133] = address(arg1)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg4.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 133] = address(arg1)
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg4.length)) + (7 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 133] = address(arg1)
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(ceil32(arg4.length)) + (8 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + arg4.length + 129] = 0
                if msg.value:
                    call address(arg1).mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 4] with:
                       value msg.value wei
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 133 len arg4.length - 4]
                    require ext_call.success
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] == ext_call.return_data[0]:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == ext_call.return_data[0]:
                                    require ext_code.size(address(arg3))
                                    staticcall address(arg3).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] == ext_call.return_data[0]:
                                        require ext_code.size(address(arg3))
                                        staticcall address(arg3).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] == ext_call.return_data[0]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] == ext_call.return_data[0]:
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] == ext_call.return_data[0]:
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] > 0
                else:
                    call address(arg1).mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 129 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + (10 * ceil32(return_data.size)) + 133 len arg4.length - 4]
                    require ext_call.success
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] == ext_call.return_data[0]:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == ext_call.return_data[0]:
                                    require ext_code.size(address(arg3))
                                    staticcall address(arg3).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] == ext_call.return_data[0]:
                                        require ext_code.size(address(arg3))
                                        staticcall address(arg3).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] == ext_call.return_data[0]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] == ext_call.return_data[0]:
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] == ext_call.return_data[0]:
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] <= 0:
                                                                require ext_code.size(stor1)
                                                                staticcall stor1.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] <= 0:
                                                                    require eth.balance(this.address) > 0
}

function deposit() payable {
  stop
}

function sub_1408bad2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
}

function sub_66bff266(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(ceil32(arg3.length)) + 101] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 101] = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 97 len ceil32(arg3.length)] = arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg3.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 101 len arg3.length - 4]
    require ext_call.success
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == ext_call.return_data[0]:
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] > 0
}



}
