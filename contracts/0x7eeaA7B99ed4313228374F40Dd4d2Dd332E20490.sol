contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor2;
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

function sub_5aeda7c1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    if ('cd', 4).length != 6:
        revert with 0, '[891648213] Need value'
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

function updateApproval() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.approveDelegation(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
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

function sub_d67351b1(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    mem[ceil32(32 * ('cd', 36).length) + 97] = 2
    mem[64] = ceil32(32 * ('cd', 36).length) + 193
    mem[ceil32(32 * ('cd', 36).length) + 129] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
    mem[ceil32(32 * ('cd', 36).length) + 161] = 0xac3f978714c613e768272c502a8912bc03dcf624
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _83 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        staticcall address(_83).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _95 = mem[_89]
        if mem[_89]:
            if idx >= mem[96]:
                revert with 0, 50
            _102 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _95
            call address(_102).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _95
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_106] == bool(mem[_106])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _113 = mem[ceil32(32 * ('cd', 36).length) + 97]
    idx = 0
    while idx < _113:
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _118 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[mem[64] + 4] = this.address
        staticcall address(_118).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _126 = mem[_121]
        if mem[_121]:
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _128 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _126
            call address(_128).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _126
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == bool(mem[_131])
        if idx == -1:
            revert with 0, 17
        _113 = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = idx + 1
        continue 
    call address(cd[4]) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function sub_01315e39(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
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
        if stor14 * block.gasprice >= 10^17 * stor15 / 10000:
            revert with 0, '[94041374361] Not enough juice for the squeeze'
    else:
        if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[0] / 100 and stor15 > -1 / 10 * ext_call.return_data[0] / 100:
            revert with 0, 17
        if stor14 * block.gasprice >= 10 * ext_call.return_data[0] / 100 * stor15 / 10000:
            revert with 0, '[94041374361] Not enough juice for the squeeze'
    if ext_call.return_data[0] >= 10^18:
        call stor6.0x9975b113 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] < stor10:
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor7)
            call stor7.depositETH(address arg1, address arg2, uint16 arg3) with:
               value 1 wei
                 gas gas_remaining wei
                args stor9, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        return 0
    call stor6.0x26b5e81a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor12 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] > ext_call.return_data[0] * stor12 / 1000:
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
            if eth.balance(this.address) - stor11 >= 10^18:
                require ext_code.size(stor5)
                call stor5.zapIn(address arg1) with:
                   value eth.balance(this.address) - stor11 wei
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
        else:
            if stor13 >= 10^18:
                require ext_code.size(stor5)
                call stor5.zapIn(address arg1) with:
                   value stor13 wei
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg1:
        return 0
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^18:
            return 0
        require ext_code.size(stor6)
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            return 0
        return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] <= 10^18:
        return 0
    require ext_code.size(stor6)
    call stor6.0xba560803 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        return 0
    return ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size < 4:
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
                    call stor3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.approveDelegation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            idx = cd[36] + 36
            s = 160
            while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            mem[ceil32(32 * ('cd', 36).length) + 129] = 2
            mem[64] = ceil32(32 * ('cd', 36).length) + 225
            mem[ceil32(32 * ('cd', 36).length) + 161] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
            mem[ceil32(32 * ('cd', 36).length) + 193] = 0xac3f978714c613e768272c502a8912bc03dcf624
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[128]:
                    revert with 0, 50
                _1555 = mem[(32 * idx) + 160]
                mem[mem[64] + 4] = this.address
                staticcall address(_1555).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1569 = mem[_1562]
                if mem[_1562]:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _1578 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1569
                    call address(_1578).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1569
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1584] == bool(mem[_1584])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1593 = mem[ceil32(32 * ('cd', 36).length) + 129]
            idx = 0
            while idx < _1593:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                _1598 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                mem[mem[64] + 4] = this.address
                staticcall address(_1598).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1606 = mem[_1601]
                if mem[_1601]:
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    _1608 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1606
                    call address(_1608).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1606
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1611] == bool(mem[_1611])
                if idx == -1:
                    revert with 0, 17
                _1593 = mem[ceil32(32 * ('cd', 36).length) + 129]
                idx = idx + 1
                continue 
            call address(cd[4]) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
        return bool(ext_call.success)
    if uint32(call.func_hash) >> 224 != unknown_0x01315e39(?????):
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
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 0
                if not stor0[msg.sender]:
                    revert with 0, 'Only I can do this.'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _1551 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_1551).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1558 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1567 = mem[_1558]
                    if mem[_1558]:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _1577 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1567
                        call address(_1577).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1567
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1585] == bool(mem[_1585])
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
            s = 160
            idx = cd[4] + 36
            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            if ('cd', 4).length != 6:
                revert with 0, '[891648213] Need value'
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
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
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
        if stor14 * block.gasprice >= 10^17 * stor15 / 10000:
            revert with 0, '[94041374361] Not enough juice for the squeeze'
    else:
        if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[0] / 100 and stor15 > -1 / 10 * ext_call.return_data[0] / 100:
            revert with 0, 17
        if stor14 * block.gasprice >= 10 * ext_call.return_data[0] / 100 * stor15 / 10000:
            revert with 0, '[94041374361] Not enough juice for the squeeze'
    if ext_call.return_data[0] >= 10^18:
        call stor6.0x9975b113 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] < stor10:
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor7)
            call stor7.depositETH(address arg1, address arg2, uint16 arg3) with:
               value 1 wei
                 gas gas_remaining wei
                args stor9, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        return 0
    call stor6.0x26b5e81a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor12 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] > ext_call.return_data[0] * stor12 / 1000:
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
            if eth.balance(this.address) - stor11 >= 10^18:
                require ext_code.size(stor5)
                call stor5.zapIn(address arg1) with:
                   value eth.balance(this.address) - stor11 wei
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
        else:
            if stor13 >= 10^18:
                require ext_code.size(stor5)
                call stor5.zapIn(address arg1) with:
                   value stor13 wei
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if cd[4]:
        return 0
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^18:
            return 0
        require ext_code.size(stor6)
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            return 0
        return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] <= 10^18:
        return 0
    require ext_code.size(stor6)
    call stor6.0xba560803 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        return 0
    return ext_call.return_data[0]
}



}
