contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;

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

function claim() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    mem[128] = 0xac3f978714c613e768272c502a8912bc03dcf624
    mem[160] = 0x8e2eba0900000000000000000000000000000000000000000000000000000000
    mem[164] = this.address
    idx = 0
    s = 260
    t = 128
    while idx < 1:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor9)
    call stor9.claim(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=1, data=mem[260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateApproval() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.approveDelegation(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        revert with 0, '[891648213] Need value'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    stor11 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    stor12 = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    stor13 = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    stor14 = mem[224]
    if 4 >= ('cd', 4).length:
        revert with 0, 50
    stor15 = mem[256]
    if 5 >= ('cd', 4).length:
        revert with 0, 50
    stor16 = mem[288]
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

function sub_ae4bace5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _53 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_53))
        staticcall address(_53).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_60]
        if mem[_60]:
            if idx >= mem[96]:
                revert with 0, 50
            _63 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = _61
            require ext_code.size(address(_63))
            call address(_63).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[36]), _61
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_66] == bool(mem[_66])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call address(cd[36]) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function sub_01315e39(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(stor7)
    call stor7.0x9975b113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        if ext_call.return_data[0] > stor11:
            emit log(Array(len=5, data='magic'));
            require ext_code.size(stor2)
            call stor2.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor10, stor12, 2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args stor10, stor13, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.0x9975b113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        emit log(Array(len=22, data='podl less than 1 ether'));
    else:
        require ext_code.size(stor7)
        call stor7.0x26b5e81a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and stor16 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] > ext_call.return_data[0] * stor16 / 1000:
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor14:
                revert with 0, 17
            if ext_call.return_data[0] - stor14 > 10^18:
                require ext_code.size(stor8)
                call stor8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args stor10, ext_call.return_data[0] - stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < stor15:
                revert with 0, 17
            if eth.balance(this.address) - stor15 > 10^18:
                require ext_code.size(stor6)
                call stor6.zapIn(address arg1) with:
                   value eth.balance(this.address) - stor15 wei
                     gas gas_remaining wei
                    args stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
            revert with 0, 17
        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
            emit 0x77c7896a: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
            if not arg1:
                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                    require ext_code.size(stor7)
                    call stor7.0xba560803 with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            emit 0x77c7896a: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
            if not arg1:
                if ext_call.return_data[0] > 10^18:
                    require ext_code.size(stor7)
                    call stor7.0xba560803 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xae4bace5(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0xae4bace5(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xbd5dec98(?????):
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
                        return bool(ext_call.success)
                    if unknown_0xf926197e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not stor0[msg.sender]:
                            revert with 0, 'Only I can do this.'
                        require ext_code.size(stor4)
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor3)
                        call stor3.approveDelegation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
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
                        _399 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_399))
                        staticcall address(_399).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _409 = mem[_407]
                        if mem[_407]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _415 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _409
                            require ext_code.size(address(_415))
                            call address(_415).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _409
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_419] == bool(mem[_419])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            require not msg.value
            require calldata.size - 4 >= 64
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
            require cd[36] == address(cd[36])
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[128]:
                    revert with 0, 50
                _396 = mem[(32 * idx) + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_396))
                staticcall address(_396).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _408 = mem[_406]
                if mem[_406]:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _412 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = _408
                    require ext_code.size(address(_412))
                    call address(_412).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), _408
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_418] == bool(mem[_418])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            call address(cd[36]) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            return bool(ext_call.success)
        if uint32(call.func_hash) >> 224 != unknown_0x01315e39(?????):
            if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor0[msg.sender]:
                    revert with 0, 'Only I can do this.'
                mem[160] = 0xac3f978714c613e768272c502a8912bc03dcf624
                mem[192] = 0x8e2eba0900000000000000000000000000000000000000000000000000000000
                mem[196] = this.address
                idx = 0
                s = 292
                t = 160
                while idx < 1:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor9)
                call stor9.claim(address arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=1, data=mem[292])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x5aeda7c1(?????) == uint32(call.func_hash) >> 224:
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
                        revert with 0, '[891648213] Need value'
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    stor11 = mem[160]
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    stor12 = mem[192]
                    if 2 >= ('cd', 4).length:
                        revert with 0, 50
                    stor13 = mem[224]
                    if 3 >= ('cd', 4).length:
                        revert with 0, 50
                    stor14 = mem[256]
                    if 4 >= ('cd', 4).length:
                        revert with 0, 50
                    stor15 = mem[288]
                    if 5 >= ('cd', 4).length:
                        revert with 0, 50
                    stor16 = mem[320]
        else:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == bool(cd[4])
            require ext_code.size(stor7)
            call stor7.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                if ext_call.return_data[0] > stor11:
                    emit log(Array(len=5, data='magic'));
                    require ext_code.size(stor2)
                    call stor2.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args stor10, stor12, 2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor2)
                    call stor2.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args stor10, stor13, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor7)
            call stor7.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                emit log(Array(len=22, data='podl less than 1 ether'));
            else:
                require ext_code.size(stor7)
                call stor7.0x26b5e81a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and stor16 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > ext_call.return_data[0] * stor16 / 1000:
                    require ext_code.size(stor5)
                    staticcall stor5.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor14:
                        revert with 0, 17
                    if ext_call.return_data[0] - stor14 > 10^18:
                        require ext_code.size(stor8)
                        call stor8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor10, ext_call.return_data[0] - stor14, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < stor15:
                        revert with 0, 17
                    if eth.balance(this.address) - stor15 > 10^18:
                        require ext_code.size(stor6)
                        call stor6.zapIn(address arg1) with:
                           value eth.balance(this.address) - stor15 wei
                             gas gas_remaining wei
                            args stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                    emit 0x77c7896a: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                    if not cd[4]:
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                            require ext_code.size(stor7)
                            call stor7.0xba560803 with:
                                 gas gas_remaining wei
                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0x77c7896a: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                    if not cd[4]:
                        if ext_call.return_data[0] > 10^18:
                            require ext_code.size(stor7)
                            call stor7.0xba560803 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
