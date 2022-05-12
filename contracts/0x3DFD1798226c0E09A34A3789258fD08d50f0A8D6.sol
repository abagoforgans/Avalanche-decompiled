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
uint256 stor9;
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
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
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
        require ext_code.size(address(_83))
        staticcall address(_83).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_93]
        if mem[_93]:
            if idx >= mem[96]:
                revert with 0, 50
            _102 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _99
            require ext_code.size(address(_102))
            call address(_102).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _99
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_109] == bool(mem[_109])
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
        require ext_code.size(address(_118))
        staticcall address(_118).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _126 = mem[_125]
        if mem[_125]:
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _128 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _126
            require ext_code.size(address(_128))
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
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor6)
    call stor6.0x9975b113 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    emit 0x9bd7b8cc: ext_call.return_data[0], stor10
    if ext_call.return_data[0] >= 10^18:
        require ext_code.size(stor6)
        call stor6.0x9975b113 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^18:
            emit log(Array(len=22, data='podl less than 1 ether'));
        else:
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
            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor13:
                    revert with 0, 17
                if ext_call.return_data[0] - stor13 > 10^18:
                    require ext_code.size(stor7)
                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < stor14:
                    revert with 0, 17
                if eth.balance(this.address) - stor14 > 10^18:
                    require ext_code.size(stor5)
                    call stor5.zapIn(address arg1) with:
                       value eth.balance(this.address) - stor14 wei
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
                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                if not arg1:
                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                        require ext_code.size(stor6)
                        call stor6.0xba560803 with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                if not arg1:
                    if ext_call.return_data[0] > 10^18:
                        require ext_code.size(stor6)
                        call stor6.0xba560803 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] <= stor10:
            require ext_code.size(stor6)
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                emit log(Array(len=22, data='podl less than 1 ether'));
            else:
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
                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor13:
                        revert with 0, 17
                    if ext_call.return_data[0] - stor13 > 10^18:
                        require ext_code.size(stor7)
                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < stor14:
                        revert with 0, 17
                    if eth.balance(this.address) - stor14 > 10^18:
                        require ext_code.size(stor5)
                        call stor5.zapIn(address arg1) with:
                           value eth.balance(this.address) - stor14 wei
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
                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                    if not arg1:
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                            require ext_code.size(stor6)
                            call stor6.0xba560803 with:
                                 gas gas_remaining wei
                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                    if not arg1:
                        if ext_call.return_data[0] > 10^18:
                            require ext_code.size(stor6)
                            call stor6.0xba560803 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            emit log(Array(len=5, data='magic'));
            mem[ceil32(return_data.size) + 96] = 0x66514c9700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = address(stor9)
            mem[ceil32(return_data.size) + 132] = stor11
            mem[ceil32(return_data.size) + 164] = 2
            mem[ceil32(return_data.size) + 196] = 0
            require ext_code.size(stor7)
            call stor7.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(stor9), stor11, 2, 0
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                    else:
                        mem[ceil32(return_data.size) + 96] = 64
                        mem[ceil32(return_data.size) + 160] = 15
                        mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                        mem[ceil32(return_data.size) + 128] = 128
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                            mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                    require ext_code.size(stor6)
                    call stor6.0x9975b113 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18:
                        emit log(Array(len=22, data='podl less than 1 ether'));
                    else:
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
                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < stor13:
                                revert with 0, 17
                            if ext_call.return_data[0] - stor13 > 10^18:
                                require ext_code.size(stor7)
                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < stor14:
                                revert with 0, 17
                            if eth.balance(this.address) - stor14 > 10^18:
                                require ext_code.size(stor5)
                                call stor5.zapIn(address arg1) with:
                                   value eth.balance(this.address) - stor14 wei
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
                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                            if not arg1:
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                            if not arg1:
                                if ext_call.return_data[0] > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(msg.sender) >> 224 != Error(string arg1):
                        if return_data.size:
                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                        else:
                            mem[ceil32(return_data.size) + 96] = 64
                            mem[ceil32(return_data.size) + 160] = 15
                            mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                            mem[ceil32(return_data.size) + 128] = 128
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                        require ext_code.size(stor6)
                        call stor6.0x9975b113 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 10^18:
                            emit log(Array(len=22, data='podl less than 1 ether'));
                        else:
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
                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                require ext_code.size(stor4)
                                staticcall stor4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < stor13:
                                    revert with 0, 17
                                if ext_call.return_data[0] - stor13 > 10^18:
                                    require ext_code.size(stor7)
                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < stor14:
                                    revert with 0, 17
                                if eth.balance(this.address) - stor14 > 10^18:
                                    require ext_code.size(stor5)
                                    call stor5.zapIn(address arg1) with:
                                       value eth.balance(this.address) - stor14 wei
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
                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                revert with 0, 17
                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                if not arg1:
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                        require ext_code.size(stor6)
                                        call stor6.0xba560803 with:
                                             gas gas_remaining wei
                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                if not arg1:
                                    if ext_call.return_data[0] > 10^18:
                                        require ext_code.size(stor6)
                                        call stor6.0xba560803 with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                            else:
                                mem[ceil32(return_data.size) + 96] = 64
                                mem[ceil32(return_data.size) + 160] = 15
                                mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                                mem[ceil32(return_data.size) + 128] = 128
                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                            require ext_code.size(stor6)
                            call stor6.0x9975b113 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 10^18:
                                emit log(Array(len=22, data='podl less than 1 ether'));
                            else:
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
                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                    require ext_code.size(stor4)
                                    staticcall stor4.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor13:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - stor13 > 10^18:
                                        require ext_code.size(stor7)
                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < stor14:
                                        revert with 0, 17
                                    if eth.balance(this.address) - stor14 > 10^18:
                                        require ext_code.size(stor5)
                                        call stor5.zapIn(address arg1) with:
                                           value eth.balance(this.address) - stor14 wei
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
                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                    revert with 0, 17
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                    if not arg1:
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                    if not arg1:
                                        if ext_call.return_data[0] > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, Mask(224, 0, stor9) > test266151307() or 0, Mask(224, 0, stor9) + 36 > return_data.size:
                                if return_data.size:
                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                else:
                                    mem[ceil32(return_data.size) + 96] = 64
                                    mem[ceil32(return_data.size) + 160] = 15
                                    mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                                    mem[ceil32(return_data.size) + 128] = 128
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                require ext_code.size(stor6)
                                call stor6.0x9975b113 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 10^18:
                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                else:
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
                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                        require ext_code.size(stor4)
                                        staticcall stor4.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor13:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - stor13 > 10^18:
                                            require ext_code.size(stor7)
                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < stor14:
                                            revert with 0, 17
                                        if eth.balance(this.address) - stor14 > 10^18:
                                            require ext_code.size(stor5)
                                            call stor5.zapIn(address arg1) with:
                                               value eth.balance(this.address) - stor14 wei
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
                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                        revert with 0, 17
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                        if not arg1:
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                        if not arg1:
                                            if ext_call.return_data[0] > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] > test266151307():
                                    if return_data.size:
                                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                    else:
                                        mem[ceil32(return_data.size) + 96] = 64
                                        mem[ceil32(return_data.size) + 160] = 15
                                        mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                                        mem[ceil32(return_data.size) + 128] = 128
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                            mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                    require ext_code.size(stor6)
                                    call stor6.0x9975b113 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 10^18:
                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                    else:
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
                                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                            require ext_code.size(stor4)
                                            staticcall stor4.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stor13:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - stor13 > 10^18:
                                                require ext_code.size(stor7)
                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < stor14:
                                                revert with 0, 17
                                            if eth.balance(this.address) - stor14 > 10^18:
                                                require ext_code.size(stor5)
                                                call stor5.zapIn(address arg1) with:
                                                   value eth.balance(this.address) - stor14 wei
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
                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                            revert with 0, 17
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                            if not arg1:
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                            if not arg1:
                                                if ext_call.return_data[0] > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                        else:
                                            mem[ceil32(return_data.size) + 96] = 64
                                            mem[ceil32(return_data.size) + 160] = 15
                                            mem[ceil32(return_data.size) + 192] = 'borrowETH bytes'
                                            mem[ceil32(return_data.size) + 128] = 128
                                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                        require ext_code.size(stor6)
                                        call stor6.0x9975b113 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 10^18:
                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                        else:
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
                                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stor13:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] - stor13 > 10^18:
                                                    require ext_code.size(stor7)
                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                         gas gas_remaining wei
                                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < stor14:
                                                    revert with 0, 17
                                                if eth.balance(this.address) - stor14 > 10^18:
                                                    require ext_code.size(stor5)
                                                    call stor5.zapIn(address arg1) with:
                                                       value eth.balance(this.address) - stor14 wei
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
                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                revert with 0, 17
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                if not arg1:
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                if not arg1:
                                                    if ext_call.return_data[0] > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97 < 96 or ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97
                                        if ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96:
                                            _107 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'borrowETH'
                                            mem[mem[64] + 32] = 128
                                            _143 = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96]
                                            mem[_107 + 128] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96]
                                            mem[_107 + 160 len ceil32(_143)] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128 len ceil32(_143)]
                                            if ceil32(_143) <= _143:
                                                emit 0x47e864ce: mem[mem[64] len ceil32(_143) + _107 + -mem[64] + 160]
                                                require ext_code.size(stor6)
                                                call stor6.0x9975b113 with:
                                                     gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5442 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_5442] < 10^18:
                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                else:
                                                    require ext_code.size(stor6)
                                                    call stor6.0x26b5e81a with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5776 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5862 = mem[_5776]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6042 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6102 = mem[_6042]
                                                    if mem[_6042] and stor15 > -1 / mem[_6042]:
                                                        revert with 0, 17
                                                    if _5862 <= mem[_6042] * stor15 / 1000:
                                                        if mem[_6042] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if not _5862:
                                                            revert with 0, 18
                                                        if 10^18 * mem[_6042] / _5862 < 10000:
                                                            revert with 0, 17
                                                        if (10^18 * mem[_6042] / _5862) - 10000 <= ext_call.return_data[0]:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6042] / _5862) - 10000, mem[_6042], _5862
                                                            if not arg1:
                                                                if (10^18 * mem[_6042] / _5862) - 10000 > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ((10^18 * mem[_6042] / _5862) - 10000)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6042], _5862
                                                            if not arg1:
                                                                if ext_call.return_data[0] > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6282 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6342 = mem[_6282]
                                                        if mem[_6282] < stor13:
                                                            revert with 0, 17
                                                        if mem[_6282] - stor13 <= 10^18:
                                                            if eth.balance(this.address) < stor14:
                                                                revert with 0, 17
                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6282] - stor13, _5862, _6102
                                                                if _6102 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5862:
                                                                    revert with 0, 18
                                                                if 10^18 * _6102 / _5862 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * _6102 / _5862) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6102 / _5862) - 10000, _6102, _5862
                                                                    if not arg1:
                                                                        if (10^18 * _6102 / _5862) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * _6102 / _5862) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6102, _5862
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor5)
                                                                call stor5.zapIn(address arg1) with:
                                                                   value eth.balance(this.address) - stor14 wei
                                                                     gas gas_remaining wei
                                                                    args stor3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _7498 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6342 - stor13, _5862, mem[_7498]
                                                                if mem[_7498] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5862:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_7498] / _5862 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_7498] / _5862) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7498] / _5862) - 10000, mem[_7498], _5862
                                                                    if not arg1:
                                                                        if (10^18 * mem[_7498] / _5862) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_7498] / _5862) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7498], _5862
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 36] = mem[_6282] - stor13
                                                            mem[mem[64] + 68] = this.address
                                                            require ext_code.size(stor7)
                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                 gas gas_remaining wei
                                                                args address(stor9), _6342 - stor13, this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if eth.balance(this.address) < stor14:
                                                                revert with 0, 17
                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6342 - stor13, _5862, _6102
                                                                if _6102 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5862:
                                                                    revert with 0, 18
                                                                if 10^18 * _6102 / _5862 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * _6102 / _5862) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6102 / _5862) - 10000, _6102, _5862
                                                                    if not arg1:
                                                                        if (10^18 * _6102 / _5862) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * _6102 / _5862) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6102, _5862
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor5)
                                                                call stor5.zapIn(address arg1) with:
                                                                   value eth.balance(this.address) - stor14 wei
                                                                     gas gas_remaining wei
                                                                    args stor3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _7816 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6342 - stor13, _5862, mem[_7816]
                                                                if mem[_7816] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5862:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_7816] / _5862 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_7816] / _5862) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7816] / _5862) - 10000, mem[_7816], _5862
                                                                    if not arg1:
                                                                        if (10^18 * mem[_7816] / _5862) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_7816] / _5862) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7816], _5862
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[_107 + _143 + 160] = 0
                                                emit 0x47e864ce: mem[mem[64] len ceil32(_143) + _107 + -mem[64] + 160]
                                                require ext_code.size(stor6)
                                                call stor6.0x9975b113 with:
                                                     gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5472 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_5472] < 10^18:
                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                else:
                                                    require ext_code.size(stor6)
                                                    call stor6.0x26b5e81a with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5832 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5902 = mem[_5832]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6072 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6132 = mem[_6072]
                                                    if mem[_6072] and stor15 > -1 / mem[_6072]:
                                                        revert with 0, 17
                                                    if _5902 <= mem[_6072] * stor15 / 1000:
                                                        if mem[_6072] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if not _5902:
                                                            revert with 0, 18
                                                        if 10^18 * mem[_6072] / _5902 < 10000:
                                                            revert with 0, 17
                                                        if (10^18 * mem[_6072] / _5902) - 10000 <= ext_call.return_data[0]:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6072] / _5902) - 10000, mem[_6072], _5902
                                                            if not arg1:
                                                                if (10^18 * mem[_6072] / _5902) - 10000 > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ((10^18 * mem[_6072] / _5902) - 10000)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6072], _5902
                                                            if not arg1:
                                                                if ext_call.return_data[0] > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6312 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6372 = mem[_6312]
                                                        if mem[_6312] < stor13:
                                                            revert with 0, 17
                                                        if mem[_6312] - stor13 <= 10^18:
                                                            if eth.balance(this.address) < stor14:
                                                                revert with 0, 17
                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6312] - stor13, _5902, _6132
                                                                if _6132 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5902:
                                                                    revert with 0, 18
                                                                if 10^18 * _6132 / _5902 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * _6132 / _5902) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6132 / _5902) - 10000, _6132, _5902
                                                                    if not arg1:
                                                                        if (10^18 * _6132 / _5902) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * _6132 / _5902) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6132, _5902
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor5)
                                                                call stor5.zapIn(address arg1) with:
                                                                   value eth.balance(this.address) - stor14 wei
                                                                     gas gas_remaining wei
                                                                    args stor3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _7642 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6372 - stor13, _5902, mem[_7642]
                                                                if mem[_7642] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5902:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_7642] / _5902 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_7642] / _5902) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7642] / _5902) - 10000, mem[_7642], _5902
                                                                    if not arg1:
                                                                        if (10^18 * mem[_7642] / _5902) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_7642] / _5902) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7642], _5902
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 36] = mem[_6312] - stor13
                                                            mem[mem[64] + 68] = this.address
                                                            require ext_code.size(stor7)
                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                 gas gas_remaining wei
                                                                args address(stor9), _6372 - stor13, this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if eth.balance(this.address) < stor14:
                                                                revert with 0, 17
                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6372 - stor13, _5902, _6132
                                                                if _6132 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5902:
                                                                    revert with 0, 18
                                                                if 10^18 * _6132 / _5902 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * _6132 / _5902) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6132 / _5902) - 10000, _6132, _5902
                                                                    if not arg1:
                                                                        if (10^18 * _6132 / _5902) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * _6132 / _5902) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6132, _5902
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor5)
                                                                call stor5.zapIn(address arg1) with:
                                                                   value eth.balance(this.address) - stor14 wei
                                                                     gas gas_remaining wei
                                                                    args stor3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _7882 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6372 - stor13, _5902, mem[_7882]
                                                                if mem[_7882] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5902:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_7882] / _5902 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_7882] / _5902) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7882] / _5902) - 10000, mem[_7882], _5902
                                                                    if not arg1:
                                                                        if (10^18 * mem[_7882] / _5902) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_7882] / _5902) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7882], _5902
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not return_data.size:
                                                _158 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 15
                                                mem[mem[64] + 96] = 'borrowETH bytes'
                                                mem[mem[64] + 32] = 128
                                                mem[_158 + 128] = ext_call.return_data[0]
                                                mem[_158 + 160 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                                    emit 0xcc769924: mem[mem[64] len ceil32(ext_call.return_data[0]) + _158 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5443 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5443] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5778 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5863 = mem[_5778]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6043 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6103 = mem[_6043]
                                                        if mem[_6043] and stor15 > -1 / mem[_6043]:
                                                            revert with 0, 17
                                                        if _5863 <= mem[_6043] * stor15 / 1000:
                                                            if mem[_6043] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5863:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6043] / _5863 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6043] / _5863) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6043] / _5863) - 10000, mem[_6043], _5863
                                                                if not arg1:
                                                                    if (10^18 * mem[_6043] / _5863) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6043] / _5863) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6043], _5863
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6283 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6343 = mem[_6283]
                                                            if mem[_6283] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6283] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6283] - stor13, _5863, _6103
                                                                    if _6103 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5863:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6103 / _5863 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6103 / _5863) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6103 / _5863) - 10000, _6103, _5863
                                                                        if not arg1:
                                                                            if (10^18 * _6103 / _5863) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6103 / _5863) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6103, _5863
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7503 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6343 - stor13, _5863, mem[_7503]
                                                                    if mem[_7503] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5863:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7503] / _5863 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7503] / _5863) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7503] / _5863) - 10000, mem[_7503], _5863
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7503] / _5863) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7503] / _5863) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7503], _5863
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6283] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6343 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6343 - stor13, _5863, _6103
                                                                    if _6103 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5863:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6103 / _5863 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6103 / _5863) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6103 / _5863) - 10000, _6103, _5863
                                                                        if not arg1:
                                                                            if (10^18 * _6103 / _5863) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6103 / _5863) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6103, _5863
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7818 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6343 - stor13, _5863, mem[_7818]
                                                                    if mem[_7818] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5863:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7818] / _5863 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7818] / _5863) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7818] / _5863) - 10000, mem[_7818], _5863
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7818] / _5863) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7818] / _5863) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7818], _5863
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[_158 + ext_call.return_data[0] + 160] = 0
                                                    emit 0xcc769924: mem[mem[64] len ceil32(ext_call.return_data[0]) + _158 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5473 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5473] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5833 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5905 = mem[_5833]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6073 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6133 = mem[_6073]
                                                        if mem[_6073] and stor15 > -1 / mem[_6073]:
                                                            revert with 0, 17
                                                        if _5905 <= mem[_6073] * stor15 / 1000:
                                                            if mem[_6073] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5905:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6073] / _5905 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6073] / _5905) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6073] / _5905) - 10000, mem[_6073], _5905
                                                                if not arg1:
                                                                    if (10^18 * mem[_6073] / _5905) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6073] / _5905) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6073], _5905
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6313 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6373 = mem[_6313]
                                                            if mem[_6313] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6313] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6313] - stor13, _5905, _6133
                                                                    if _6133 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5905:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6133 / _5905 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6133 / _5905) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6133 / _5905) - 10000, _6133, _5905
                                                                        if not arg1:
                                                                            if (10^18 * _6133 / _5905) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6133 / _5905) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6133, _5905
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7645 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6373 - stor13, _5905, mem[_7645]
                                                                    if mem[_7645] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5905:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7645] / _5905 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7645] / _5905) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7645] / _5905) - 10000, mem[_7645], _5905
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7645] / _5905) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7645] / _5905) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7645], _5905
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6313] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6373 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6373 - stor13, _5905, _6133
                                                                    if _6133 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5905:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6133 / _5905 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6133 / _5905) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6133 / _5905) - 10000, _6133, _5905
                                                                        if not arg1:
                                                                            if (10^18 * _6133 / _5905) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6133 / _5905) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6133, _5905
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7885 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6373 - stor13, _5905, mem[_7885]
                                                                    if mem[_7885] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5905:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7885] / _5905 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7885] / _5905) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7885] / _5905) - 10000, mem[_7885], _5905
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7885] / _5905) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7885] / _5905) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7885], _5905
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _144 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_144] = return_data.size
                                                mem[_144 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _159 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 15
                                                mem[mem[64] + 96] = 'borrowETH bytes'
                                                mem[mem[64] + 32] = 128
                                                mem[_159 + 128] = return_data.size
                                                mem[_159 + 160 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_144 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                                if ceil32(return_data.size) <= return_data.size:
                                                    emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _159 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5444 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5444] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5780 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5864 = mem[_5780]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6044 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6104 = mem[_6044]
                                                        if mem[_6044] and stor15 > -1 / mem[_6044]:
                                                            revert with 0, 17
                                                        if _5864 <= mem[_6044] * stor15 / 1000:
                                                            if mem[_6044] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5864:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6044] / _5864 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6044] / _5864) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6044] / _5864) - 10000, mem[_6044], _5864
                                                                if not arg1:
                                                                    if (10^18 * mem[_6044] / _5864) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6044] / _5864) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6044], _5864
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6284 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6344 = mem[_6284]
                                                            if mem[_6284] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6284] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6284] - stor13, _5864, _6104
                                                                    if _6104 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5864:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6104 / _5864 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6104 / _5864) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6104 / _5864) - 10000, _6104, _5864
                                                                        if not arg1:
                                                                            if (10^18 * _6104 / _5864) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6104 / _5864) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6104, _5864
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7508 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6344 - stor13, _5864, mem[_7508]
                                                                    if mem[_7508] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5864:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7508] / _5864 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7508] / _5864) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7508] / _5864) - 10000, mem[_7508], _5864
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7508] / _5864) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7508] / _5864) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7508], _5864
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6284] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6344 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6344 - stor13, _5864, _6104
                                                                    if _6104 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5864:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6104 / _5864 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6104 / _5864) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6104 / _5864) - 10000, _6104, _5864
                                                                        if not arg1:
                                                                            if (10^18 * _6104 / _5864) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6104 / _5864) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6104, _5864
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7820 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6344 - stor13, _5864, mem[_7820]
                                                                    if mem[_7820] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5864:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7820] / _5864 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7820] / _5864) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7820] / _5864) - 10000, mem[_7820], _5864
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7820] / _5864) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7820] / _5864) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7820], _5864
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[_159 + return_data.size + 160] = 0
                                                    emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _159 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5474 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5474] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5834 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5908 = mem[_5834]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6074 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6134 = mem[_6074]
                                                        if mem[_6074] and stor15 > -1 / mem[_6074]:
                                                            revert with 0, 17
                                                        if _5908 <= mem[_6074] * stor15 / 1000:
                                                            if mem[_6074] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5908:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6074] / _5908 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6074] / _5908) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6074] / _5908) - 10000, mem[_6074], _5908
                                                                if not arg1:
                                                                    if (10^18 * mem[_6074] / _5908) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6074] / _5908) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6074], _5908
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6314 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6374 = mem[_6314]
                                                            if mem[_6314] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6314] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6314] - stor13, _5908, _6134
                                                                    if _6134 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5908:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6134 / _5908 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6134 / _5908) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6134 / _5908) - 10000, _6134, _5908
                                                                        if not arg1:
                                                                            if (10^18 * _6134 / _5908) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6134 / _5908) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6134, _5908
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7648 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6374 - stor13, _5908, mem[_7648]
                                                                    if mem[_7648] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5908:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7648] / _5908 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7648] / _5908) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7648] / _5908) - 10000, mem[_7648], _5908
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7648] / _5908) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7648] / _5908) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7648], _5908
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6314] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6374 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6374 - stor13, _5908, _6134
                                                                    if _6134 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5908:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6134 / _5908 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6134 / _5908) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6134 / _5908) - 10000, _6134, _5908
                                                                        if not arg1:
                                                                            if (10^18 * _6134 / _5908) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6134 / _5908) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6134, _5908
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7888 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6374 - stor13, _5908, mem[_7888]
                                                                    if mem[_7888] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5908:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7888] / _5908 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7888] / _5908) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7888] / _5908) - 10000, mem[_7888], _5908
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7888] / _5908) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7888] / _5908) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7888], _5908
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 96] = 0x2c5fcf800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = address(stor9)
                mem[ceil32(return_data.size) + 132] = stor12
                mem[ceil32(return_data.size) + 164] = 2
                mem[ceil32(return_data.size) + 196] = this.address
                require ext_code.size(stor7)
                call stor7.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args address(stor9), stor12, 2, this.address
                if ext_call.success:
                    require ext_code.size(stor6)
                    call stor6.0x9975b113 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18:
                        emit log(Array(len=22, data='podl less than 1 ether'));
                    else:
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
                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < stor13:
                                revert with 0, 17
                            if ext_call.return_data[0] - stor13 > 10^18:
                                require ext_code.size(stor7)
                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < stor14:
                                revert with 0, 17
                            if eth.balance(this.address) - stor14 > 10^18:
                                require ext_code.size(stor5)
                                call stor5.zapIn(address arg1) with:
                                   value eth.balance(this.address) - stor14 wei
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
                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                            if not arg1:
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                            if not arg1:
                                if ext_call.return_data[0] > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if return_data.size <= 3:
                        if return_data.size:
                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                        else:
                            mem[ceil32(return_data.size) + 96] = 64
                            mem[ceil32(return_data.size) + 160] = 14
                            mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                            mem[ceil32(return_data.size) + 128] = 128
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                        require ext_code.size(stor6)
                        call stor6.0x9975b113 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 10^18:
                            emit log(Array(len=22, data='podl less than 1 ether'));
                        else:
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
                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                require ext_code.size(stor4)
                                staticcall stor4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < stor13:
                                    revert with 0, 17
                                if ext_call.return_data[0] - stor13 > 10^18:
                                    require ext_code.size(stor7)
                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < stor14:
                                    revert with 0, 17
                                if eth.balance(this.address) - stor14 > 10^18:
                                    require ext_code.size(stor5)
                                    call stor5.zapIn(address arg1) with:
                                       value eth.balance(this.address) - stor14 wei
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
                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                revert with 0, 17
                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                if not arg1:
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                        require ext_code.size(stor6)
                                        call stor6.0xba560803 with:
                                             gas gas_remaining wei
                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                if not arg1:
                                    if ext_call.return_data[0] > 10^18:
                                        require ext_code.size(stor6)
                                        call stor6.0xba560803 with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(msg.sender) >> 224 != Error(string arg1):
                            if return_data.size:
                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                            else:
                                mem[ceil32(return_data.size) + 96] = 64
                                mem[ceil32(return_data.size) + 160] = 14
                                mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                                mem[ceil32(return_data.size) + 128] = 128
                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                            require ext_code.size(stor6)
                            call stor6.0x9975b113 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 10^18:
                                emit log(Array(len=22, data='podl less than 1 ether'));
                            else:
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
                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                    require ext_code.size(stor4)
                                    staticcall stor4.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor13:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - stor13 > 10^18:
                                        require ext_code.size(stor7)
                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < stor14:
                                        revert with 0, 17
                                    if eth.balance(this.address) - stor14 > 10^18:
                                        require ext_code.size(stor5)
                                        call stor5.zapIn(address arg1) with:
                                           value eth.balance(this.address) - stor14 wei
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
                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                    revert with 0, 17
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                    if not arg1:
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                    if not arg1:
                                        if ext_call.return_data[0] > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                else:
                                    mem[ceil32(return_data.size) + 96] = 64
                                    mem[ceil32(return_data.size) + 160] = 14
                                    mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                                    mem[ceil32(return_data.size) + 128] = 128
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                require ext_code.size(stor6)
                                call stor6.0x9975b113 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 10^18:
                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                else:
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
                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                        require ext_code.size(stor4)
                                        staticcall stor4.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor13:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - stor13 > 10^18:
                                            require ext_code.size(stor7)
                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < stor14:
                                            revert with 0, 17
                                        if eth.balance(this.address) - stor14 > 10^18:
                                            require ext_code.size(stor5)
                                            call stor5.zapIn(address arg1) with:
                                               value eth.balance(this.address) - stor14 wei
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
                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                        revert with 0, 17
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                        if not arg1:
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                        if not arg1:
                                            if ext_call.return_data[0] > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 0, stor9) > test266151307() or 0, Mask(224, 0, stor9) + 36 > return_data.size:
                                    if return_data.size:
                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                    else:
                                        mem[ceil32(return_data.size) + 96] = 64
                                        mem[ceil32(return_data.size) + 160] = 14
                                        mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                                        mem[ceil32(return_data.size) + 128] = 128
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                            mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                    require ext_code.size(stor6)
                                    call stor6.0x9975b113 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 10^18:
                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                    else:
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
                                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                            require ext_code.size(stor4)
                                            staticcall stor4.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stor13:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - stor13 > 10^18:
                                                require ext_code.size(stor7)
                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < stor14:
                                                revert with 0, 17
                                            if eth.balance(this.address) - stor14 > 10^18:
                                                require ext_code.size(stor5)
                                                call stor5.zapIn(address arg1) with:
                                                   value eth.balance(this.address) - stor14 wei
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
                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                            revert with 0, 17
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                            if not arg1:
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                            if not arg1:
                                                if ext_call.return_data[0] > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] > test266151307():
                                        if return_data.size:
                                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                        else:
                                            mem[ceil32(return_data.size) + 96] = 64
                                            mem[ceil32(return_data.size) + 160] = 14
                                            mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                                            mem[ceil32(return_data.size) + 128] = 128
                                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                        require ext_code.size(stor6)
                                        call stor6.0x9975b113 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 10^18:
                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                        else:
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
                                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stor13:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] - stor13 > 10^18:
                                                    require ext_code.size(stor7)
                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                         gas gas_remaining wei
                                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < stor14:
                                                    revert with 0, 17
                                                if eth.balance(this.address) - stor14 > 10^18:
                                                    require ext_code.size(stor5)
                                                    call stor5.zapIn(address arg1) with:
                                                       value eth.balance(this.address) - stor14 wei
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
                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                revert with 0, 17
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                if not arg1:
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                if not arg1:
                                                    if ext_call.return_data[0] > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                            else:
                                                mem[ceil32(return_data.size) + 96] = 64
                                                mem[ceil32(return_data.size) + 160] = 14
                                                mem[ceil32(return_data.size) + 192] = 'repayETH bytes'
                                                mem[ceil32(return_data.size) + 128] = 128
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                                                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', ext_call.return_data[0], mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                                            require ext_code.size(stor6)
                                            call stor6.0x9975b113 with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < 10^18:
                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                            else:
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
                                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < stor13:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] - stor13 > 10^18:
                                                        require ext_code.size(stor7)
                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                             gas gas_remaining wei
                                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < stor14:
                                                        revert with 0, 17
                                                    if eth.balance(this.address) - stor14 > 10^18:
                                                        require ext_code.size(stor5)
                                                        call stor5.zapIn(address arg1) with:
                                                           value eth.balance(this.address) - stor14 wei
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
                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                    revert with 0, 17
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                    if not arg1:
                                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                    if not arg1:
                                                        if ext_call.return_data[0] > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97 < 96 or ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97 > test266151307():
                                                revert with 0, 65
                                            mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96] + 31) + 97
                                            if ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96:
                                                _189 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 8
                                                mem[mem[64] + 96] = 'repayETH'
                                                mem[mem[64] + 32] = 128
                                                _251 = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96]
                                                mem[_189 + 128] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 96]
                                                mem[_189 + 160 len ceil32(_251)] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128 len ceil32(_251)]
                                                if ceil32(_251) <= _251:
                                                    emit 0x47e864ce: mem[mem[64] len ceil32(_251) + _189 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5457 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5457] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5806 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5877 = mem[_5806]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6057 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6117 = mem[_6057]
                                                        if mem[_6057] and stor15 > -1 / mem[_6057]:
                                                            revert with 0, 17
                                                        if _5877 <= mem[_6057] * stor15 / 1000:
                                                            if mem[_6057] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5877:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6057] / _5877 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6057] / _5877) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6057] / _5877) - 10000, mem[_6057], _5877
                                                                if not arg1:
                                                                    if (10^18 * mem[_6057] / _5877) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6057] / _5877) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6057], _5877
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6297 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6357 = mem[_6297]
                                                            if mem[_6297] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6297] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6297] - stor13, _5877, _6117
                                                                    if _6117 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5877:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6117 / _5877 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6117 / _5877) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6117 / _5877) - 10000, _6117, _5877
                                                                        if not arg1:
                                                                            if (10^18 * _6117 / _5877) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6117 / _5877) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6117, _5877
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7573 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6357 - stor13, _5877, mem[_7573]
                                                                    if mem[_7573] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5877:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7573] / _5877 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7573] / _5877) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7573] / _5877) - 10000, mem[_7573], _5877
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7573] / _5877) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7573] / _5877) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7573], _5877
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6297] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6357 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6357 - stor13, _5877, _6117
                                                                    if _6117 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5877:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6117 / _5877 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6117 / _5877) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6117 / _5877) - 10000, _6117, _5877
                                                                        if not arg1:
                                                                            if (10^18 * _6117 / _5877) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6117 / _5877) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6117, _5877
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7846 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6357 - stor13, _5877, mem[_7846]
                                                                    if mem[_7846] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5877:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7846] / _5877 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7846] / _5877) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7846] / _5877) - 10000, mem[_7846], _5877
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7846] / _5877) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7846] / _5877) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7846], _5877
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[_189 + _251 + 160] = 0
                                                    emit 0x47e864ce: mem[mem[64] len ceil32(_251) + _189 + -mem[64] + 160]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5487 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_5487] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
                                                        require ext_code.size(stor6)
                                                        call stor6.0x26b5e81a with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5847 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5947 = mem[_5847]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6087 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6147 = mem[_6087]
                                                        if mem[_6087] and stor15 > -1 / mem[_6087]:
                                                            revert with 0, 17
                                                        if _5947 <= mem[_6087] * stor15 / 1000:
                                                            if mem[_6087] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                revert with 0, 17
                                                            if not _5947:
                                                                revert with 0, 18
                                                            if 10^18 * mem[_6087] / _5947 < 10000:
                                                                revert with 0, 17
                                                            if (10^18 * mem[_6087] / _5947) - 10000 <= ext_call.return_data[0]:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6087] / _5947) - 10000, mem[_6087], _5947
                                                                if not arg1:
                                                                    if (10^18 * mem[_6087] / _5947) - 10000 > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ((10^18 * mem[_6087] / _5947) - 10000)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6087], _5947
                                                                if not arg1:
                                                                    if ext_call.return_data[0] > 10^18:
                                                                        require ext_code.size(stor6)
                                                                        call stor6.0xba560803 with:
                                                                             gas gas_remaining wei
                                                                            args ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6327 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6387 = mem[_6327]
                                                            if mem[_6327] < stor13:
                                                                revert with 0, 17
                                                            if mem[_6327] - stor13 <= 10^18:
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6327] - stor13, _5947, _6147
                                                                    if _6147 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5947:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6147 / _5947 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6147 / _5947) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6147 / _5947) - 10000, _6147, _5947
                                                                        if not arg1:
                                                                            if (10^18 * _6147 / _5947) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6147 / _5947) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6147, _5947
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7687 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6387 - stor13, _5947, mem[_7687]
                                                                    if mem[_7687] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5947:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7687] / _5947 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7687] / _5947) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7687] / _5947) - 10000, mem[_7687], _5947
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7687] / _5947) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7687] / _5947) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7687], _5947
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 36] = mem[_6327] - stor13
                                                                mem[mem[64] + 68] = this.address
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), _6387 - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if eth.balance(this.address) < stor14:
                                                                    revert with 0, 17
                                                                if eth.balance(this.address) - stor14 <= 10^18:
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6387 - stor13, _5947, _6147
                                                                    if _6147 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5947:
                                                                        revert with 0, 18
                                                                    if 10^18 * _6147 / _5947 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * _6147 / _5947) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6147 / _5947) - 10000, _6147, _5947
                                                                        if not arg1:
                                                                            if (10^18 * _6147 / _5947) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * _6147 / _5947) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6147, _5947
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor5)
                                                                    call stor5.zapIn(address arg1) with:
                                                                       value eth.balance(this.address) - stor14 wei
                                                                         gas gas_remaining wei
                                                                        args stor3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _7927 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6387 - stor13, _5947, mem[_7927]
                                                                    if mem[_7927] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _5947:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_7927] / _5947 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_7927] / _5947) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7927] / _5947) - 10000, mem[_7927], _5947
                                                                        if not arg1:
                                                                            if (10^18 * mem[_7927] / _5947) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_7927] / _5947) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7927], _5947
                                                                        if not arg1:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not return_data.size:
                                                    _293 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 14
                                                    mem[mem[64] + 96] = 'repayETH bytes'
                                                    mem[mem[64] + 32] = 128
                                                    mem[_293 + 128] = ext_call.return_data[0]
                                                    mem[_293 + 160 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                                    if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                                        emit 0xcc769924: mem[mem[64] len ceil32(ext_call.return_data[0]) + _293 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5458 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5458] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5808 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _5878 = mem[_5808]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6058 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6118 = mem[_6058]
                                                            if mem[_6058] and stor15 > -1 / mem[_6058]:
                                                                revert with 0, 17
                                                            if _5878 <= mem[_6058] * stor15 / 1000:
                                                                if mem[_6058] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5878:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6058] / _5878 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6058] / _5878) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6058] / _5878) - 10000, mem[_6058], _5878
                                                                    if not arg1:
                                                                        if (10^18 * mem[_6058] / _5878) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6058] / _5878) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6058], _5878
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6298 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6358 = mem[_6298]
                                                                if mem[_6298] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6298] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6298] - stor13, _5878, _6118
                                                                        if _6118 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5878:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6118 / _5878 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6118 / _5878) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6118 / _5878) - 10000, _6118, _5878
                                                                            if not arg1:
                                                                                if (10^18 * _6118 / _5878) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6118 / _5878) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6118, _5878
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7578 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6358 - stor13, _5878, mem[_7578]
                                                                        if mem[_7578] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5878:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7578] / _5878 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7578] / _5878) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7578] / _5878) - 10000, mem[_7578], _5878
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7578] / _5878) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7578] / _5878) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7578], _5878
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6298] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6358 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6358 - stor13, _5878, _6118
                                                                        if _6118 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5878:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6118 / _5878 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6118 / _5878) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6118 / _5878) - 10000, _6118, _5878
                                                                            if not arg1:
                                                                                if (10^18 * _6118 / _5878) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6118 / _5878) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6118, _5878
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7848 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6358 - stor13, _5878, mem[_7848]
                                                                        if mem[_7848] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5878:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7848] / _5878 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7848] / _5878) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7848] / _5878) - 10000, mem[_7848], _5878
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7848] / _5878) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7848] / _5878) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7848], _5878
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[_293 + ext_call.return_data[0] + 160] = 0
                                                        emit 0xcc769924: mem[mem[64] len ceil32(ext_call.return_data[0]) + _293 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5488 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5488] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5848 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _5950 = mem[_5848]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6088 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6148 = mem[_6088]
                                                            if mem[_6088] and stor15 > -1 / mem[_6088]:
                                                                revert with 0, 17
                                                            if _5950 <= mem[_6088] * stor15 / 1000:
                                                                if mem[_6088] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5950:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6088] / _5950 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6088] / _5950) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6088] / _5950) - 10000, mem[_6088], _5950
                                                                    if not arg1:
                                                                        if (10^18 * mem[_6088] / _5950) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6088] / _5950) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6088], _5950
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6328 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6388 = mem[_6328]
                                                                if mem[_6328] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6328] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6328] - stor13, _5950, _6148
                                                                        if _6148 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5950:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6148 / _5950 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6148 / _5950) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6148 / _5950) - 10000, _6148, _5950
                                                                            if not arg1:
                                                                                if (10^18 * _6148 / _5950) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6148 / _5950) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6148, _5950
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7690 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6388 - stor13, _5950, mem[_7690]
                                                                        if mem[_7690] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5950:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7690] / _5950 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7690] / _5950) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7690] / _5950) - 10000, mem[_7690], _5950
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7690] / _5950) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7690] / _5950) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7690], _5950
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6328] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6388 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6388 - stor13, _5950, _6148
                                                                        if _6148 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5950:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6148 / _5950 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6148 / _5950) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6148 / _5950) - 10000, _6148, _5950
                                                                            if not arg1:
                                                                                if (10^18 * _6148 / _5950) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6148 / _5950) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6148, _5950
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7930 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6388 - stor13, _5950, mem[_7930]
                                                                        if mem[_7930] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5950:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7930] / _5950 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7930] / _5950) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7930] / _5950) - 10000, mem[_7930], _5950
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7930] / _5950) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7930] / _5950) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7930], _5950
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _252 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_252] = return_data.size
                                                    mem[_252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _294 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 14
                                                    mem[mem[64] + 96] = 'repayETH bytes'
                                                    mem[mem[64] + 32] = 128
                                                    mem[_294 + 128] = return_data.size
                                                    mem[_294 + 160 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_252 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                                    if ceil32(return_data.size) <= return_data.size:
                                                        emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _294 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5459 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5459] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5810 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _5879 = mem[_5810]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6059 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6119 = mem[_6059]
                                                            if mem[_6059] and stor15 > -1 / mem[_6059]:
                                                                revert with 0, 17
                                                            if _5879 <= mem[_6059] * stor15 / 1000:
                                                                if mem[_6059] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5879:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6059] / _5879 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6059] / _5879) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6059] / _5879) - 10000, mem[_6059], _5879
                                                                    if not arg1:
                                                                        if (10^18 * mem[_6059] / _5879) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6059] / _5879) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6059], _5879
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6299 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6359 = mem[_6299]
                                                                if mem[_6299] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6299] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6299] - stor13, _5879, _6119
                                                                        if _6119 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5879:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6119 / _5879 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6119 / _5879) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6119 / _5879) - 10000, _6119, _5879
                                                                            if not arg1:
                                                                                if (10^18 * _6119 / _5879) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6119 / _5879) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6119, _5879
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7583 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6359 - stor13, _5879, mem[_7583]
                                                                        if mem[_7583] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5879:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7583] / _5879 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7583] / _5879) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7583] / _5879) - 10000, mem[_7583], _5879
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7583] / _5879) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7583] / _5879) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7583], _5879
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6299] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6359 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6359 - stor13, _5879, _6119
                                                                        if _6119 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5879:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6119 / _5879 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6119 / _5879) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6119 / _5879) - 10000, _6119, _5879
                                                                            if not arg1:
                                                                                if (10^18 * _6119 / _5879) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6119 / _5879) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6119, _5879
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7850 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6359 - stor13, _5879, mem[_7850]
                                                                        if mem[_7850] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5879:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7850] / _5879 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7850] / _5879) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7850] / _5879) - 10000, mem[_7850], _5879
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7850] / _5879) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7850] / _5879) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7850], _5879
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[_294 + return_data.size + 160] = 0
                                                        emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _294 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5489 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5489] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5849 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _5953 = mem[_5849]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6089 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6149 = mem[_6089]
                                                            if mem[_6089] and stor15 > -1 / mem[_6089]:
                                                                revert with 0, 17
                                                            if _5953 <= mem[_6089] * stor15 / 1000:
                                                                if mem[_6089] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _5953:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6089] / _5953 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6089] / _5953) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6089] / _5953) - 10000, mem[_6089], _5953
                                                                    if not arg1:
                                                                        if (10^18 * mem[_6089] / _5953) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6089] / _5953) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6089], _5953
                                                                    if not arg1:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6329 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6389 = mem[_6329]
                                                                if mem[_6329] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6329] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6329] - stor13, _5953, _6149
                                                                        if _6149 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5953:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6149 / _5953 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6149 / _5953) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6149 / _5953) - 10000, _6149, _5953
                                                                            if not arg1:
                                                                                if (10^18 * _6149 / _5953) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6149 / _5953) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6149, _5953
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7693 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6389 - stor13, _5953, mem[_7693]
                                                                        if mem[_7693] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5953:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7693] / _5953 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7693] / _5953) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7693] / _5953) - 10000, mem[_7693], _5953
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7693] / _5953) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7693] / _5953) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7693], _5953
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6329] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6389 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6389 - stor13, _5953, _6149
                                                                        if _6149 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5953:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6149 / _5953 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6149 / _5953) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6149 / _5953) - 10000, _6149, _5953
                                                                            if not arg1:
                                                                                if (10^18 * _6149 / _5953) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6149 / _5953) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6149, _5953
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7933 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6389 - stor13, _5953, mem[_7933]
                                                                        if mem[_7933] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _5953:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7933] / _5953 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7933] / _5953) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7933] / _5953) - 10000, mem[_7933], _5953
                                                                            if not arg1:
                                                                                if (10^18 * mem[_7933] / _5953) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7933] / _5953) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7933], _5953
                                                                            if not arg1:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
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
                require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
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
                mem[ceil32(32 * ('cd', 36).length) + 129] = 2
                mem[64] = ceil32(32 * ('cd', 36).length) + 225
                mem[ceil32(32 * ('cd', 36).length) + 161] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
                mem[ceil32(32 * ('cd', 36).length) + 193] = 0xac3f978714c613e768272c502a8912bc03dcf624
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _10313 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_10313))
                    staticcall address(_10313).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10331 = mem[_10324]
                    if mem[_10324]:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _10336 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _10331
                        require ext_code.size(address(_10336))
                        call address(_10336).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _10331
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10345] == bool(mem[_10345])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _10351 = mem[ceil32(32 * ('cd', 36).length) + 129]
                idx = 0
                while idx < _10351:
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    _10356 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_10356))
                    staticcall address(_10356).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10363 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10364 = mem[_10363]
                    if mem[_10363]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                            revert with 0, 50
                        _10366 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _10364
                        require ext_code.size(address(_10366))
                        call address(_10366).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _10364
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10369] == bool(mem[_10369])
                    if idx == -1:
                        revert with 0, 17
                    _10351 = mem[ceil32(32 * ('cd', 36).length) + 129]
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
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
                        _10309 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_10309))
                        staticcall address(_10309).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10325 = mem[_10319]
                        if mem[_10319]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _10335 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _10325
                            require ext_code.size(address(_10335))
                            call address(_10335).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _10325
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10346] == bool(mem[_10346])
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
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
            require calldata.size - 4 >= 32
            require cd[4] == bool(cd[4])
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            require ext_code.size(stor6)
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            emit 0x9bd7b8cc: ext_call.return_data[0], stor10
            if ext_call.return_data[0] >= 10^18:
                require ext_code.size(stor6)
                call stor6.0x9975b113 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 10^18:
                    emit log(Array(len=22, data='podl less than 1 ether'));
                else:
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
                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < stor13:
                            revert with 0, 17
                        if ext_call.return_data[0] - stor13 > 10^18:
                            require ext_code.size(stor7)
                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < stor14:
                            revert with 0, 17
                        if eth.balance(this.address) - stor14 > 10^18:
                            require ext_code.size(stor5)
                            call stor5.zapIn(address arg1) with:
                               value eth.balance(this.address) - stor14 wei
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
                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                        if not cd[4]:
                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                require ext_code.size(stor6)
                                call stor6.0xba560803 with:
                                     gas gas_remaining wei
                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                        if not cd[4]:
                            if ext_call.return_data[0] > 10^18:
                                require ext_code.size(stor6)
                                call stor6.0xba560803 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] <= stor10:
                    require ext_code.size(stor6)
                    call stor6.0x9975b113 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18:
                        emit log(Array(len=22, data='podl less than 1 ether'));
                    else:
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
                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < stor13:
                                revert with 0, 17
                            if ext_call.return_data[0] - stor13 > 10^18:
                                require ext_code.size(stor7)
                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < stor14:
                                revert with 0, 17
                            if eth.balance(this.address) - stor14 > 10^18:
                                require ext_code.size(stor5)
                                call stor5.zapIn(address arg1) with:
                                   value eth.balance(this.address) - stor14 wei
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
                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                            if not cd[4]:
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                            if not cd[4]:
                                if ext_call.return_data[0] > 10^18:
                                    require ext_code.size(stor6)
                                    call stor6.0xba560803 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit log(Array(len=5, data='magic'));
                    mem[ceil32(return_data.size) + 128] = 0x66514c9700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = address(stor9)
                    mem[ceil32(return_data.size) + 164] = stor11
                    mem[ceil32(return_data.size) + 196] = 2
                    mem[ceil32(return_data.size) + 228] = 0
                    require ext_code.size(stor7)
                    call stor7.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args address(stor9), stor11, 2, 0
                    if not ext_call.success:
                        if return_data.size <= 3:
                            if return_data.size:
                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                            else:
                                mem[ceil32(return_data.size) + 128] = 64
                                mem[ceil32(return_data.size) + 192] = 15
                                mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                mem[ceil32(return_data.size) + 160] = 128
                                mem[ceil32(return_data.size) + 256] = mem[96]
                                mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                            require ext_code.size(stor6)
                            call stor6.0x9975b113 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 10^18:
                                emit log(Array(len=22, data='podl less than 1 ether'));
                            else:
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
                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                    require ext_code.size(stor4)
                                    staticcall stor4.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor13:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - stor13 > 10^18:
                                        require ext_code.size(stor7)
                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < stor14:
                                        revert with 0, 17
                                    if eth.balance(this.address) - stor14 > 10^18:
                                        require ext_code.size(stor5)
                                        call stor5.zapIn(address arg1) with:
                                           value eth.balance(this.address) - stor14 wei
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
                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                    revert with 0, 17
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                    if not cd[4]:
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                    if not cd[4]:
                                        if ext_call.return_data[0] > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0 len 4] = ext_call.return_data[0 len 4]
                            if uint32(msg.sender) >> 224 != Error(string arg1):
                                if return_data.size:
                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                else:
                                    mem[ceil32(return_data.size) + 128] = 64
                                    mem[ceil32(return_data.size) + 192] = 15
                                    mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                    mem[ceil32(return_data.size) + 160] = 128
                                    mem[ceil32(return_data.size) + 256] = mem[96]
                                    mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                require ext_code.size(stor6)
                                call stor6.0x9975b113 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 10^18:
                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                else:
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
                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                        require ext_code.size(stor4)
                                        staticcall stor4.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor13:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - stor13 > 10^18:
                                            require ext_code.size(stor7)
                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < stor14:
                                            revert with 0, 17
                                        if eth.balance(this.address) - stor14 > 10^18:
                                            require ext_code.size(stor5)
                                            call stor5.zapIn(address arg1) with:
                                               value eth.balance(this.address) - stor14 wei
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
                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                        revert with 0, 17
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                        if not cd[4]:
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                        if not cd[4]:
                                            if ext_call.return_data[0] > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if return_data.size < 68:
                                    if return_data.size:
                                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                    else:
                                        mem[ceil32(return_data.size) + 128] = 64
                                        mem[ceil32(return_data.size) + 192] = 15
                                        mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                        mem[ceil32(return_data.size) + 160] = 128
                                        mem[ceil32(return_data.size) + 256] = mem[96]
                                        mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                        emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                    require ext_code.size(stor6)
                                    call stor6.0x9975b113 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 10^18:
                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                    else:
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
                                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                            require ext_code.size(stor4)
                                            staticcall stor4.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stor13:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - stor13 > 10^18:
                                                require ext_code.size(stor7)
                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < stor14:
                                                revert with 0, 17
                                            if eth.balance(this.address) - stor14 > 10^18:
                                                require ext_code.size(stor5)
                                                call stor5.zapIn(address arg1) with:
                                                   value eth.balance(this.address) - stor14 wei
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
                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                            revert with 0, 17
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                            if not cd[4]:
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                            if not cd[4]:
                                                if ext_call.return_data[0] > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[ceil32(return_data.size) + 128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                    if 0, Mask(224, 0, stor9) > test266151307() or 0, Mask(224, 0, stor9) + 36 > return_data.size:
                                        if return_data.size:
                                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                        else:
                                            mem[ceil32(return_data.size) + 128] = 64
                                            mem[ceil32(return_data.size) + 192] = 15
                                            mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                            mem[ceil32(return_data.size) + 160] = 128
                                            mem[ceil32(return_data.size) + 256] = mem[96]
                                            mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) > mem[96]:
                                                mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                            emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                        require ext_code.size(stor6)
                                        call stor6.0x9975b113 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 10^18:
                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                        else:
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
                                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stor13:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] - stor13 > 10^18:
                                                    require ext_code.size(stor7)
                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                         gas gas_remaining wei
                                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < stor14:
                                                    revert with 0, 17
                                                if eth.balance(this.address) - stor14 > 10^18:
                                                    require ext_code.size(stor5)
                                                    call stor5.zapIn(address arg1) with:
                                                       value eth.balance(this.address) - stor14 wei
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
                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                revert with 0, 17
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                if not cd[4]:
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                if not cd[4]:
                                                    if ext_call.return_data[0] > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] > test266151307():
                                            if return_data.size:
                                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                            else:
                                                mem[ceil32(return_data.size) + 128] = 64
                                                mem[ceil32(return_data.size) + 192] = 15
                                                mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                                mem[ceil32(return_data.size) + 160] = 128
                                                mem[ceil32(return_data.size) + 256] = mem[96]
                                                mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) > mem[96]:
                                                    mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                                emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                            require ext_code.size(stor6)
                                            call stor6.0x9975b113 with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < 10^18:
                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                            else:
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
                                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < stor13:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] - stor13 > 10^18:
                                                        require ext_code.size(stor7)
                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                             gas gas_remaining wei
                                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < stor14:
                                                        revert with 0, 17
                                                    if eth.balance(this.address) - stor14 > 10^18:
                                                        require ext_code.size(stor5)
                                                        call stor5.zapIn(address arg1) with:
                                                           value eth.balance(this.address) - stor14 wei
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
                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                    revert with 0, 17
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                    if not cd[4]:
                                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                    if not cd[4]:
                                                        if ext_call.return_data[0] > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 32 > return_data.size - 4:
                                                if return_data.size:
                                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                                else:
                                                    mem[ceil32(return_data.size) + 128] = 64
                                                    mem[ceil32(return_data.size) + 192] = 15
                                                    mem[ceil32(return_data.size) + 224] = 'borrowETH bytes'
                                                    mem[ceil32(return_data.size) + 160] = 128
                                                    mem[ceil32(return_data.size) + 256] = mem[96]
                                                    mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) > mem[96]:
                                                        mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                                    emit 0xcc769924: 64, 128, 15, 'borrowETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                                require ext_code.size(stor6)
                                                call stor6.0x9975b113 with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 10^18:
                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                else:
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
                                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < stor13:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - stor13 > 10^18:
                                                            require ext_code.size(stor7)
                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                 gas gas_remaining wei
                                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        if eth.balance(this.address) < stor14:
                                                            revert with 0, 17
                                                        if eth.balance(this.address) - stor14 > 10^18:
                                                            require ext_code.size(stor5)
                                                            call stor5.zapIn(address arg1) with:
                                                               value eth.balance(this.address) - stor14 wei
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
                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                        revert with 0, 17
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                        if not cd[4]:
                                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                                require ext_code.size(stor6)
                                                                call stor6.0xba560803 with:
                                                                     gas gas_remaining wei
                                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                        if not cd[4]:
                                                            if ext_call.return_data[0] > 10^18:
                                                                require ext_code.size(stor6)
                                                                call stor6.0xba560803 with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129 < 128 or ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129
                                                if ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128:
                                                    _214 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'borrowETH'
                                                    mem[mem[64] + 32] = 128
                                                    _254 = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128]
                                                    mem[_214 + 128] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128]
                                                    mem[_214 + 160 len ceil32(_254)] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 160 len ceil32(_254)]
                                                    if ceil32(_254) <= _254:
                                                        emit 0x47e864ce: mem[mem[64] len ceil32(_254) + _214 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5575 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5575] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5938 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6031 = mem[_5938]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6219 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6285 = mem[_6219]
                                                            if mem[_6219] and stor15 > -1 / mem[_6219]:
                                                                revert with 0, 17
                                                            if _6031 <= mem[_6219] * stor15 / 1000:
                                                                if mem[_6219] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _6031:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6219] / _6031 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6219] / _6031) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6219] / _6031) - 10000, mem[_6219], _6031
                                                                    if not cd[4]:
                                                                        if (10^18 * mem[_6219] / _6031) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6219] / _6031) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6219], _6031
                                                                    if not cd[4]:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6469 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6529 = mem[_6469]
                                                                if mem[_6469] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6469] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6469] - stor13, _6031, _6285
                                                                        if _6285 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6031:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6285 / _6031 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6285 / _6031) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6285 / _6031) - 10000, _6285, _6031
                                                                            if not cd[4]:
                                                                                if (10^18 * _6285 / _6031) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6285 / _6031) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6285, _6031
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7685 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6529 - stor13, _6031, mem[_7685]
                                                                        if mem[_7685] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6031:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7685] / _6031 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7685] / _6031) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7685] / _6031) - 10000, mem[_7685], _6031
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_7685] / _6031) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7685] / _6031) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7685], _6031
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6469] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6529 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6529 - stor13, _6031, _6285
                                                                        if _6285 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6031:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6285 / _6031 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6285 / _6031) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6285 / _6031) - 10000, _6285, _6031
                                                                            if not cd[4]:
                                                                                if (10^18 * _6285 / _6031) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6285 / _6031) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6285, _6031
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _8003 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6529 - stor13, _6031, mem[_8003]
                                                                        if mem[_8003] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6031:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_8003] / _6031 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_8003] / _6031) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8003] / _6031) - 10000, mem[_8003], _6031
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_8003] / _6031) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_8003] / _6031) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8003], _6031
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[_214 + _254 + 160] = 0
                                                        emit 0x47e864ce: mem[mem[64] len ceil32(_254) + _214 + -mem[64] + 160]
                                                        require ext_code.size(stor6)
                                                        call stor6.0x9975b113 with:
                                                             gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5608 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_5608] < 10^18:
                                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                                        else:
                                                            require ext_code.size(stor6)
                                                            call stor6.0x26b5e81a with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5994 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6072 = mem[_5994]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6251 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _6316 = mem[_6251]
                                                            if mem[_6251] and stor15 > -1 / mem[_6251]:
                                                                revert with 0, 17
                                                            if _6072 <= mem[_6251] * stor15 / 1000:
                                                                if mem[_6251] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                    revert with 0, 17
                                                                if not _6072:
                                                                    revert with 0, 18
                                                                if 10^18 * mem[_6251] / _6072 < 10000:
                                                                    revert with 0, 17
                                                                if (10^18 * mem[_6251] / _6072) - 10000 <= ext_call.return_data[0]:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6251] / _6072) - 10000, mem[_6251], _6072
                                                                    if not cd[4]:
                                                                        if (10^18 * mem[_6251] / _6072) - 10000 > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ((10^18 * mem[_6251] / _6072) - 10000)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6251], _6072
                                                                    if not cd[4]:
                                                                        if ext_call.return_data[0] > 10^18:
                                                                            require ext_code.size(stor6)
                                                                            call stor6.0xba560803 with:
                                                                                 gas gas_remaining wei
                                                                                args ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6499 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6559 = mem[_6499]
                                                                if mem[_6499] < stor13:
                                                                    revert with 0, 17
                                                                if mem[_6499] - stor13 <= 10^18:
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6499] - stor13, _6072, _6316
                                                                        if _6316 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6072:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6316 / _6072 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6316 / _6072) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6316 / _6072) - 10000, _6316, _6072
                                                                            if not cd[4]:
                                                                                if (10^18 * _6316 / _6072) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6316 / _6072) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6316, _6072
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _7829 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6559 - stor13, _6072, mem[_7829]
                                                                        if mem[_7829] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6072:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_7829] / _6072 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_7829] / _6072) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7829] / _6072) - 10000, mem[_7829], _6072
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_7829] / _6072) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_7829] / _6072) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7829], _6072
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 36] = mem[_6499] - stor13
                                                                    mem[mem[64] + 68] = this.address
                                                                    require ext_code.size(stor7)
                                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                         gas gas_remaining wei
                                                                        args address(stor9), _6559 - stor13, this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if eth.balance(this.address) < stor14:
                                                                        revert with 0, 17
                                                                    if eth.balance(this.address) - stor14 <= 10^18:
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6559 - stor13, _6072, _6316
                                                                        if _6316 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6072:
                                                                            revert with 0, 18
                                                                        if 10^18 * _6316 / _6072 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * _6316 / _6072) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6316 / _6072) - 10000, _6316, _6072
                                                                            if not cd[4]:
                                                                                if (10^18 * _6316 / _6072) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * _6316 / _6072) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6316, _6072
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(stor5)
                                                                        call stor5.zapIn(address arg1) with:
                                                                           value eth.balance(this.address) - stor14 wei
                                                                             gas gas_remaining wei
                                                                            args stor3
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _8069 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6559 - stor13, _6072, mem[_8069]
                                                                        if mem[_8069] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6072:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_8069] / _6072 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_8069] / _6072) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8069] / _6072) - 10000, mem[_8069], _6072
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_8069] / _6072) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_8069] / _6072) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8069], _6072
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not return_data.size:
                                                        _271 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 15
                                                        mem[mem[64] + 96] = 'borrowETH bytes'
                                                        mem[mem[64] + 32] = 128
                                                        mem[_271 + 128] = mem[96]
                                                        mem[_271 + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            emit 0xcc769924: mem[mem[64] len ceil32(mem[96]) + _271 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5576 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5576] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5940 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6032 = mem[_5940]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6220 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6286 = mem[_6220]
                                                                if mem[_6220] and stor15 > -1 / mem[_6220]:
                                                                    revert with 0, 17
                                                                if _6032 <= mem[_6220] * stor15 / 1000:
                                                                    if mem[_6220] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6032:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6220] / _6032 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6220] / _6032) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6220] / _6032) - 10000, mem[_6220], _6032
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6220] / _6032) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6220] / _6032) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6220], _6032
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6470 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6530 = mem[_6470]
                                                                    if mem[_6470] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6470] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6470] - stor13, _6032, _6286
                                                                            if _6286 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6032:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6286 / _6032 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6286 / _6032) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6286 / _6032) - 10000, _6286, _6032
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6286 / _6032) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6286 / _6032) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6286, _6032
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7690 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6530 - stor13, _6032, mem[_7690]
                                                                            if mem[_7690] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6032:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7690] / _6032 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7690] / _6032) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7690] / _6032) - 10000, mem[_7690], _6032
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7690] / _6032) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7690] / _6032) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7690], _6032
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6470] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6530 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6530 - stor13, _6032, _6286
                                                                            if _6286 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6032:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6286 / _6032 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6286 / _6032) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6286 / _6032) - 10000, _6286, _6032
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6286 / _6032) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6286 / _6032) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6286, _6032
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8005 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6530 - stor13, _6032, mem[_8005]
                                                                            if mem[_8005] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6032:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8005] / _6032 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8005] / _6032) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8005] / _6032) - 10000, mem[_8005], _6032
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8005] / _6032) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8005] / _6032) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8005], _6032
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[_271 + mem[96] + 160] = 0
                                                            emit 0xcc769924: mem[mem[64] len ceil32(mem[96]) + _271 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5609 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5609] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5995 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6075 = mem[_5995]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6252 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6317 = mem[_6252]
                                                                if mem[_6252] and stor15 > -1 / mem[_6252]:
                                                                    revert with 0, 17
                                                                if _6075 <= mem[_6252] * stor15 / 1000:
                                                                    if mem[_6252] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6075:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6252] / _6075 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6252] / _6075) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6252] / _6075) - 10000, mem[_6252], _6075
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6252] / _6075) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6252] / _6075) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6252], _6075
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6500 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6560 = mem[_6500]
                                                                    if mem[_6500] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6500] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6500] - stor13, _6075, _6317
                                                                            if _6317 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6075:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6317 / _6075 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6317 / _6075) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6317 / _6075) - 10000, _6317, _6075
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6317 / _6075) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6317 / _6075) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6317, _6075
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7832 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6560 - stor13, _6075, mem[_7832]
                                                                            if mem[_7832] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6075:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7832] / _6075 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7832] / _6075) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7832] / _6075) - 10000, mem[_7832], _6075
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7832] / _6075) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7832] / _6075) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7832], _6075
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6500] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6560 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6560 - stor13, _6075, _6317
                                                                            if _6317 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6075:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6317 / _6075 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6317 / _6075) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6317 / _6075) - 10000, _6317, _6075
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6317 / _6075) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6317 / _6075) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6317, _6075
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8072 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6560 - stor13, _6075, mem[_8072]
                                                                            if mem[_8072] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6075:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8072] / _6075 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8072] / _6075) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8072] / _6075) - 10000, mem[_8072], _6075
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8072] / _6075) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8072] / _6075) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8072], _6075
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _255 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_255] = return_data.size
                                                        mem[_255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        _272 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 15
                                                        mem[mem[64] + 96] = 'borrowETH bytes'
                                                        mem[mem[64] + 32] = 128
                                                        mem[_272 + 128] = return_data.size
                                                        mem[_272 + 160 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_255 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                                        if ceil32(return_data.size) <= return_data.size:
                                                            emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _272 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5577 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5577] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5942 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6033 = mem[_5942]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6221 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6287 = mem[_6221]
                                                                if mem[_6221] and stor15 > -1 / mem[_6221]:
                                                                    revert with 0, 17
                                                                if _6033 <= mem[_6221] * stor15 / 1000:
                                                                    if mem[_6221] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6033:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6221] / _6033 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6221] / _6033) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6221] / _6033) - 10000, mem[_6221], _6033
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6221] / _6033) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6221] / _6033) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6221], _6033
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6471 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6531 = mem[_6471]
                                                                    if mem[_6471] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6471] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6471] - stor13, _6033, _6287
                                                                            if _6287 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6033:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6287 / _6033 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6287 / _6033) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6287 / _6033) - 10000, _6287, _6033
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6287 / _6033) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6287 / _6033) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6287, _6033
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7695 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6531 - stor13, _6033, mem[_7695]
                                                                            if mem[_7695] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6033:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7695] / _6033 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7695] / _6033) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7695] / _6033) - 10000, mem[_7695], _6033
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7695] / _6033) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7695] / _6033) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7695], _6033
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6471] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6531 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6531 - stor13, _6033, _6287
                                                                            if _6287 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6033:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6287 / _6033 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6287 / _6033) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6287 / _6033) - 10000, _6287, _6033
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6287 / _6033) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6287 / _6033) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6287, _6033
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8007 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6531 - stor13, _6033, mem[_8007]
                                                                            if mem[_8007] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6033:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8007] / _6033 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8007] / _6033) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8007] / _6033) - 10000, mem[_8007], _6033
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8007] / _6033) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8007] / _6033) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8007], _6033
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[_272 + return_data.size + 160] = 0
                                                            emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _272 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5610 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5610] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5996 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6078 = mem[_5996]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6253 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6318 = mem[_6253]
                                                                if mem[_6253] and stor15 > -1 / mem[_6253]:
                                                                    revert with 0, 17
                                                                if _6078 <= mem[_6253] * stor15 / 1000:
                                                                    if mem[_6253] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6078:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6253] / _6078 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6253] / _6078) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6253] / _6078) - 10000, mem[_6253], _6078
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6253] / _6078) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6253] / _6078) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6253], _6078
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6501 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6561 = mem[_6501]
                                                                    if mem[_6501] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6501] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6501] - stor13, _6078, _6318
                                                                            if _6318 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6078:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6318 / _6078 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6318 / _6078) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6318 / _6078) - 10000, _6318, _6078
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6318 / _6078) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6318 / _6078) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6318, _6078
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7835 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6561 - stor13, _6078, mem[_7835]
                                                                            if mem[_7835] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6078:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7835] / _6078 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7835] / _6078) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7835] / _6078) - 10000, mem[_7835], _6078
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7835] / _6078) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7835] / _6078) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7835], _6078
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6501] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6561 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6561 - stor13, _6078, _6318
                                                                            if _6318 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6078:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6318 / _6078 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6318 / _6078) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6318 / _6078) - 10000, _6318, _6078
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6318 / _6078) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6318 / _6078) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6318, _6078
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8075 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6561 - stor13, _6078, mem[_8075]
                                                                            if mem[_8075] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6078:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8075] / _6078 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8075] / _6078) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8075] / _6078) - 10000, mem[_8075], _6078
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8075] / _6078) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8075] / _6078) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8075], _6078
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[ceil32(return_data.size) + 128] = 0x2c5fcf800000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 132] = address(stor9)
                        mem[ceil32(return_data.size) + 164] = stor12
                        mem[ceil32(return_data.size) + 196] = 2
                        mem[ceil32(return_data.size) + 228] = this.address
                        require ext_code.size(stor7)
                        call stor7.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor9), stor12, 2, this.address
                        if ext_call.success:
                            require ext_code.size(stor6)
                            call stor6.0x9975b113 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 10^18:
                                emit log(Array(len=22, data='podl less than 1 ether'));
                            else:
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
                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                    require ext_code.size(stor4)
                                    staticcall stor4.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stor13:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - stor13 > 10^18:
                                        require ext_code.size(stor7)
                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < stor14:
                                        revert with 0, 17
                                    if eth.balance(this.address) - stor14 > 10^18:
                                        require ext_code.size(stor5)
                                        call stor5.zapIn(address arg1) with:
                                           value eth.balance(this.address) - stor14 wei
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
                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                    revert with 0, 17
                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                    if not cd[4]:
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                    if not cd[4]:
                                        if ext_call.return_data[0] > 10^18:
                                            require ext_code.size(stor6)
                                            call stor6.0xba560803 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size <= 3:
                                if return_data.size:
                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                else:
                                    mem[ceil32(return_data.size) + 128] = 64
                                    mem[ceil32(return_data.size) + 192] = 14
                                    mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                    mem[ceil32(return_data.size) + 160] = 128
                                    mem[ceil32(return_data.size) + 256] = mem[96]
                                    mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                require ext_code.size(stor6)
                                call stor6.0x9975b113 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 10^18:
                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                else:
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
                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                        require ext_code.size(stor4)
                                        staticcall stor4.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stor13:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - stor13 > 10^18:
                                            require ext_code.size(stor7)
                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < stor14:
                                            revert with 0, 17
                                        if eth.balance(this.address) - stor14 > 10^18:
                                            require ext_code.size(stor5)
                                            call stor5.zapIn(address arg1) with:
                                               value eth.balance(this.address) - stor14 wei
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
                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                        revert with 0, 17
                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                        if not cd[4]:
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                        if not cd[4]:
                                            if ext_call.return_data[0] > 10^18:
                                                require ext_code.size(stor6)
                                                call stor6.0xba560803 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(msg.sender) >> 224 != Error(string arg1):
                                    if return_data.size:
                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                    else:
                                        mem[ceil32(return_data.size) + 128] = 64
                                        mem[ceil32(return_data.size) + 192] = 14
                                        mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                        mem[ceil32(return_data.size) + 160] = 128
                                        mem[ceil32(return_data.size) + 256] = mem[96]
                                        mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                    require ext_code.size(stor6)
                                    call stor6.0x9975b113 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 10^18:
                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                    else:
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
                                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                            require ext_code.size(stor4)
                                            staticcall stor4.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stor13:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - stor13 > 10^18:
                                                require ext_code.size(stor7)
                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < stor14:
                                                revert with 0, 17
                                            if eth.balance(this.address) - stor14 > 10^18:
                                                require ext_code.size(stor5)
                                                call stor5.zapIn(address arg1) with:
                                                   value eth.balance(this.address) - stor14 wei
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
                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                            revert with 0, 17
                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                            if not cd[4]:
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                            if not cd[4]:
                                                if ext_call.return_data[0] > 10^18:
                                                    require ext_code.size(stor6)
                                                    call stor6.0xba560803 with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if return_data.size < 68:
                                        if return_data.size:
                                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                        else:
                                            mem[ceil32(return_data.size) + 128] = 64
                                            mem[ceil32(return_data.size) + 192] = 14
                                            mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                            mem[ceil32(return_data.size) + 160] = 128
                                            mem[ceil32(return_data.size) + 256] = mem[96]
                                            mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) > mem[96]:
                                                mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                            emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                        require ext_code.size(stor6)
                                        call stor6.0x9975b113 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 10^18:
                                            emit log(Array(len=22, data='podl less than 1 ether'));
                                        else:
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
                                            if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stor13:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] - stor13 > 10^18:
                                                    require ext_code.size(stor7)
                                                    call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                         gas gas_remaining wei
                                                        args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < stor14:
                                                    revert with 0, 17
                                                if eth.balance(this.address) - stor14 > 10^18:
                                                    require ext_code.size(stor5)
                                                    call stor5.zapIn(address arg1) with:
                                                       value eth.balance(this.address) - stor14 wei
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
                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                revert with 0, 17
                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                if not cd[4]:
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                if not cd[4]:
                                                    if ext_call.return_data[0] > 10^18:
                                                        require ext_code.size(stor6)
                                                        call stor6.0xba560803 with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[ceil32(return_data.size) + 128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                        if 0, Mask(224, 0, stor9) > test266151307() or 0, Mask(224, 0, stor9) + 36 > return_data.size:
                                            if return_data.size:
                                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                            else:
                                                mem[ceil32(return_data.size) + 128] = 64
                                                mem[ceil32(return_data.size) + 192] = 14
                                                mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                                mem[ceil32(return_data.size) + 160] = 128
                                                mem[ceil32(return_data.size) + 256] = mem[96]
                                                mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) > mem[96]:
                                                    mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                                emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                            require ext_code.size(stor6)
                                            call stor6.0x9975b113 with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < 10^18:
                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                            else:
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
                                                if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < stor13:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] - stor13 > 10^18:
                                                        require ext_code.size(stor7)
                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                             gas gas_remaining wei
                                                            args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < stor14:
                                                        revert with 0, 17
                                                    if eth.balance(this.address) - stor14 > 10^18:
                                                        require ext_code.size(stor5)
                                                        call stor5.zapIn(address arg1) with:
                                                           value eth.balance(this.address) - stor14 wei
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
                                                    emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                    revert with 0, 17
                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                    if not cd[4]:
                                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                    if not cd[4]:
                                                        if ext_call.return_data[0] > 10^18:
                                                            require ext_code.size(stor6)
                                                            call stor6.0xba560803 with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] > test266151307():
                                                if return_data.size:
                                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                                else:
                                                    mem[ceil32(return_data.size) + 128] = 64
                                                    mem[ceil32(return_data.size) + 192] = 14
                                                    mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                                    mem[ceil32(return_data.size) + 160] = 128
                                                    mem[ceil32(return_data.size) + 256] = mem[96]
                                                    mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) > mem[96]:
                                                        mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                                    emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                                require ext_code.size(stor6)
                                                call stor6.0x9975b113 with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 10^18:
                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                else:
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
                                                    if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < stor13:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - stor13 > 10^18:
                                                            require ext_code.size(stor7)
                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                 gas gas_remaining wei
                                                                args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        if eth.balance(this.address) < stor14:
                                                            revert with 0, 17
                                                        if eth.balance(this.address) - stor14 > 10^18:
                                                            require ext_code.size(stor5)
                                                            call stor5.zapIn(address arg1) with:
                                                               value eth.balance(this.address) - stor14 wei
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
                                                        emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                        revert with 0, 17
                                                    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                        if not cd[4]:
                                                            if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                                require ext_code.size(stor6)
                                                                call stor6.0xba560803 with:
                                                                     gas gas_remaining wei
                                                                    args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                        if not cd[4]:
                                                            if ext_call.return_data[0] > 10^18:
                                                                require ext_code.size(stor6)
                                                                call stor6.0xba560803 with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 32 > return_data.size - 4:
                                                    if return_data.size:
                                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', return_data.size, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 64) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
                                                    else:
                                                        mem[ceil32(return_data.size) + 128] = 64
                                                        mem[ceil32(return_data.size) + 192] = 14
                                                        mem[ceil32(return_data.size) + 224] = 'repayETH bytes'
                                                        mem[ceil32(return_data.size) + 160] = 128
                                                        mem[ceil32(return_data.size) + 256] = mem[96]
                                                        mem[ceil32(return_data.size) + 288 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) > mem[96]:
                                                            mem[ceil32(return_data.size) + mem[96] + 288] = 0
                                                        emit 0xcc769924: 64, 128, 14, 'repayETH bytes', mem[96], mem[ceil32(return_data.size) + 288 len ceil32(mem[96])]
                                                    require ext_code.size(stor6)
                                                    call stor6.0x9975b113 with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 10^18:
                                                        emit log(Array(len=22, data='podl less than 1 ether'));
                                                    else:
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
                                                        if ext_call.return_data[0] and stor15 > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * stor15 / 1000:
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < stor13:
                                                                revert with 0, 17
                                                            if ext_call.return_data[0] - stor13 > 10^18:
                                                                require ext_code.size(stor7)
                                                                call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                     gas gas_remaining wei
                                                                    args address(stor9), ext_call.return_data[0] - stor13, this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            if eth.balance(this.address) < stor14:
                                                                revert with 0, 17
                                                            if eth.balance(this.address) - stor14 > 10^18:
                                                                require ext_code.size(stor5)
                                                                call stor5.zapIn(address arg1) with:
                                                                   value eth.balance(this.address) - stor14 wei
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
                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, ext_call.return_data[0] - stor13, ext_call.return_data[0], ext_call.return_data[0]
                                                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 18
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                                                            revert with 0, 17
                                                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000, ext_call.return_data[0], ext_call.return_data[0]
                                                            if not cd[4]:
                                                                if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
                                                            if not cd[4]:
                                                                if ext_call.return_data[0] > 10^18:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0xba560803 with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129 < 128 or ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 0, stor9) + mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128] + 31) + 129
                                                    if ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128:
                                                        _302 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 8
                                                        mem[mem[64] + 96] = 'repayETH'
                                                        mem[mem[64] + 32] = 128
                                                        _365 = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128]
                                                        mem[_302 + 128] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 128]
                                                        mem[_302 + 160 len ceil32(_365)] = mem[ceil32(return_data.size) + 0, Mask(224, 0, stor9) + 160 len ceil32(_365)]
                                                        if ceil32(_365) <= _365:
                                                            emit 0x47e864ce: mem[mem[64] len ceil32(_365) + _302 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5590 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5590] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5968 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6046 = mem[_5968]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6234 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6300 = mem[_6234]
                                                                if mem[_6234] and stor15 > -1 / mem[_6234]:
                                                                    revert with 0, 17
                                                                if _6046 <= mem[_6234] * stor15 / 1000:
                                                                    if mem[_6234] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6046:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6234] / _6046 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6234] / _6046) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6234] / _6046) - 10000, mem[_6234], _6046
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6234] / _6046) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6234] / _6046) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6234], _6046
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6484 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6544 = mem[_6484]
                                                                    if mem[_6484] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6484] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6484] - stor13, _6046, _6300
                                                                            if _6300 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6046:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6300 / _6046 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6300 / _6046) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6300 / _6046) - 10000, _6300, _6046
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6300 / _6046) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6300 / _6046) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6300, _6046
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7760 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6544 - stor13, _6046, mem[_7760]
                                                                            if mem[_7760] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6046:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7760] / _6046 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7760] / _6046) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7760] / _6046) - 10000, mem[_7760], _6046
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7760] / _6046) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7760] / _6046) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7760], _6046
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6484] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6544 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6544 - stor13, _6046, _6300
                                                                            if _6300 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6046:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6300 / _6046 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6300 / _6046) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6300 / _6046) - 10000, _6300, _6046
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6300 / _6046) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6300 / _6046) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6300, _6046
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8033 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6544 - stor13, _6046, mem[_8033]
                                                                            if mem[_8033] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6046:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8033] / _6046 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8033] / _6046) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8033] / _6046) - 10000, mem[_8033], _6046
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8033] / _6046) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8033] / _6046) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8033], _6046
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[_302 + _365 + 160] = 0
                                                            emit 0x47e864ce: mem[mem[64] len ceil32(_365) + _302 + -mem[64] + 160]
                                                            require ext_code.size(stor6)
                                                            call stor6.0x9975b113 with:
                                                                 gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _5623 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_5623] < 10^18:
                                                                emit log(Array(len=22, data='podl less than 1 ether'));
                                                            else:
                                                                require ext_code.size(stor6)
                                                                call stor6.0x26b5e81a with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6009 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6117 = mem[_6009]
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6266 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _6331 = mem[_6266]
                                                                if mem[_6266] and stor15 > -1 / mem[_6266]:
                                                                    revert with 0, 17
                                                                if _6117 <= mem[_6266] * stor15 / 1000:
                                                                    if mem[_6266] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    if not _6117:
                                                                        revert with 0, 18
                                                                    if 10^18 * mem[_6266] / _6117 < 10000:
                                                                        revert with 0, 17
                                                                    if (10^18 * mem[_6266] / _6117) - 10000 <= ext_call.return_data[0]:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6266] / _6117) - 10000, mem[_6266], _6117
                                                                        if not cd[4]:
                                                                            if (10^18 * mem[_6266] / _6117) - 10000 > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ((10^18 * mem[_6266] / _6117) - 10000)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6266], _6117
                                                                        if not cd[4]:
                                                                            if ext_call.return_data[0] > 10^18:
                                                                                require ext_code.size(stor6)
                                                                                call stor6.0xba560803 with:
                                                                                     gas gas_remaining wei
                                                                                    args ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor4)
                                                                    staticcall stor4.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6514 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6574 = mem[_6514]
                                                                    if mem[_6514] < stor13:
                                                                        revert with 0, 17
                                                                    if mem[_6514] - stor13 <= 10^18:
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6514] - stor13, _6117, _6331
                                                                            if _6331 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6117:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6331 / _6117 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6331 / _6117) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6331 / _6117) - 10000, _6331, _6117
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6331 / _6117) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6331 / _6117) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6331, _6117
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _7874 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6574 - stor13, _6117, mem[_7874]
                                                                            if mem[_7874] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6117:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_7874] / _6117 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_7874] / _6117) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7874] / _6117) - 10000, mem[_7874], _6117
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_7874] / _6117) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_7874] / _6117) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7874], _6117
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 36] = mem[_6514] - stor13
                                                                        mem[mem[64] + 68] = this.address
                                                                        require ext_code.size(stor7)
                                                                        call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                             gas gas_remaining wei
                                                                            args address(stor9), _6574 - stor13, this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if eth.balance(this.address) < stor14:
                                                                            revert with 0, 17
                                                                        if eth.balance(this.address) - stor14 <= 10^18:
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6574 - stor13, _6117, _6331
                                                                            if _6331 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6117:
                                                                                revert with 0, 18
                                                                            if 10^18 * _6331 / _6117 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * _6331 / _6117) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6331 / _6117) - 10000, _6331, _6117
                                                                                if not cd[4]:
                                                                                    if (10^18 * _6331 / _6117) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * _6331 / _6117) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6331, _6117
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor5)
                                                                            call stor5.zapIn(address arg1) with:
                                                                               value eth.balance(this.address) - stor14 wei
                                                                                 gas gas_remaining wei
                                                                                args stor3
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _8114 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6574 - stor13, _6117, mem[_8114]
                                                                            if mem[_8114] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                revert with 0, 17
                                                                            if not _6117:
                                                                                revert with 0, 18
                                                                            if 10^18 * mem[_8114] / _6117 < 10000:
                                                                                revert with 0, 17
                                                                            if (10^18 * mem[_8114] / _6117) - 10000 <= ext_call.return_data[0]:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8114] / _6117) - 10000, mem[_8114], _6117
                                                                                if not cd[4]:
                                                                                    if (10^18 * mem[_8114] / _6117) - 10000 > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ((10^18 * mem[_8114] / _6117) - 10000)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8114], _6117
                                                                                if not cd[4]:
                                                                                    if ext_call.return_data[0] > 10^18:
                                                                                        require ext_code.size(stor6)
                                                                                        call stor6.0xba560803 with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not return_data.size:
                                                            _407 = mem[64]
                                                            mem[mem[64]] = 64
                                                            mem[mem[64] + 64] = 14
                                                            mem[mem[64] + 96] = 'repayETH bytes'
                                                            mem[mem[64] + 32] = 128
                                                            mem[_407 + 128] = mem[96]
                                                            mem[_407 + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                            if ceil32(mem[96]) <= mem[96]:
                                                                emit 0xcc769924: mem[mem[64] len ceil32(mem[96]) + _407 + -mem[64] + 160]
                                                                require ext_code.size(stor6)
                                                                call stor6.0x9975b113 with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5591 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_5591] < 10^18:
                                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                                else:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0x26b5e81a with:
                                                                         gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _5970 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6047 = mem[_5970]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6235 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6301 = mem[_6235]
                                                                    if mem[_6235] and stor15 > -1 / mem[_6235]:
                                                                        revert with 0, 17
                                                                    if _6047 <= mem[_6235] * stor15 / 1000:
                                                                        if mem[_6235] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6047:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_6235] / _6047 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_6235] / _6047) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6235] / _6047) - 10000, mem[_6235], _6047
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_6235] / _6047) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_6235] / _6047) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6235], _6047
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor4)
                                                                        staticcall stor4.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _6485 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _6545 = mem[_6485]
                                                                        if mem[_6485] < stor13:
                                                                            revert with 0, 17
                                                                        if mem[_6485] - stor13 <= 10^18:
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6485] - stor13, _6047, _6301
                                                                                if _6301 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6047:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6301 / _6047 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6301 / _6047) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6301 / _6047) - 10000, _6301, _6047
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6301 / _6047) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6301 / _6047) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6301, _6047
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _7765 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6545 - stor13, _6047, mem[_7765]
                                                                                if mem[_7765] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6047:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_7765] / _6047 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_7765] / _6047) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7765] / _6047) - 10000, mem[_7765], _6047
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_7765] / _6047) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_7765] / _6047) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7765], _6047
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[mem[64] + 36] = mem[_6485] - stor13
                                                                            mem[mem[64] + 68] = this.address
                                                                            require ext_code.size(stor7)
                                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                                 gas gas_remaining wei
                                                                                args address(stor9), _6545 - stor13, this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6545 - stor13, _6047, _6301
                                                                                if _6301 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6047:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6301 / _6047 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6301 / _6047) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6301 / _6047) - 10000, _6301, _6047
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6301 / _6047) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6301 / _6047) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6301, _6047
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _8035 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6545 - stor13, _6047, mem[_8035]
                                                                                if mem[_8035] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6047:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_8035] / _6047 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_8035] / _6047) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8035] / _6047) - 10000, mem[_8035], _6047
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_8035] / _6047) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_8035] / _6047) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8035], _6047
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[_407 + mem[96] + 160] = 0
                                                                emit 0xcc769924: mem[mem[64] len ceil32(mem[96]) + _407 + -mem[64] + 160]
                                                                require ext_code.size(stor6)
                                                                call stor6.0x9975b113 with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5624 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_5624] < 10^18:
                                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                                else:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0x26b5e81a with:
                                                                         gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6010 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6120 = mem[_6010]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6267 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6332 = mem[_6267]
                                                                    if mem[_6267] and stor15 > -1 / mem[_6267]:
                                                                        revert with 0, 17
                                                                    if _6120 <= mem[_6267] * stor15 / 1000:
                                                                        if mem[_6267] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6120:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_6267] / _6120 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_6267] / _6120) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6267] / _6120) - 10000, mem[_6267], _6120
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_6267] / _6120) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_6267] / _6120) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6267], _6120
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor4)
                                                                        staticcall stor4.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _6515 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _6575 = mem[_6515]
                                                                        if mem[_6515] < stor13:
                                                                            revert with 0, 17
                                                                        if mem[_6515] - stor13 <= 10^18:
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6515] - stor13, _6120, _6332
                                                                                if _6332 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6120:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6332 / _6120 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6332 / _6120) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6332 / _6120) - 10000, _6332, _6120
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6332 / _6120) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6332 / _6120) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6332, _6120
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _7877 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6575 - stor13, _6120, mem[_7877]
                                                                                if mem[_7877] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6120:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_7877] / _6120 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_7877] / _6120) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7877] / _6120) - 10000, mem[_7877], _6120
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_7877] / _6120) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_7877] / _6120) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7877], _6120
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[mem[64] + 36] = mem[_6515] - stor13
                                                                            mem[mem[64] + 68] = this.address
                                                                            require ext_code.size(stor7)
                                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                                 gas gas_remaining wei
                                                                                args address(stor9), _6575 - stor13, this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6575 - stor13, _6120, _6332
                                                                                if _6332 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6120:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6332 / _6120 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6332 / _6120) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6332 / _6120) - 10000, _6332, _6120
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6332 / _6120) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6332 / _6120) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6332, _6120
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _8117 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6575 - stor13, _6120, mem[_8117]
                                                                                if mem[_8117] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6120:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_8117] / _6120 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_8117] / _6120) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8117] / _6120) - 10000, mem[_8117], _6120
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_8117] / _6120) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_8117] / _6120) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8117], _6120
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _366 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_366] = return_data.size
                                                            mem[_366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            _408 = mem[64]
                                                            mem[mem[64]] = 64
                                                            mem[mem[64] + 64] = 14
                                                            mem[mem[64] + 96] = 'repayETH bytes'
                                                            mem[mem[64] + 32] = 128
                                                            mem[_408 + 128] = return_data.size
                                                            mem[_408 + 160 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_366 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                                            if ceil32(return_data.size) <= return_data.size:
                                                                emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _408 + -mem[64] + 160]
                                                                require ext_code.size(stor6)
                                                                call stor6.0x9975b113 with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5592 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_5592] < 10^18:
                                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                                else:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0x26b5e81a with:
                                                                         gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _5972 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6048 = mem[_5972]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6236 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6302 = mem[_6236]
                                                                    if mem[_6236] and stor15 > -1 / mem[_6236]:
                                                                        revert with 0, 17
                                                                    if _6048 <= mem[_6236] * stor15 / 1000:
                                                                        if mem[_6236] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6048:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_6236] / _6048 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_6236] / _6048) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6236] / _6048) - 10000, mem[_6236], _6048
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_6236] / _6048) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_6236] / _6048) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6236], _6048
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor4)
                                                                        staticcall stor4.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _6486 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _6546 = mem[_6486]
                                                                        if mem[_6486] < stor13:
                                                                            revert with 0, 17
                                                                        if mem[_6486] - stor13 <= 10^18:
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6486] - stor13, _6048, _6302
                                                                                if _6302 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6048:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6302 / _6048 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6302 / _6048) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6302 / _6048) - 10000, _6302, _6048
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6302 / _6048) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6302 / _6048) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6302, _6048
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _7770 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6546 - stor13, _6048, mem[_7770]
                                                                                if mem[_7770] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6048:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_7770] / _6048 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_7770] / _6048) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7770] / _6048) - 10000, mem[_7770], _6048
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_7770] / _6048) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_7770] / _6048) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7770], _6048
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[mem[64] + 36] = mem[_6486] - stor13
                                                                            mem[mem[64] + 68] = this.address
                                                                            require ext_code.size(stor7)
                                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                                 gas gas_remaining wei
                                                                                args address(stor9), _6546 - stor13, this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6546 - stor13, _6048, _6302
                                                                                if _6302 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6048:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6302 / _6048 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6302 / _6048) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6302 / _6048) - 10000, _6302, _6048
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6302 / _6048) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6302 / _6048) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6302, _6048
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _8037 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6546 - stor13, _6048, mem[_8037]
                                                                                if mem[_8037] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6048:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_8037] / _6048 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_8037] / _6048) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8037] / _6048) - 10000, mem[_8037], _6048
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_8037] / _6048) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_8037] / _6048) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8037], _6048
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[_408 + return_data.size + 160] = 0
                                                                emit 0xcc769924: mem[mem[64] len ceil32(return_data.size) + _408 + -mem[64] + 160]
                                                                require ext_code.size(stor6)
                                                                call stor6.0x9975b113 with:
                                                                     gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5625 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_5625] < 10^18:
                                                                    emit log(Array(len=22, data='podl less than 1 ether'));
                                                                else:
                                                                    require ext_code.size(stor6)
                                                                    call stor6.0x26b5e81a with:
                                                                         gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6011 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6123 = mem[_6011]
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6268 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _6333 = mem[_6268]
                                                                    if mem[_6268] and stor15 > -1 / mem[_6268]:
                                                                        revert with 0, 17
                                                                    if _6123 <= mem[_6268] * stor15 / 1000:
                                                                        if mem[_6268] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                            revert with 0, 17
                                                                        if not _6123:
                                                                            revert with 0, 18
                                                                        if 10^18 * mem[_6268] / _6123 < 10000:
                                                                            revert with 0, 17
                                                                        if (10^18 * mem[_6268] / _6123) - 10000 <= ext_call.return_data[0]:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_6268] / _6123) - 10000, mem[_6268], _6123
                                                                            if not cd[4]:
                                                                                if (10^18 * mem[_6268] / _6123) - 10000 > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ((10^18 * mem[_6268] / _6123) - 10000)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_6268], _6123
                                                                            if not cd[4]:
                                                                                if ext_call.return_data[0] > 10^18:
                                                                                    require ext_code.size(stor6)
                                                                                    call stor6.0xba560803 with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor4)
                                                                        staticcall stor4.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _6516 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _6576 = mem[_6516]
                                                                        if mem[_6516] < stor13:
                                                                            revert with 0, 17
                                                                        if mem[_6516] - stor13 <= 10^18:
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, mem[_6516] - stor13, _6123, _6333
                                                                                if _6333 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6123:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6333 / _6123 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6333 / _6123) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6333 / _6123) - 10000, _6333, _6123
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6333 / _6123) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6333 / _6123) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6333, _6123
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _7880 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6576 - stor13, _6123, mem[_7880]
                                                                                if mem[_7880] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6123:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_7880] / _6123 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_7880] / _6123) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_7880] / _6123) - 10000, mem[_7880], _6123
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_7880] / _6123) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_7880] / _6123) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_7880], _6123
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[mem[64] + 36] = mem[_6516] - stor13
                                                                            mem[mem[64] + 68] = this.address
                                                                            require ext_code.size(stor7)
                                                                            call stor7.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                                                                 gas gas_remaining wei
                                                                                args address(stor9), _6576 - stor13, this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if eth.balance(this.address) < stor14:
                                                                                revert with 0, 17
                                                                            if eth.balance(this.address) - stor14 <= 10^18:
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6576 - stor13, _6123, _6333
                                                                                if _6333 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6123:
                                                                                    revert with 0, 18
                                                                                if 10^18 * _6333 / _6123 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * _6333 / _6123) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * _6333 / _6123) - 10000, _6333, _6123
                                                                                    if not cd[4]:
                                                                                        if (10^18 * _6333 / _6123) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * _6333 / _6123) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], _6333, _6123
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor5)
                                                                                call stor5.zapIn(address arg1) with:
                                                                                   value eth.balance(this.address) - stor14 wei
                                                                                     gas gas_remaining wei
                                                                                    args stor3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _8120 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                emit 0xfbb6d94a: eth.balance(this.address) - stor14, _6576 - stor13, _6123, mem[_8120]
                                                                                if mem[_8120] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                    revert with 0, 17
                                                                                if not _6123:
                                                                                    revert with 0, 18
                                                                                if 10^18 * mem[_8120] / _6123 < 10000:
                                                                                    revert with 0, 17
                                                                                if (10^18 * mem[_8120] / _6123) - 10000 <= ext_call.return_data[0]:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], (10^18 * mem[_8120] / _6123) - 10000, mem[_8120], _6123
                                                                                    if not cd[4]:
                                                                                        if (10^18 * mem[_8120] / _6123) - 10000 > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((10^18 * mem[_8120] / _6123) - 10000)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    emit 0xdebf0e6f: ext_call.return_data[0], ext_call.return_data[0], mem[_8120], _6123
                                                                                    if not cd[4]:
                                                                                        if ext_call.return_data[0] > 10^18:
                                                                                            require ext_code.size(stor6)
                                                                                            call stor6.0xba560803 with:
                                                                                                 gas gas_remaining wei
                                                                                                args ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
}



}
