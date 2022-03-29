contract main {




// =====================  Runtime code  =====================


#
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
address stor0;

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    stor0 = arg1
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_16688e81(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    if not cd[68]:
        mem[100] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        idx = 0
        s = cd[36]
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _118 = mem[_115]
            require mem[_115] == mem[_115 + 18 len 14]
            _122 = mem[_115 + 32]
            require mem[_115 + 32] == mem[_115 + 50 len 14]
            require mem[_115 + 64] == mem[_115 + 92 len 4]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx != 0:
                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and mem[_115 + 50 len 14] > -1 / 997 * s:
                            revert with 0, 17
                        if mem[_115 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_115 + 18 len 14] > !(997 * s):
                            revert with 0, 17
                        if not (1000 * mem[_115 + 18 len 14]) + (997 * s):
                            revert with 0, 18
                        _141 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_141] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _141 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        continue 
                    if 997 * s and mem[_115 + 18 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_115 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_115 + 50 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_115 + 50 len 14]) + (997 * s):
                        revert with 0, 18
                    _143 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_143] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _143 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s), 0, address(this.address), 128, 0
                else:
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and mem[_115 + 50 len 14] > -1 / 997 * s:
                            revert with 0, 17
                        if mem[_115 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_115 + 18 len 14] > !(997 * s):
                            revert with 0, 17
                        if not (1000 * mem[_115 + 18 len 14]) + (997 * s):
                            revert with 0, 18
                        _153 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_153] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _153 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        continue 
                    if 997 * s and mem[_115 + 18 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_115 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_115 + 50 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_115 + 50 len 14]) + (997 * s):
                        revert with 0, 18
                    _155 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_155] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _155 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
            else:
                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = s
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[((96 * idx) + cd[4] + 36)]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_135] == bool(mem[_135])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and Mask(112, 0, _122) > -1 / 997 * s:
                            revert with 0, 17
                        if Mask(112, 0, _118) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _118) > !(997 * s):
                            revert with 0, 17
                        if not (1000 * Mask(112, 0, _118)) + (997 * s):
                            revert with 0, 18
                        _159 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_159] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _159 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        continue 
                    if 997 * s and Mask(112, 0, _118) > -1 / 997 * s:
                        revert with 0, 17
                    if Mask(112, 0, _122) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * Mask(112, 0, _122) > !(997 * s):
                        revert with 0, 17
                    if not (1000 * Mask(112, 0, _122)) + (997 * s):
                        revert with 0, 18
                    _161 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_161] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _161 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s), 0, address(this.address), 128, 0
                else:
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and Mask(112, 0, _122) > -1 / 997 * s:
                            revert with 0, 17
                        if Mask(112, 0, _118) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _118) > !(997 * s):
                            revert with 0, 17
                        if not (1000 * Mask(112, 0, _118)) + (997 * s):
                            revert with 0, 18
                        _181 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_181] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _181 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _122) / (1000 * Mask(112, 0, _118)) + (997 * s)
                        continue 
                    if 997 * s and Mask(112, 0, _118) > -1 / 997 * s:
                        revert with 0, 17
                    if Mask(112, 0, _122) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * Mask(112, 0, _122) > !(997 * s):
                        revert with 0, 17
                    if not (1000 * Mask(112, 0, _122)) + (997 * s):
                        revert with 0, 18
                    _183 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_183] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _183 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _118) / (1000 * Mask(112, 0, _122)) + (997 * s)
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_102] <= ext_call.return_data[0]:
            revert with 0, 'E1'
    else:
        idx = 0
        s = cd[68]
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_116] == mem[_116 + 18 len 14]
            require mem[_116 + 32] == mem[_116 + 50 len 14]
            require mem[_116 + 64] == mem[_116 + 92 len 4]
            if s < mem[_116 + 18 len 14]:
                revert with 0, 17
            if s - mem[_116 + 18 len 14] < mem[_116 + 50 len 14]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - mem[_116 + 18 len 14] - mem[_116 + 50 len 14]
            continue 
        if cd[68] + (cd[68] * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length):
            revert with 0, 'R1'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _106 = mem[_104]
        idx = 0
        s = cd[36]
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _246 = mem[_245]
            require mem[_245] == mem[_245 + 18 len 14]
            _247 = mem[_245 + 32]
            require mem[_245 + 32] == mem[_245 + 50 len 14]
            require mem[_245 + 64] == mem[_245 + 92 len 4]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx != 0:
                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and mem[_245 + 50 len 14] > -1 / 997 * s:
                            revert with 0, 17
                        if mem[_245 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_245 + 18 len 14] > !(997 * s):
                            revert with 0, 17
                        if not (1000 * mem[_245 + 18 len 14]) + (997 * s):
                            revert with 0, 18
                        _253 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_253] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _253 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        continue 
                    if 997 * s and mem[_245 + 18 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_245 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_245 + 50 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_245 + 50 len 14]) + (997 * s):
                        revert with 0, 18
                    _255 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_255] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _255 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s), 0, address(this.address), 128, 0
                else:
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and mem[_245 + 50 len 14] > -1 / 997 * s:
                            revert with 0, 17
                        if mem[_245 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_245 + 18 len 14] > !(997 * s):
                            revert with 0, 17
                        if not (1000 * mem[_245 + 18 len 14]) + (997 * s):
                            revert with 0, 18
                        _265 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_265] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _265 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        continue 
                    if 997 * s and mem[_245 + 18 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_245 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_245 + 50 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_245 + 50 len 14]) + (997 * s):
                        revert with 0, 18
                    _267 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_267] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _267 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
            else:
                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = s
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[((96 * idx) + cd[4] + 36)]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_251] == bool(mem[_251])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and Mask(112, 0, _247) > -1 / 997 * s:
                            revert with 0, 17
                        if Mask(112, 0, _246) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _246) > !(997 * s):
                            revert with 0, 17
                        if not (1000 * Mask(112, 0, _246)) + (997 * s):
                            revert with 0, 18
                        _271 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_271] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _271 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        continue 
                    if 997 * s and Mask(112, 0, _246) > -1 / 997 * s:
                        revert with 0, 17
                    if Mask(112, 0, _247) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * Mask(112, 0, _247) > !(997 * s):
                        revert with 0, 17
                    if not (1000 * Mask(112, 0, _247)) + (997 * s):
                        revert with 0, 18
                    _273 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_273] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _273 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s), 0, address(this.address), 128, 0
                else:
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                        if 997 * s and Mask(112, 0, _247) > -1 / 997 * s:
                            revert with 0, 17
                        if Mask(112, 0, _246) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _246) > !(997 * s):
                            revert with 0, 17
                        if not (1000 * Mask(112, 0, _246)) + (997 * s):
                            revert with 0, 18
                        _289 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_289] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _289 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _247) / (1000 * Mask(112, 0, _246)) + (997 * s)
                        continue 
                    if 997 * s and Mask(112, 0, _246) > -1 / 997 * s:
                        revert with 0, 17
                    if Mask(112, 0, _247) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * Mask(112, 0, _247) > !(997 * s):
                        revert with 0, 17
                    if not (1000 * Mask(112, 0, _247)) + (997 * s):
                        revert with 0, 18
                    _291 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_291] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _291 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _246) / (1000 * Mask(112, 0, _247)) + (997 * s)
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_223] <= _106:
            revert with 0, 'E1'
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xda3e3397(?????) > uint32(call.func_hash) >> 224:
            if withdraw(uint256 rg1, address rg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if stor0 != msg.sender:
                    revert with 0, 'Only the owner can call this'
                call address(cd[36]) with:
                   value cd[4] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x16688e81(?????):
                    require unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor0 != msg.sender:
                        revert with 0, 'Only the owner can call this'
                    stor0 = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
                    if not cd[68]:
                        mem[132] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        idx = 0
                        s = cd[36]
                        while idx < ('cd', 4).length:
                            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _503 = mem[_452]
                            require mem[_452] == mem[_452 + 18 len 14]
                            _539 = mem[_452 + 32]
                            require mem[_452 + 32] == mem[_452 + 50 len 14]
                            require mem[_452 + 64] == mem[_452 + 92 len 4]
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx != 0:
                                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and mem[_452 + 50 len 14] > -1 / 997 * s:
                                            revert with 0, 17
                                        if mem[_452 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * mem[_452 + 18 len 14] > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * mem[_452 + 18 len 14]) + (997 * s):
                                            revert with 0, 18
                                        _622 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_622] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _622 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        continue 
                                    if 997 * s and mem[_452 + 18 len 14] > -1 / 997 * s:
                                        revert with 0, 17
                                    if mem[_452 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * mem[_452 + 50 len 14] > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * mem[_452 + 50 len 14]) + (997 * s):
                                        revert with 0, 18
                                    _624 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_624] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _624 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s), 0, address(this.address), 128, 0
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if idx + 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and mem[_452 + 50 len 14] > -1 / 997 * s:
                                            revert with 0, 17
                                        if mem[_452 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * mem[_452 + 18 len 14] > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * mem[_452 + 18 len 14]) + (997 * s):
                                            revert with 0, 18
                                        _634 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_634] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _634 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        continue 
                                    if 997 * s and mem[_452 + 18 len 14] > -1 / 997 * s:
                                        revert with 0, 17
                                    if mem[_452 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * mem[_452 + 50 len 14] > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * mem[_452 + 50 len 14]) + (997 * s):
                                        revert with 0, 18
                                    _636 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_636] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _636 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            else:
                                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
                                mem[mem[64] + 36] = s
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((96 * idx) + cd[4] + 36)]), s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_616] == bool(mem[_616])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and Mask(112, 0, _539) > -1 / 997 * s:
                                            revert with 0, 17
                                        if Mask(112, 0, _503) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * Mask(112, 0, _503) > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * Mask(112, 0, _503)) + (997 * s):
                                            revert with 0, 18
                                        _640 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_640] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _640 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        continue 
                                    if 997 * s and Mask(112, 0, _503) > -1 / 997 * s:
                                        revert with 0, 17
                                    if Mask(112, 0, _539) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, _539) > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * Mask(112, 0, _539)) + (997 * s):
                                        revert with 0, 18
                                    _642 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_642] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _642 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s), 0, address(this.address), 128, 0
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if idx + 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and Mask(112, 0, _539) > -1 / 997 * s:
                                            revert with 0, 17
                                        if Mask(112, 0, _503) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * Mask(112, 0, _503) > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * Mask(112, 0, _503)) + (997 * s):
                                            revert with 0, 18
                                        _662 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_662] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _662 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _539) / (1000 * Mask(112, 0, _503)) + (997 * s)
                                        continue 
                                    if 997 * s and Mask(112, 0, _503) > -1 / 997 * s:
                                        revert with 0, 17
                                    if Mask(112, 0, _539) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, _539) > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * Mask(112, 0, _539)) + (997 * s):
                                        revert with 0, 18
                                    _664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_664] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _664 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 997 * s * Mask(112, 0, _503) / (1000 * Mask(112, 0, _539)) + (997 * s)
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_375] <= ext_call.return_data[0]:
                            revert with 0, 'E1'
                    else:
                        idx = 0
                        s = cd[68]
                        while idx < ('cd', 4).length:
                            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_453] == mem[_453 + 18 len 14]
                            require mem[_453 + 32] == mem[_453 + 50 len 14]
                            require mem[_453 + 64] == mem[_453 + 92 len 4]
                            if s < mem[_453 + 18 len 14]:
                                revert with 0, 17
                            if s - mem[_453 + 18 len 14] < mem[_453 + 50 len 14]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - mem[_453 + 18 len 14] - mem[_453 + 50 len 14]
                            continue 
                        if cd[68] + (cd[68] * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (cd[68] * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) + (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length):
                            revert with 0, 'R1'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _395 = mem[_377]
                        idx = 0
                        s = cd[36]
                        while idx < ('cd', 4).length:
                            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _774 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _775 = mem[_774]
                            require mem[_774] == mem[_774 + 18 len 14]
                            _776 = mem[_774 + 32]
                            require mem[_774 + 32] == mem[_774 + 50 len 14]
                            require mem[_774 + 64] == mem[_774 + 92 len 4]
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx != 0:
                                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and mem[_774 + 50 len 14] > -1 / 997 * s:
                                            revert with 0, 17
                                        if mem[_774 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * mem[_774 + 18 len 14] > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * mem[_774 + 18 len 14]) + (997 * s):
                                            revert with 0, 18
                                        _782 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_782] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _782 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        continue 
                                    if 997 * s and mem[_774 + 18 len 14] > -1 / 997 * s:
                                        revert with 0, 17
                                    if mem[_774 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * mem[_774 + 50 len 14] > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * mem[_774 + 50 len 14]) + (997 * s):
                                        revert with 0, 18
                                    _784 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_784] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _784 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s), 0, address(this.address), 128, 0
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if idx + 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and mem[_774 + 50 len 14] > -1 / 997 * s:
                                            revert with 0, 17
                                        if mem[_774 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * mem[_774 + 18 len 14] > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * mem[_774 + 18 len 14]) + (997 * s):
                                            revert with 0, 18
                                        _794 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_794] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _794 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        continue 
                                    if 997 * s and mem[_774 + 18 len 14] > -1 / 997 * s:
                                        revert with 0, 17
                                    if mem[_774 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * mem[_774 + 50 len 14] > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * mem[_774 + 50 len 14]) + (997 * s):
                                        revert with 0, 18
                                    _796 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_796] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _796 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            else:
                                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
                                mem[mem[64] + 36] = s
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((96 * idx) + cd[4] + 36)]), s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_780] == bool(mem[_780])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and Mask(112, 0, _776) > -1 / 997 * s:
                                            revert with 0, 17
                                        if Mask(112, 0, _775) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * Mask(112, 0, _775) > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * Mask(112, 0, _775)) + (997 * s):
                                            revert with 0, 18
                                        _800 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_800] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _800 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        continue 
                                    if 997 * s and Mask(112, 0, _775) > -1 / 997 * s:
                                        revert with 0, 17
                                    if Mask(112, 0, _776) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, _776) > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * Mask(112, 0, _776)) + (997 * s):
                                        revert with 0, 18
                                    _802 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_802] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _802 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s), 0, address(this.address), 128, 0
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if idx + 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                                    if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if address(cd[((96 * idx) + cd[4] + 68)]) <= address(cd[((96 * idx) + cd[4] + 100)]):
                                        if 997 * s and Mask(112, 0, _776) > -1 / 997 * s:
                                            revert with 0, 17
                                        if Mask(112, 0, _775) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                            revert with 0, 17
                                        if 1000 * Mask(112, 0, _775) > !(997 * s):
                                            revert with 0, 17
                                        if not (1000 * Mask(112, 0, _775)) + (997 * s):
                                            revert with 0, 18
                                        _818 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_818] = 0
                                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        t = 0
                                        while t < 0:
                                            mem[t + mem[64] + 164] = mem[t + _818 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _775)) + (997 * s)
                                        continue 
                                    if 997 * s and Mask(112, 0, _775) > -1 / 997 * s:
                                        revert with 0, 17
                                    if Mask(112, 0, _776) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, _776) > !(997 * s):
                                        revert with 0, 17
                                    if not (1000 * Mask(112, 0, _776)) + (997 * s):
                                        revert with 0, 18
                                    _820 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_820] = 0
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s)
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    t = 0
                                    while t < 0:
                                        mem[t + mem[64] + 164] = mem[t + _820 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 997 * s * Mask(112, 0, _775) / (1000 * Mask(112, 0, _776)) + (997 * s)
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_720] <= _395:
                            revert with 0, 'E1'
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xda3e3397(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xe5994905(?????):
                    require unknown_0xf5537ede(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if stor0 != msg.sender:
                        revert with 0, 'Only the owner can call this'
                    mem[164] = address(cd[36])
                    mem[196] = cd[68]
                    mem[128] = 68
                    mem[164 len 28] = address(cd[36]) << 64
                    mem[160 len 4] = transfer(address rg1, uint256 rg2)
                    mem[228] = 32
                    mem[260] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transfer(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0
                    mem[360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[324] == bool(mem[324])
                        if not mem[324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    if stor0 != msg.sender:
                        revert with 0, 'Only the owner can call this'
                    mem[164] = address(cd[36])
                    mem[196] = address(cd[68])
                    mem[228] = cd[100]
                    mem[128] = 100
                    mem[164 len 28] = address(cd[36]) << 64
                    mem[160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                    mem[260] = 32
                    mem[292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0
                    mem[424] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[356] == bool(mem[356])
                        if not mem[356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if stor0 != msg.sender:
                    revert with 0, 'Only the owner can call this'
                if not cd[68]:
                    mem[164] = address(cd[36])
                    mem[196] = cd[68]
                    mem[128] = 68
                    mem[164 len 28] = address(cd[36]) << 64
                    mem[160 len 4] = approve(address rg1, uint256 rg2)
                    mem[228] = 32
                    mem[260] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0
                    mem[360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[324] == bool(mem[324])
                        if not mem[324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = this.address
                    mem[164] = address(cd[36])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(cd[36])
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[ceil32(return_data.size) + 164] = address(cd[36])
                    mem[ceil32(return_data.size) + 196] = cd[68]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                    mem[ceil32(return_data.size) + 160 len 4] = approve(address rg1, uint256 rg2)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address rg1, uint256 rg2), address(cd[36]) << 64, 0, cd[68], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
