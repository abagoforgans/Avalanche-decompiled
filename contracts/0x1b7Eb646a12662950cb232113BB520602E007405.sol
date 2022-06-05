contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_399d71fd(?)
#  - sub_407045a8(?)
#  - sub_500f1313(?)
#  - sub_5bf03be3(?)
#  - sub_9ead80fd(?)
#  - sub_d80c6821(?)
#
address owner;
address slaveAddress;

function owner() {
    return owner
}

function slave() {
    return slaveAddress
}

function _fallback() payable {
  stop
}

function isAllowed() {
    if owner != msg.sender:
        if slaveAddress != msg.sender:
            revert with 0, 'not allowed'
    return 1
}

function sub_4e27b7d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
        if address(arg1) != 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
            return 0
    return 1
}

function sub_0050648d(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
}

function sub_a22da4b2(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    return 0
}

function withdraw(address arg1) {
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_90c3d203(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg1) != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        if address(arg1) == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
            if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 0
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 0, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
                    return 0, 2
            else:
                if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 1, 0
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 1, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
                    return 1, 2
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 1136658199763285550214466495421557379492992340248)
            if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    return 2, 0
            else:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    return 2, 1
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
        else:
            if address(arg1) != 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                if address(arg1) != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    revert with 0, 'not found'
                if address(arg2) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    if address(arg3) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                        return 0
                    return 0, 1
                if address(arg3) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    return 1, 0
                return 1, 1
            if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 0
                    else:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 0, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
                    return 0, 2
            else:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 1, 0
                    else:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 1, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
                    return 1, 2
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 958196781496191500749492833627164619010516239972)
            if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    return 2, 0
            else:
                if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    return 2, 1
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
        return 2, 2
    if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 0, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
        else:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 2, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
    else:
        if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 1, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
        else:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 2, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 421523349434113839993385985742352365666273659819)
    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 0
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
        else:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 2
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
    else:
        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 1
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
        else:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 2
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
    return 4, 4
}



}
