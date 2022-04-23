contract main {




// =====================  Runtime code  =====================


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

function sub_5c470cee(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 0:
        revert with 0, 'Wrong troop id'
    if arg1 >= 12:
        revert with 0, 'Wrong troop id'
    if not arg1:
        return 32, 3, 4578 * 10^18, 11345 * 10^18, 500 * 10^18
    if arg1 == 1:
        return 32, 3, 20125 * 10^14 * 3600, 16820 * 10^18, 800 * 10^18
    if arg1 == 2:
        return 32, 3, 15456 * 10^18, 33456 * 10^18, 1580 * 10^18
    if arg1 == 3:
        return 32, 3, 32456 * 10^18, 70123 * 10^18, 3296 * 10^18
    if arg1 == 4:
        return 32, 3, 72456 * 10^18, 155123 * 10^18, 7060 * 10^18
    if arg1 == 5:
        return 32, 3, 2800 * 10^18, 6123 * 10^18, 123 * 10^18
    if arg1 == 6:
        return 32, 3, 3400 * 10^18, 7500 * 10^18, 167 * 10^18
    if arg1 == 7:
        return 32, 3, 4897 * 10^18, 10784 * 10^18, 327 * 10^18
    if arg1 == 8:
        return 32, 3, 6784 * 10^18, 14675 * 10^18, 512 * 10^18
    if arg1 == 9:
        return 32, 3, 8124 * 10^18, 17654 * 10^18, 897 * 10^18
    if arg1 == 10:
        return 32, 3, 24784 * 10^18, 1342 * 10^16 * 3600, 2545 * 10^18
    if arg1 == 11:
        return 32, 3, 26457 * 10^18, 50456 * 10^18, 2845 * 10^18
    if arg1 != 12:
        return Array(len=3, data=call.data[calldata.size len 96])
    return 32, 3, 29456 * 10^18, 55789 * 10^18, 3145 * 10^18
}

function sub_aa34511f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    mem[164] = 'game'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = 7
    mem[ceil32(return_data.size) + 196] = 'f-level'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=7, data='f-level')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 64
    mem[(2 * ceil32(return_data.size)) + 164] = 7
    mem[(2 * ceil32(return_data.size)) + 196] = 'a-level'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=7, data='a-level')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= 0:
        if arg1 <= 4:
            if ext_call.return_data[0] < 1:
                revert with 0, 'Need to build factory on your planet.'
        else:
            if arg1 >= 5:
                if arg1 <= 12:
                    if ext_call.return_data[0] < 1:
                        revert with 0, 'Need to build academy on your planet.'
    if not arg1:
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
             gas gas_remaining wei
            args address(arg3), arg1
    else:
        if arg1 == 1:
            mem[(4 * ceil32(return_data.size)) + 192] = 'r-'
            mem[(4 * ceil32(return_data.size)) + 194] = '0'
            mem[(4 * ceil32(return_data.size)) + 195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 199] = arg2
            mem[(4 * ceil32(return_data.size)) + 231] = 64
            mem[(4 * ceil32(return_data.size)) + 263] = mem[(4 * ceil32(return_data.size)) + 160]
            mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 295] = 0
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg2, Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] == 1
            require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
            call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                 gas gas_remaining wei
                args address(arg3), arg1, mem[(6 * ceil32(return_data.size)) + 263 len 9 * ceil32(return_data.size)]
        else:
            if arg1 == 2:
                mem[(4 * ceil32(return_data.size)) + 192] = 'r-'
                mem[(4 * ceil32(return_data.size)) + 194] = '1'
                mem[(4 * ceil32(return_data.size)) + 195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 199] = arg2
                mem[(4 * ceil32(return_data.size)) + 231] = 64
                mem[(4 * ceil32(return_data.size)) + 263] = mem[(4 * ceil32(return_data.size)) + 160]
                mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                    mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 295] = 0
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg2, Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[0] == 1
                require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
                call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                     gas gas_remaining wei
                    args address(arg3), arg1, mem[(6 * ceil32(return_data.size)) + 263 len 9 * ceil32(return_data.size)]
            else:
                if arg1 == 3:
                    mem[(4 * ceil32(return_data.size)) + 192] = 'r-'
                    mem[(4 * ceil32(return_data.size)) + 194] = '2'
                    mem[(4 * ceil32(return_data.size)) + 195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 199] = arg2
                    mem[(4 * ceil32(return_data.size)) + 231] = 64
                    mem[(4 * ceil32(return_data.size)) + 263] = mem[(4 * ceil32(return_data.size)) + 160]
                    mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                        mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 295] = 0
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                            gas gas_remaining wei
                           args arg2, Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[0] == 1
                    require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
                    call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                         gas gas_remaining wei
                        args address(arg3), arg1, mem[(6 * ceil32(return_data.size)) + 263 len 9 * ceil32(return_data.size)]
                else:
                    if arg1 == 4:
                        mem[(4 * ceil32(return_data.size)) + 192] = 'r-'
                        mem[(4 * ceil32(return_data.size)) + 194] = '3'
                        mem[(4 * ceil32(return_data.size)) + 195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 199] = arg2
                        mem[(4 * ceil32(return_data.size)) + 231] = 64
                        mem[(4 * ceil32(return_data.size)) + 263] = mem[(4 * ceil32(return_data.size)) + 160]
                        mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                        if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                            mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 295] = 0
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                gas gas_remaining wei
                               args arg2, Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[0] == 1
                        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
                        call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                             gas gas_remaining wei
                            args address(arg3), arg1, mem[(6 * ceil32(return_data.size)) + 263 len 9 * ceil32(return_data.size)]
                    else:
                        if arg1 == 5:
                            require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
                            call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                                 gas gas_remaining wei
                                args address(arg3), arg1
                        else:
                            if arg1 != 6:
                                if arg1 != 7:
                                    if arg1 != 8:
                                        if arg1 != 9:
                                            if arg1 != 10:
                                                if arg1 != 11:
                                                    if arg1 != 12:
                                                        revert with 0, 'wrong id'
                            mem[(4 * ceil32(return_data.size)) + 192] = 'r-'
                            mem[(4 * ceil32(return_data.size)) + 194] = '4'
                            mem[(4 * ceil32(return_data.size)) + 195] = 0x4994abe100000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 199] = arg2
                            mem[(4 * ceil32(return_data.size)) + 231] = 64
                            mem[(4 * ceil32(return_data.size)) + 263] = mem[(4 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                            if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                                mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 295] = 0
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + 295 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[0] == 1
                            require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
                            call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x82750d53 with:
                                 gas gas_remaining wei
                                args address(arg3), arg1, mem[(6 * ceil32(return_data.size)) + 263 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
