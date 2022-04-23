contract main {




// =====================  Runtime code  =====================


#
#  - sub_2fd19872(?)
#  - sub_994df4b1(?)
#
address owner;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_c01b2ba6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[192] = 'r-'
    if not arg1:
        mem[194] = '0'
        mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
        mem[199] = arg2
        mem[231] = 64
        mem[263] = mem[160]
        mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + 295] = 0
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
    else:
        if arg1 == 1:
            mem[194] = '1'
            mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
            mem[199] = arg2
            mem[231] = 64
            mem[263] = mem[160]
            mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + 295] = 0
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
        else:
            if arg1 == 2:
                mem[194] = '2'
                mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                mem[199] = arg2
                mem[231] = 64
                mem[263] = mem[160]
                mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + 295] = 0
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
            else:
                if arg1 == 3:
                    mem[194] = '3'
                    mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                    mem[199] = arg2
                    mem[231] = 64
                    mem[263] = mem[160]
                    mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(mem[160]) > mem[160]:
                        mem[mem[160] + 295] = 0
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                            gas gas_remaining wei
                           args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                else:
                    if arg1 == 4:
                        mem[194] = '4'
                        mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                        mem[199] = arg2
                        mem[231] = 64
                        mem[263] = mem[160]
                        mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(mem[160]) > mem[160]:
                            mem[mem[160] + 295] = 0
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                gas gas_remaining wei
                               args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                    else:
                        if arg1 == 5:
                            mem[194] = '5'
                            mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                            mem[199] = arg2
                            mem[231] = 64
                            mem[263] = mem[160]
                            mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                            if ceil32(mem[160]) > mem[160]:
                                mem[mem[160] + 295] = 0
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                        else:
                            if arg1 == 6:
                                mem[194] = '6'
                                mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                mem[199] = arg2
                                mem[231] = 64
                                mem[263] = mem[160]
                                mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                if ceil32(mem[160]) > mem[160]:
                                    mem[mem[160] + 295] = 0
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                            else:
                                if arg1 == 7:
                                    mem[194] = '7'
                                    mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                    mem[199] = arg2
                                    mem[231] = 64
                                    mem[263] = mem[160]
                                    mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                    if ceil32(mem[160]) > mem[160]:
                                        mem[mem[160] + 295] = 0
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                                else:
                                    if arg1 == 8:
                                        mem[194] = '8'
                                        mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                        mem[199] = arg2
                                        mem[231] = 64
                                        mem[263] = mem[160]
                                        mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                        if ceil32(mem[160]) > mem[160]:
                                            mem[mem[160] + 295] = 0
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                                    else:
                                        if arg1 == 9:
                                            mem[194] = '9'
                                            mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                            mem[199] = arg2
                                            mem[231] = 64
                                            mem[263] = mem[160]
                                            mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[160] + 295] = 0
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                    gas gas_remaining wei
                                                   args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                                        else:
                                            if arg1 == 10:
                                                mem[194] = '10'
                                                mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                mem[200] = arg2
                                                mem[232] = 64
                                                mem[264] = mem[160]
                                                mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[160] + 296] = 0
                                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                        gas gas_remaining wei
                                                       args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                            else:
                                                if arg1 == 11:
                                                    mem[194] = '11'
                                                    mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                    mem[200] = arg2
                                                    mem[232] = 64
                                                    mem[264] = mem[160]
                                                    mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[160] + 296] = 0
                                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                            gas gas_remaining wei
                                                           args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                                else:
                                                    if arg1 == 12:
                                                        mem[194] = '12'
                                                        mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                        mem[200] = arg2
                                                        mem[232] = 64
                                                        mem[264] = mem[160]
                                                        mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                        if ceil32(mem[160]) > mem[160]:
                                                            mem[mem[160] + 296] = 0
                                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                gas gas_remaining wei
                                                               args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                                    else:
                                                        if arg1 == 13:
                                                            mem[194] = '13'
                                                            mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                            mem[200] = arg2
                                                            mem[232] = 64
                                                            mem[264] = mem[160]
                                                            mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                            if ceil32(mem[160]) > mem[160]:
                                                                mem[mem[160] + 296] = 0
                                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                    gas gas_remaining wei
                                                                   args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                                        else:
                                                            if arg1 == 14:
                                                                mem[194] = '14'
                                                                mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                                mem[200] = arg2
                                                                mem[232] = 64
                                                                mem[264] = mem[160]
                                                                mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                                if ceil32(mem[160]) > mem[160]:
                                                                    mem[mem[160] + 296] = 0
                                                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                        gas gas_remaining wei
                                                                       args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                                            else:
                                                                if arg1 == 15:
                                                                    mem[194] = '15'
                                                                    mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                                    mem[200] = arg2
                                                                    mem[232] = 64
                                                                    mem[264] = mem[160]
                                                                    mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                                    if ceil32(mem[160]) > mem[160]:
                                                                        mem[mem[160] + 296] = 0
                                                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                            gas gas_remaining wei
                                                                           args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
                                                                else:
                                                                    if arg1 != 16:
                                                                        mem[194] = '0'
                                                                        mem[195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                                        mem[199] = arg2
                                                                        mem[231] = 64
                                                                        mem[263] = mem[160]
                                                                        mem[295 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                                        if ceil32(mem[160]) > mem[160]:
                                                                            mem[mem[160] + 295] = 0
                                                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                                gas gas_remaining wei
                                                                               args arg2, Array(len=mem[160], data=mem[295 len ceil32(mem[160])])
                                                                    else:
                                                                        mem[194] = '16'
                                                                        mem[196] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                                                                        mem[200] = arg2
                                                                        mem[232] = 64
                                                                        mem[264] = mem[160]
                                                                        mem[296 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                                                                        if ceil32(mem[160]) > mem[160]:
                                                                            mem[mem[160] + 296] = 0
                                                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                                                                gas gas_remaining wei
                                                                               args arg2, Array(len=mem[160], data=mem[296 len ceil32(mem[160])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] == 1)
}



}
