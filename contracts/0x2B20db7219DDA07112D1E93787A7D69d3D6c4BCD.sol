contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c435c3a(?)
#  - sub_8353e254(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
const sub_9454932c(?) = mem[mem[64] len _310 + (64 * _311) + -mem[64] + 64]


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
    while idx < 7:
        mem[mem[64] + 4] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
        mem[mem[64] + 36] = -1
        if not idx:
            require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
            call 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_47] == bool(mem[_47])
        else:
            if idx == 1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _51 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_51] == bool(mem[_51])
            else:
                if idx == 2:
                    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                    call 0x50b7545627a5162f82a992c33b87adc75187b218.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _54 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_54] == bool(mem[_54])
                else:
                    if idx == 3:
                        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _58 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_58] == bool(mem[_58])
                    else:
                        if idx == 4:
                            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _61 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_61] == bool(mem[_61])
                        else:
                            if idx == 5:
                                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _64 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_64] == bool(mem[_64])
                            else:
                                if idx != 6:
                                    require ext_code.size(0)
                                    call 0x0.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _63 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_63] == bool(mem[_63])
                                else:
                                    require ext_code.size(0x63a72806098bd3d9520cc43356dd78afe5d386d9)
                                    call 0x63a72806098bd3d9520cc43356dd78afe5d386d9.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _66 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_66] == bool(mem[_66])
        idx = idx + 1
        continue 
}

function withdrawFunds() payable {
    mem[64] = 96
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    idx = var31001
    while idx < 7:
        mem[mem[64] + 4] = this.address
        if not idx:
            require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
            staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _91 = mem[_83]
            if mem[_83]:
                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                mem[mem[64] + 36] = _91 - 1
                require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                call 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _91 - 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == bool(mem[_115])
        else:
            if idx == 1:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _95 = mem[_87]
                if mem[_87]:
                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                    mem[mem[64] + 36] = _95 - 1
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _95 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_119] == bool(mem[_119])
            else:
                if idx == 2:
                    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                    staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _90 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _98 = mem[_90]
                    if mem[_90]:
                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                        mem[mem[64] + 36] = _98 - 1
                        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                        call 0x50b7545627a5162f82a992c33b87adc75187b218.0xa9059cbb with:
                             gas gas_remaining wei
                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _98 - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_122] == bool(mem[_122])
                else:
                    if idx == 3:
                        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _94 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _102 = mem[_94]
                        if mem[_94]:
                            mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                            mem[mem[64] + 36] = _102 - 1
                            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _102 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_126] == bool(mem[_126])
                    else:
                        if idx == 4:
                            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                            staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _97 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _105 = mem[_97]
                            if mem[_97]:
                                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                mem[mem[64] + 36] = _105 - 1
                                require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                                call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _105 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _129 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_129] == bool(mem[_129])
                        else:
                            if idx == 5:
                                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _109 = mem[_101]
                                if mem[_101]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _109 - 1
                                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _109 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _132 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_132] == bool(mem[_132])
                            else:
                                if idx != 6:
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _100 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _108 = mem[_100]
                                    if mem[_100]:
                                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                        mem[mem[64] + 36] = _108 - 1
                                        require ext_code.size(0)
                                        call 0x0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _108 - 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _131 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_131] == bool(mem[_131])
                                else:
                                    require ext_code.size(0x63a72806098bd3d9520cc43356dd78afe5d386d9)
                                    staticcall 0x63a72806098bd3d9520cc43356dd78afe5d386d9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _104 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _112 = mem[_104]
                                    if mem[_104]:
                                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                        mem[mem[64] + 36] = _112 - 1
                                        require ext_code.size(0x63a72806098bd3d9520cc43356dd78afe5d386d9)
                                        call 0x63a72806098bd3d9520cc43356dd78afe5d386d9.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _112 - 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _134 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_134] == bool(mem[_134])
        idx = idx + 1
        continue 
}

function withdrawProfits() payable {
    mem[64] = 96
    if 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b != msg.sender:
        revert with 0, '01'
    idx = var31001
    while idx < 7:
        mem[mem[64] + 4] = this.address
        if not idx:
            require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
            staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _91 = mem[_83]
            if mem[_83]:
                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                mem[mem[64] + 36] = _91 - 1
                require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
                call 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _91 - 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == bool(mem[_115])
        else:
            if idx == 1:
                require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _95 = mem[_87]
                if mem[_87]:
                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                    mem[mem[64] + 36] = _95 - 1
                    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                    call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xa9059cbb with:
                         gas gas_remaining wei
                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _95 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_119] == bool(mem[_119])
            else:
                if idx == 2:
                    require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                    staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _90 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _98 = mem[_90]
                    if mem[_90]:
                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                        mem[mem[64] + 36] = _98 - 1
                        require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                        call 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0xa9059cbb with:
                             gas gas_remaining wei
                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _98 - 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_122] == bool(mem[_122])
                else:
                    if idx == 3:
                        require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _94 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _102 = mem[_94]
                        if mem[_94]:
                            mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                            mem[mem[64] + 36] = _102 - 1
                            require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                            call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _102 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_126] == bool(mem[_126])
                    else:
                        if idx == 4:
                            require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                            staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _97 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _105 = mem[_97]
                            if mem[_97]:
                                mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                mem[mem[64] + 36] = _105 - 1
                                require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                                call 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _105 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _129 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_129] == bool(mem[_129])
                        else:
                            if idx == 5:
                                require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
                                staticcall 0x532e6537fea298397212f09a61e03311686f548e.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _109 = mem[_101]
                                if mem[_101]:
                                    mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                    mem[mem[64] + 36] = _109 - 1
                                    require ext_code.size(0x532e6537fea298397212f09a61e03311686f548e)
                                    call 0x532e6537fea298397212f09a61e03311686f548e.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _109 - 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _132 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_132] == bool(mem[_132])
                            else:
                                if idx != 6:
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _100 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _108 = mem[_100]
                                    if mem[_100]:
                                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                        mem[mem[64] + 36] = _108 - 1
                                        require ext_code.size(0)
                                        call 0x0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _108 - 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _131 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_131] == bool(mem[_131])
                                else:
                                    require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _104 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _112 = mem[_104]
                                    if mem[_104]:
                                        mem[mem[64] + 4] = 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b
                                        mem[mem[64] + 36] = _112 - 1
                                        require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                                        call 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 0x3cecbac79d4eb7f975583936aa3a2a548b028a8b, _112 - 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _134 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_134] == bool(mem[_134])
        idx = idx + 1
        continue 
}



}
