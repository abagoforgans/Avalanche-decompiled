contract main {




// =====================  Runtime code  =====================


#
#  - sub_bdeefa5f(?)
#
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_5d8f6bcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        return 18
    if address(arg1) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
        require address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    return 6
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not found'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b2ea941e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        if address(arg2) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            return 0, 1
        if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
            if address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                return 0, 2
    if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg2) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
            return 1, 0
        if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                return 1, 2
    require address(arg1) == 0xc7198437980c041c805a1edcba50c1ce5db95118
    if address(arg2) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        return 2, 0
    require address(arg1) == 0xc7198437980c041c805a1edcba50c1ce5db95118
    require address(arg2) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    return 2, 1
}

function sub_e4d6bfa3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require ext_code.size(stor2)
                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, arg1
            else:
                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                require ext_code.size(stor2)
                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, arg1
        else:
            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require ext_code.size(stor2)
                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, arg1
            else:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 2, 0, arg1
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 2, 1, arg1
                else:
                    if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 1, 2, arg1
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 2, 0, arg1
                        else:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                            require ext_code.size(stor2)
                            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 2, 1, arg1
    else:
        if address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require ext_code.size(stor2)
            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0, 1, arg1
        else:
            if address(arg2) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 2, 0, arg1
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 2, 1, arg1
                else:
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args 1, 0, arg1
                    else:
                        if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                require ext_code.size(stor2)
                                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args 2, 0, arg1
                            else:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                require ext_code.size(stor2)
                                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args 2, 1, arg1
                        else:
                            if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                require ext_code.size(stor2)
                                staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args 1, 2, arg1
                            else:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                    require ext_code.size(stor2)
                                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg1
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                    require ext_code.size(stor2)
                                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg1
            else:
                if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    require ext_code.size(stor2)
                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0, 2, arg1
                else:
                    if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 2, 0, arg1
                        else:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                            require ext_code.size(stor2)
                            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 2, 1, arg1
                    else:
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args 1, 0, arg1
                        else:
                            if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                    require ext_code.size(stor2)
                                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args 2, 0, arg1
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                    require ext_code.size(stor2)
                                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args 2, 1, arg1
                            else:
                                if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    require ext_code.size(stor2)
                                    staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args 1, 2, arg1
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                        require ext_code.size(stor2)
                                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args 2, 0, arg1
                                    else:
                                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                        require ext_code.size(stor2)
                                        staticcall stor2.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args 2, 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2fa400e8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg2) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require ext_code.size(stor2)
                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 2, 0, arg1, 0
            else:
                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                require ext_code.size(stor2)
                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 2, 1, arg1, 0
        else:
            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require ext_code.size(stor2)
                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, arg1, 0
            else:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 0, arg1, 0
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 1, arg1, 0
                else:
                    if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 2, arg1, 0
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 2, 0, arg1, 0
                        else:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                            require ext_code.size(stor2)
                            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 2, 1, arg1, 0
    else:
        if address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            require ext_code.size(stor2)
            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, arg1, 0
        else:
            if address(arg2) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 0, arg1, 0
                    else:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 1, arg1, 0
                else:
                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(stor2)
                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 0, arg1, 0
                    else:
                        if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                require ext_code.size(stor2)
                                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 2, 0, arg1, 0
                            else:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                require ext_code.size(stor2)
                                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 2, 1, arg1, 0
                        else:
                            if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                require ext_code.size(stor2)
                                call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 1, 2, arg1, 0
                            else:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                    require ext_code.size(stor2)
                                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 0, arg1, 0
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                    require ext_code.size(stor2)
                                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 1, arg1, 0
            else:
                if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    require ext_code.size(stor2)
                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 2, arg1, 0
                else:
                    if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 2, 0, arg1, 0
                        else:
                            require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                            require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                            require ext_code.size(stor2)
                            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 2, 1, arg1, 0
                    else:
                        if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(stor2)
                            call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 1, 0, arg1, 0
                        else:
                            if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                                require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                    require ext_code.size(stor2)
                                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 0, arg1, 0
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                    require ext_code.size(stor2)
                                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 1, arg1, 0
                            else:
                                if address(arg3) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                                    require ext_code.size(stor2)
                                    call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 2, arg1, 0
                                else:
                                    require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                    if address(arg3) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                                        require ext_code.size(stor2)
                                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 0, arg1, 0
                                    else:
                                        require address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118
                                        require address(arg3) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                                        require ext_code.size(stor2)
                                        call stor2.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 1, arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
