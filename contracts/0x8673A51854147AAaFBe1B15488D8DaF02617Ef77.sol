contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c435c3a(?)
#  - sub_8353e254(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
const sub_9454932c(?) = mem[mem[64] len _240 + (64 * _241) + -mem[64] + 64]


function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    if not arg1:
        call msg.sender with:
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
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveAll() payable {
    mem[64] = 96
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    idx = var24001
    while idx < 6:
        mem[mem[64] + 4] = 0x70bbe4a294878a14cb3cdd9315f5eb490e346163
        mem[mem[64] + 36] = -1
        if not idx:
            require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
            call 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_44] == bool(mem[_44])
        else:
            if idx == 1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _47 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_47] == bool(mem[_47])
            else:
                if idx == 2:
                    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                    call 0x50b7545627a5162f82a992c33b87adc75187b218.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _50 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_50] == bool(mem[_50])
                else:
                    if idx == 3:
                        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _53 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_53] == bool(mem[_53])
                    else:
                        if idx == 4:
                            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _56 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_56] == bool(mem[_56])
                        else:
                            if idx != 5:
                                require ext_code.size(0)
                                call 0x0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _55 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_55] == bool(mem[_55])
                            else:
                                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _58 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_58] == bool(mem[_58])
        idx = idx + 1
        continue 
}

function withdrawFunds() payable {
    mem[64] = 96
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    idx = var31001
    while idx < 6:
        mem[mem[64] + 4] = this.address
        if not idx:
            require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
            staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _83 = mem[_76]
            if mem[_76]:
                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                mem[mem[64] + 36] = _83 - 1
                require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                call 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _83 - 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_104] == bool(mem[_104])
        else:
            if idx == 1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _86 = mem[_79]
                if mem[_79]:
                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                    mem[mem[64] + 36] = _86 - 1
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _86 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_107] == bool(mem[_107])
            else:
                if idx == 2:
                    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                    staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _82 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _89 = mem[_82]
                    if mem[_82]:
                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                        mem[mem[64] + 36] = _89 - 1
                        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                        call 0x50b7545627a5162f82a992c33b87adc75187b218.0xa9059cbb with:
                             gas gas_remaining wei
                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _89 - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _110 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_110] == bool(mem[_110])
                else:
                    if idx == 3:
                        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _85 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _92 = mem[_85]
                        if mem[_85]:
                            mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                            mem[mem[64] + 36] = _92 - 1
                            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _92 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _113 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_113] == bool(mem[_113])
                    else:
                        if idx == 4:
                            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                            staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _88 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _95 = mem[_88]
                            if mem[_88]:
                                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                mem[mem[64] + 36] = _95 - 1
                                require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                                call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _95 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _116 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_116] == bool(mem[_116])
                        else:
                            if idx != 5:
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _87 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _94 = mem[_87]
                                if mem[_87]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _94 - 1
                                    require ext_code.size(0)
                                    call 0x0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _94 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_115] == bool(mem[_115])
                            else:
                                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _91 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _98 = mem[_91]
                                if mem[_91]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _98 - 1
                                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _98 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_118] == bool(mem[_118])
        idx = idx + 1
        continue 
}

function withdrawProfits() payable {
    mem[64] = 96
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    idx = var31001
    while idx < 6:
        mem[mem[64] + 4] = this.address
        if not idx:
            require ext_code.size(0xccc9b2c9d96c33cecc064ddd444b132eff56e232)
            staticcall 0xccc9b2c9d96c33cecc064ddd444b132eff56e232.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _83 = mem[_76]
            if mem[_76]:
                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                mem[mem[64] + 36] = _83 - 1
                require ext_code.size(0xccc9b2c9d96c33cecc064ddd444b132eff56e232)
                call 0xccc9b2c9d96c33cecc064ddd444b132eff56e232.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _83 - 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_104] == bool(mem[_104])
        else:
            if idx == 1:
                require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                staticcall 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _86 = mem[_79]
                if mem[_79]:
                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                    mem[mem[64] + 36] = _86 - 1
                    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                    call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0xa9059cbb with:
                         gas gas_remaining wei
                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _86 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_107] == bool(mem[_107])
            else:
                if idx == 2:
                    require ext_code.size(0x81ccdd9e44c518caee2f720c43cd0853032a1779)
                    staticcall 0x81ccdd9e44c518caee2f720c43cd0853032a1779.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _82 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _89 = mem[_82]
                    if mem[_82]:
                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                        mem[mem[64] + 36] = _89 - 1
                        require ext_code.size(0x81ccdd9e44c518caee2f720c43cd0853032a1779)
                        call 0x81ccdd9e44c518caee2f720c43cd0853032a1779.0xa9059cbb with:
                             gas gas_remaining wei
                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _89 - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _110 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_110] == bool(mem[_110])
                else:
                    if idx == 3:
                        require ext_code.size(0xc25ff1af397b76252d6975b4d7649b35c0e60f69)
                        staticcall 0xc25ff1af397b76252d6975b4d7649b35c0e60f69.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _85 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _92 = mem[_85]
                        if mem[_85]:
                            mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                            mem[mem[64] + 36] = _92 - 1
                            require ext_code.size(0xc25ff1af397b76252d6975b4d7649b35c0e60f69)
                            call 0xc25ff1af397b76252d6975b4d7649b35c0e60f69.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _92 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _113 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_113] == bool(mem[_113])
                    else:
                        if idx == 4:
                            require ext_code.size(0x6807ed4369d9399847f306d7d835538915fa749d)
                            staticcall 0x6807ed4369d9399847f306d7d835538915fa749d.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _88 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _95 = mem[_88]
                            if mem[_88]:
                                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                mem[mem[64] + 36] = _95 - 1
                                require ext_code.size(0x6807ed4369d9399847f306d7d835538915fa749d)
                                call 0x6807ed4369d9399847f306d7d835538915fa749d.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _95 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _116 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_116] == bool(mem[_116])
                        else:
                            if idx != 5:
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _87 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _94 = mem[_87]
                                if mem[_87]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _94 - 1
                                    require ext_code.size(0)
                                    call 0x0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _94 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_115] == bool(mem[_115])
                            else:
                                require ext_code.size(0x18cb11c9f2b6f45a7ac0a95efd322ed4cf9eeebf)
                                staticcall 0x18cb11c9f2b6f45a7ac0a95efd322ed4cf9eeebf.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _91 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _98 = mem[_91]
                                if mem[_91]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _98 - 1
                                    require ext_code.size(0x18cb11c9f2b6f45a7ac0a95efd322ed4cf9eeebf)
                                    call 0x18cb11c9f2b6f45a7ac0a95efd322ed4cf9eeebf.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _98 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_118] == bool(mem[_118])
        idx = idx + 1
        continue 
}



}
