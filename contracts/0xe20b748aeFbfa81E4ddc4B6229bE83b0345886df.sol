contract main {




// =====================  Runtime code  =====================


address owner;
address sub_c02b9e5eAddress;
array of uint256 sub_28893446;
array of uint8 stor806;

function winners(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < 200
    require arg2 < 4
    return stor[arg2 + (4 * arg1) + 2]
}

function sub_28893446(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_28893446[arg1]
}

function owner() {
    return owner
}

function sub_c02b9e5e(?) {
    return sub_c02b9e5eAddress
}

function isWon(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 10001
    return bool(uint8(stor806[uint8(arg1)]))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1c6ba38c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3:
        revert with 0, 'Invalid roundIndex'
    if arg2 < eth.balance(this.address):
        revert with 0, 'Invalid totalAmount'
    if arg1 < 4:
        if not sub_28893446[arg1]:
            revert with 0, 18
        if arg1 < 4:
            if var34003 >= sub_28893446[arg1]:
            if arg1 < 200:
                idx = var36001
                while idx < 4:
                    mem[mem[64] + 4] = stor[idx + (4 * arg1) + 2]
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                            gas gas_remaining wei
                           args stor[idx + (4 * arg1) + 2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _33 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_33] == mem[_33 + 12 len 20]
                    call mem[_33 + 12 len 20] with:
                       value arg2 / sub_28893446[arg1] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    if arg1 >= 4:
                        revert with 0, 50
                    if idx + 1 >= sub_28893446[arg1]:
                    if arg1 >= 200:
                        revert with 0, 50
                    idx = idx + 1
                    continue 
    revert with 0, 50
}

function sub_65463d01(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] > 3:
        revert with 0, 'Invalid roundIndex'
    if cd[36] <= 0:
        revert with 0, 'Invalid roundCount'
    if cd[4] > 200:
        revert with 0, 'Invalid roundCount'
    idx = 0
    s = mem[96]
    while idx < cd[36]:
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.pendingCount() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _53 = mem[_52]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = _53
        _55 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        if not s:
            revert with 0, 18
        if sha3(mem[_55 + 32 len mem[_55]]) % s >= mem[96]:
            revert with 0, 50
        if cd[4] >= 200:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        stor[idx + (4 * cd[4]) + 2] = mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128]
        if sha3(mem[_55 + 32 len mem[_55]]) % s >= mem[96]:
            revert with 0, 50
        if mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128] >= 10001:
            revert with 0, 50
        uint256(stor806[0.03125 / mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128]]) = 256^(mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128] % 32) or !(255 * 256^(mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128] % 32)) and uint256(stor806[0.03125 / mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128]])
        if s < 1:
            revert with 0, 17
        if sha3(mem[_55 + 32 len mem[_55]]) % s != s - 1:
            if s < 1:
                revert with 0, 17
            if s - 1 >= mem[96]:
                revert with 0, 50
            if sha3(mem[_55 + 32 len mem[_55]]) % s >= mem[96]:
                revert with 0, 50
            mem[(32 * sha3(mem[_55 + 32 len mem[_55]]) % s) + 128] = mem[(32 * s - 1) + 128]
        if not s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s - 1
        continue 
    if cd[4] >= 4:
        revert with 0, 50
    sub_28893446[cd[4]] = cd[36]
}

function getWinners(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 3:
        revert with 0, 'Invalid roundIndex'
    if arg1 >= 4:
        revert with 0, 50
    if sub_28893446[arg1] > test266151307():
        revert with 0, 65
    mem[96] = sub_28893446[arg1]
    mem[64] = (32 * sub_28893446[arg1]) + 128
    if not sub_28893446[arg1]:
        if arg1 >= 4:
            revert with 0, 50
        if var30003 < sub_28893446[arg1]:
            if arg1 < 200:
                idx = var32001
                while idx < 4:
                    _118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_118] = stor[idx + (4 * arg1) + 2]
                    mem[mem[64] + 4] = stor[idx + (4 * arg1) + 2]
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                            gas gas_remaining wei
                           args stor[idx + (4 * arg1) + 2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_128] == mem[_128 + 12 len 20]
                    mem[_118 + 32] = mem[_128 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _118
                    if idx == -1:
                        revert with 0, 17
                    if arg1 >= 4:
                        revert with 0, 50
                    if idx + 1 < sub_28893446[arg1]:
                        if arg1 >= 200:
                            revert with 0, 50
                        idx = idx + 1
                        continue 
                    _134 = mem[64]
                    mem[mem[64]] = 32
                    _135 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 64
                    while idx < _135:
                        _146 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_146 + 44 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _134 + (64 * _135) + -mem[64] + 64
            revert with 0, 50
        mem[(32 * sub_28893446[arg1]) + 128] = 32
        mem[(32 * sub_28893446[arg1]) + 160] = sub_28893446[arg1]
        idx = 0
        s = 128
        t = (32 * sub_28893446[arg1]) + 192
        while idx < mem[96]:
            _84 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_84 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len (98 * sub_28893446[arg1]) + -mem[64] + 192
    mem[64] = (32 * sub_28893446[arg1]) + 192
    mem[(32 * sub_28893446[arg1]) + 128] = 0
    mem[(32 * sub_28893446[arg1]) + 160] = 0
    mem[128] = (32 * sub_28893446[arg1]) + 128
    s = 128
    idx = sub_28893446[arg1]
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_28893446[arg1]) + 128] = 0
        mem[(32 * sub_28893446[arg1]) + 160] = 0
        mem[s + 32] = (32 * sub_28893446[arg1]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if arg1 >= 4:
        revert with 0, 50
    if var34003 < sub_28893446[arg1]:
        if arg1 < 200:
            idx = var36001
            while idx < 4:
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = stor[idx + (4 * arg1) + 2]
                mem[mem[64] + 4] = stor[idx + (4 * arg1) + 2]
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                        gas gas_remaining wei
                       args stor[idx + (4 * arg1) + 2]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_153] == mem[_153 + 12 len 20]
                mem[_149 + 32] = mem[_153 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _149
                if idx == -1:
                    revert with 0, 17
                if arg1 >= 4:
                    revert with 0, 50
                if idx + 1 < sub_28893446[arg1]:
                    if arg1 >= 200:
                        revert with 0, 50
                    idx = idx + 1
                    continue 
                _156 = mem[64]
                mem[mem[64]] = 32
                _157 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _157:
                    _162 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_162 + 44 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _156 + (64 * _157) + -mem[64] + 64
        revert with 0, 50
    _91 = mem[64]
    mem[mem[64]] = 32
    _92 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _92:
        _121 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_121 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _91 + (64 * _92) + -mem[64] + 64
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            owner = 0
            emit OwnershipTransferred(owner, 0);
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xc02b9e5e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_c02b9e5eAddress
            if unknown_0xdb2e21bc(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xe9c0932f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < 10001
                    return bool(uint8(stor806[uint8(cd[4])]))
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
    if winners(uint256 rg1, uint256 rg2) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] < 200
        require cd[36] < 4
        return stor[cd[36] + (4 * cd[4]) + 2]
    if unknown_0x1c6ba38c(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if cd[4] > 3:
            revert with 0, 'Invalid roundIndex'
        if cd[36] < eth.balance(this.address):
            revert with 0, 'Invalid totalAmount'
        if cd[4] < 4:
            if not sub_28893446[cd[4]]:
                revert with 0, 18
            if cd[4] < 4:
                if var38003 >= sub_28893446[cd[4]]:
                if cd[4] < 200:
                    idx = var40001
                    while idx < 4:
                        mem[mem[64] + 4] = stor[idx + (4 * cd[4]) + 2]
                        require ext_code.size(sub_c02b9e5eAddress)
                        staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                                gas gas_remaining wei
                               args stor[idx + (4 * cd[4]) + 2]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_246] == mem[_246 + 12 len 20]
                        call mem[_246 + 12 len 20] with:
                           value cd[36] / sub_28893446[cd[4]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        if cd[4] >= 4:
                            revert with 0, 50
                        if idx + 1 >= sub_28893446[cd[4]]:
                        if cd[4] >= 200:
                            revert with 0, 50
                        idx = idx + 1
                        continue 
        revert with 0, 50
    if unknown_0x28893446(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] < 4
        return sub_28893446[cd[4]]
    if unknown_0x65463d01(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 68).length) + 129 > test266151307() or ceil32(32 * ('cd', 68).length) + 129 < 128:
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 68).length) + 129
        mem[128] = ('cd', 68).length
        require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
        s = cd[68] + 36
        t = 160
        idx = 0
        while idx < ('cd', 68).length:
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if cd[4] > 3:
            revert with 0, 'Invalid roundIndex'
        if cd[36] <= 0:
            revert with 0, 'Invalid roundCount'
        if cd[4] > 200:
            revert with 0, 'Invalid roundCount'
        idx = 0
        s = mem[128]
        while idx < cd[36]:
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.pendingCount() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _162 = mem[_152]
            mem[mem[64] + 32] = block.difficulty
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = _162
            _169 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            if not s:
                revert with 0, 18
            if sha3(mem[_169 + 32 len mem[_169]]) % s >= mem[128]:
                revert with 0, 50
            if cd[4] >= 200:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            stor[idx + (4 * cd[4]) + 2] = mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160]
            if sha3(mem[_169 + 32 len mem[_169]]) % s >= mem[128]:
                revert with 0, 50
            if mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160] >= 10001:
                revert with 0, 50
            uint256(stor806[0.03125 / mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160]]) = 256^(mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160] % 32) or !(255 * 256^(mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160] % 32)) and uint256(stor806[0.03125 / mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160]])
            if s < 1:
                revert with 0, 17
            if sha3(mem[_169 + 32 len mem[_169]]) % s != s - 1:
                if s < 1:
                    revert with 0, 17
                if s - 1 >= mem[128]:
                    revert with 0, 50
                if sha3(mem[_169 + 32 len mem[_169]]) % s >= mem[128]:
                    revert with 0, 50
                mem[(32 * sha3(mem[_169 + 32 len mem[_169]]) % s) + 160] = mem[(32 * s - 1) + 160]
            if not s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - 1
            continue 
        if cd[4] >= 4:
            revert with 0, 50
        sub_28893446[cd[4]] = cd[36]
    if uint32(call.func_hash) >> 224 != unknown_0x6b1426a4(?????):
    require not msg.value
    require calldata.size - 4 >= 32
    if cd[4] > 3:
        revert with 0, 'Invalid roundIndex'
    if cd[4] >= 4:
        revert with 0, 50
    if sub_28893446[cd[4]] > test266151307():
        revert with 0, 65
    mem[128] = sub_28893446[cd[4]]
    mem[64] = (32 * sub_28893446[cd[4]]) + 160
    if not sub_28893446[cd[4]]:
        if cd[4] >= 4:
            revert with 0, 50
        if var37003 < sub_28893446[cd[4]]:
            if cd[4] < 200:
                idx = var39001
                while idx < 4:
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = stor[idx + (4 * cd[4]) + 2]
                    mem[mem[64] + 4] = stor[idx + (4 * cd[4]) + 2]
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                            gas gas_remaining wei
                           args stor[idx + (4 * cd[4]) + 2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_245] == mem[_245 + 12 len 20]
                    mem[_234 + 32] = mem[_245 + 12 len 20]
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _234
                    if idx == -1:
                        revert with 0, 17
                    if cd[4] >= 4:
                        revert with 0, 50
                    if idx + 1 < sub_28893446[cd[4]]:
                        if cd[4] >= 200:
                            revert with 0, 50
                        idx = idx + 1
                        continue 
                    _255 = mem[64]
                    mem[mem[64]] = 32
                    _256 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < _256:
                        _267 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_267 + 44 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _255 + (64 * _256) + -mem[64] + 64
            revert with 0, 50
        mem[(32 * sub_28893446[cd[4]]) + 160] = 32
        mem[(32 * sub_28893446[cd[4]]) + 192] = sub_28893446[cd[4]]
        idx = 0
        s = 160
        t = (32 * sub_28893446[cd[4]]) + 224
        while idx < mem[128]:
            _193 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_193 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len (98 * sub_28893446[cd[4]]) + -mem[64] + 224
    mem[64] = (32 * sub_28893446[cd[4]]) + 224
    mem[(32 * sub_28893446[cd[4]]) + 160] = 0
    mem[(32 * sub_28893446[cd[4]]) + 192] = 0
    mem[160] = (32 * sub_28893446[cd[4]]) + 160
    s = 160
    idx = sub_28893446[cd[4]]
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_28893446[cd[4]]) + 160] = 0
        mem[(32 * sub_28893446[cd[4]]) + 192] = 0
        mem[s + 32] = (32 * sub_28893446[cd[4]]) + 160
        s = s + 32
        idx = idx - 1
        continue 
    if cd[4] >= 4:
        revert with 0, 50
    if var41003 < sub_28893446[cd[4]]:
        if cd[4] < 200:
            idx = var43001
            while idx < 4:
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = stor[idx + (4 * cd[4]) + 2]
                mem[mem[64] + 4] = stor[idx + (4 * cd[4]) + 2]
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                        gas gas_remaining wei
                       args stor[idx + (4 * cd[4]) + 2]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_274] == mem[_274 + 12 len 20]
                mem[_270 + 32] = mem[_274 + 12 len 20]
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _270
                if idx == -1:
                    revert with 0, 17
                if cd[4] >= 4:
                    revert with 0, 50
                if idx + 1 < sub_28893446[cd[4]]:
                    if cd[4] >= 200:
                        revert with 0, 50
                    idx = idx + 1
                    continue 
                _277 = mem[64]
                mem[mem[64]] = 32
                _278 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _278:
                    _283 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_283 + 44 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _277 + (64 * _278) + -mem[64] + 64
        revert with 0, 50
    _201 = mem[64]
    mem[mem[64]] = 32
    _203 = mem[128]
    mem[mem[64] + 32] = mem[128]
    idx = 0
    s = 160
    t = mem[64] + 64
    while idx < _203:
        _237 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_237 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _201 + (64 * _203) + -mem[64] + 64
}



}
