contract main {




// =====================  Runtime code  =====================


#
#  - sub_18b92e12(?)
#  - sub_1c90f15d(?)
#  - sub_218b1a8a(?)
#  - sub_4103c718(?)
#  - sub_47b3333e(?)
#  - sub_93735342(?)
#
function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x85a92368ab710a85f57b9872c0fe4361a405e5d != msg.sender:
        require msg.sender == 0xebdef90adcd0cef650afd081375570b391a6880a
    if not arg1:
        call 0x085a92368ab710a85f57b9872c0fe4361a405e5d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x85a92368ab710a85f57b9872c0fe4361a405e5d, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
                    revert with 0, 'Q2'
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
