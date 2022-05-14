contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    if arg1 <= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '[761876] something went wrong'
    return bool(ext_call.success)
}

function updateApproval() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5aeda7c1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    if ('cd', 4).length != 6:
        revert with 0, '[891648213]'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    stor10 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    stor11 = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    stor12 = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    stor13 = mem[224]
    if 4 >= ('cd', 4).length:
        revert with 0, 50
    stor14 = mem[256]
    if 5 >= ('cd', 4).length:
        revert with 0, 50
    stor15 = mem[288]
}

function withdraw(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _36 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_36))
        staticcall address(_36).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _40 = mem[_39]
        if mem[_39]:
            if idx >= mem[96]:
                revert with 0, 50
            _42 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _40
            require ext_code.size(address(_42))
            call address(_42).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _40
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == bool(mem[_45])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function print() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor6)
    call stor6.0x9975b113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor14 and block.gasprice > -1 / stor14:
        revert with 0, 17
    if ext_call.return_data[0] <= 10^18:
        if stor15 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
            revert with 0, 17
        if stor14 * block.gasprice > 10^17 * stor15 / 10000:
            revert with 0, 64, ext_call.return_data[0], 13, '[94041374361]'
    else:
        if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[0] / 100 and stor15 > -1 / 10 * ext_call.return_data[0] / 100:
            revert with 0, 17
        if stor14 * block.gasprice > 10 * ext_call.return_data[0] / 100 * stor15 / 10000:
            revert with 0, 64, ext_call.return_data[0], 13, '[94041374361]'
    if ext_call.return_data[0] < 10^18:
        if ext_call.return_data[0] >= stor10:
            require ext_code.size(stor7)
            call stor7.depositETH(address arg1, address arg2, uint16 arg3) with:
               value 1 wei
                 gas gas_remaining wei
                args stor9, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x9975b113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        revert with 0, 64, ext_call.return_data[0], 12, '[3241564613]'
    require ext_code.size(stor6)
    call stor6.0x26b5e81a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor12 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] > ext_call.return_data[0] * stor12 / 1000:
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^18:
            require ext_code.size(stor7)
            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor9, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < stor11:
            revert with 0, 17
        if eth.balance(this.address) - stor11 <= stor13:
            if eth.balance(this.address) - stor11 < 10^18:
                revert with 0, '[6542258441]'
            require ext_code.size(stor5)
            call stor5.zapIn(address arg1) with:
               value eth.balance(this.address) - stor11 wei
                 gas gas_remaining wei
                args stor3
        else:
            if stor13 < 10^18:
                revert with 0, '[6542258441]'
            require ext_code.size(stor5)
            call stor5.zapIn(address arg1) with:
               value stor13 wei
                 gas gas_remaining wei
                args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(stor6)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            revert with 0, 
                        64,
                        10^18 * ext_call.return_data[0] / ext_call.return_data[0],
                        34,
                        '[2460454] The PODL request faile',
                        0x642e000000000000000000000000000000000000000000000000000000000000
    else:
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 
                        64,
                        ext_call.return_data[0],
                        34,
                        '[2460454] The PODL request faile',
                        0x642e000000000000000000000000000000000000000000000000000000000000
    ('bool', 'ext_call.success')
}

function sub_d67351b1(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    if ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _129 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_129))
            staticcall address(_129).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_140]
            if mem[_140]:
                if idx >= mem[96]:
                    revert with 0, 50
                _158 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = _149
                require ext_code.size(address(_158))
                call address(_158).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[4]), _149
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_165] == bool(mem[_165])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * ('cd', 36).length) + 97] = 2
        mem[64] = ceil32(32 * ('cd', 36).length) + 193
        mem[ceil32(32 * ('cd', 36).length) + 129] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
        mem[ceil32(32 * ('cd', 36).length) + 161] = 0xac3f978714c613e768272c502a8912bc03dcf624
        idx = 0
        while idx < 2:
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _132 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_132))
            staticcall address(_132).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_144]
            if mem[_144]:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _162 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = _150
                require ext_code.size(address(_162))
                call address(_162).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[4]), _150
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_167] == bool(mem[_167])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _175 = mem[96]
        idx = 0
        while idx < _175:
            if idx >= mem[96]:
                revert with 0, 50
            _180 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_180))
            staticcall address(_180).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _188 = mem[_187]
            if mem[_187]:
                if idx >= mem[96]:
                    revert with 0, 50
                _190 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = _188
                require ext_code.size(address(_190))
                call address(_190).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[4]), _188
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_193] == bool(mem[_193])
            if idx == -1:
                revert with 0, 17
            _175 = mem[96]
            idx = idx + 1
            continue 
    call address(cd[4]) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xc311d049(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc311d049(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if not stor0[msg.sender]:
                    revert with 0, 'Only I can do this.'
                if cd[4] <= eth.balance(this.address):
                    call msg.sender with:
                       value cd[4] wei
                         gas gas_remaining wei
                else:
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, '[761876] something went wrong'
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xd67351b1(?????):
                    if unknown_0xf926197e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not stor0[msg.sender]:
                            revert with 0, 'Only I can do this.'
                        require ext_code.size(stor3)
                        call stor3.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor4)
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 36).length) + 129
                mem[128] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = 0
                s = cd[36] + 36
                t = 160
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 0
                if not stor0[msg.sender]:
                    revert with 0, 'Only I can do this.'
                if ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _807 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_807))
                        staticcall address(_807).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _819 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _829 = mem[_819]
                        if mem[_819]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _840 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _829
                            require ext_code.size(address(_840))
                            call address(_840).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _829
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_849] == bool(mem[_849])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(32 * ('cd', 36).length) + 129] = 2
                    mem[64] = ceil32(32 * ('cd', 36).length) + 225
                    mem[ceil32(32 * ('cd', 36).length) + 161] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
                    mem[ceil32(32 * ('cd', 36).length) + 193] = 0xac3f978714c613e768272c502a8912bc03dcf624
                    idx = 0
                    while idx < 2:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                            revert with 0, 50
                        _810 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_810))
                        staticcall address(_810).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _823 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _830 = mem[_823]
                        if mem[_823]:
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                                revert with 0, 50
                            _844 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _830
                            require ext_code.size(address(_844))
                            call address(_844).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _830
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_851] == bool(mem[_851])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _861 = mem[128]
                    idx = 0
                    while idx < _861:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _866 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_866))
                        staticcall address(_866).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _874 = mem[_873]
                        if mem[_873]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _876 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _874
                            require ext_code.size(address(_876))
                            call address(_876).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _874
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_879] == bool(mem[_879])
                        if idx == -1:
                            revert with 0, 17
                        _861 = mem[128]
                        idx = idx + 1
                        continue 
                call address(cd[4]) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
            return bool(ext_call.success)
        if uint32(call.func_hash) >> 224 != unknown_0x13bdfacd(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x5aeda7c1(?????):
                if unknown_0xbd5dec98(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 0
                    if not stor0[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _803 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_803))
                        staticcall address(_803).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _828 = mem[_814]
                        if mem[_814]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _839 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _828
                            require ext_code.size(address(_839))
                            call address(_839).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _828
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_852] == bool(mem[_852])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require calldata.size > cd[4] + 35
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if not stor0[msg.sender]:
                    revert with 0, 'Only I can do this.'
                if ('cd', 4).length != 6:
                    revert with 0, '[891648213]'
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                stor10 = mem[160]
                if 1 >= ('cd', 4).length:
                    revert with 0, 50
                stor11 = mem[192]
                if 2 >= ('cd', 4).length:
                    revert with 0, 50
                stor12 = mem[224]
                if 3 >= ('cd', 4).length:
                    revert with 0, 50
                stor13 = mem[256]
                if 4 >= ('cd', 4).length:
                    revert with 0, 50
                stor14 = mem[288]
                if 5 >= ('cd', 4).length:
                    revert with 0, 50
                stor15 = mem[320]
        else:
            require not msg.value
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            require ext_code.size(stor6)
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor14 and block.gasprice > -1 / stor14:
                revert with 0, 17
            if ext_call.return_data[0] <= 10^18:
                if stor15 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
                    revert with 0, 17
                if stor14 * block.gasprice > 10^17 * stor15 / 10000:
                    revert with 0, 64, ext_call.return_data[0], 13, '[94041374361]'
            else:
                if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if 10 * ext_call.return_data[0] / 100 and stor15 > -1 / 10 * ext_call.return_data[0] / 100:
                    revert with 0, 17
                if stor14 * block.gasprice > 10 * ext_call.return_data[0] / 100 * stor15 / 10000:
                    revert with 0, 64, ext_call.return_data[0], 13, '[94041374361]'
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] >= stor10:
                    require ext_code.size(stor7)
                    call stor7.depositETH(address arg1, address arg2, uint16 arg3) with:
                       value 1 wei
                         gas gas_remaining wei
                        args stor9, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor6)
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                revert with 0, 64, ext_call.return_data[0], 12, '[3241564613]'
            require ext_code.size(stor6)
            call stor6.0x26b5e81a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and stor12 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] > ext_call.return_data[0] * stor12 / 1000:
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^18:
                    require ext_code.size(stor7)
                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args stor9, -1, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < stor11:
                    revert with 0, 17
                if eth.balance(this.address) - stor11 <= stor13:
                    if eth.balance(this.address) - stor11 < 10^18:
                        revert with 0, '[6542258441]'
                    require ext_code.size(stor5)
                    call stor5.zapIn(address arg1) with:
                       value eth.balance(this.address) - stor11 wei
                         gas gas_remaining wei
                        args stor3
                else:
                    if stor13 < 10^18:
                        revert with 0, '[6542258441]'
                    require ext_code.size(stor5)
                    call stor5.zapIn(address arg1) with:
                       value stor13 wei
                         gas gas_remaining wei
                        args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(stor6)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                call stor6.0xba560803 with:
                     gas gas_remaining wei
                    args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                if not ext_call.success:
                    revert with 0, 
                                64,
                                10^18 * ext_call.return_data[0] / ext_call.return_data[0],
                                34,
                                '[2460454] The PODL request faile',
                                0x642e000000000000000000000000000000000000000000000000000000000000
            else:
                call stor6.0xba560803 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 
                                64,
                                ext_call.return_data[0],
                                34,
                                '[2460454] The PODL request faile',
                                0x642e000000000000000000000000000000000000000000000000000000000000
            ('bool', 'ext_call.success')
}



}
