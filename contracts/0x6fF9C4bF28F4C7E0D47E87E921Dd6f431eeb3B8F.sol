contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
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
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor6)
    call stor6.0x9975b113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9bd7b8cc: ext_call.return_data[0], stor10
    if ext_call.return_data[0] < 10^18:
        if ext_call.return_data[0] > stor10:
            emit log(Array(len=5, data='magic'));
            require ext_code.size(stor1)
            call stor1.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor9, stor11, 2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor1)
            call stor1.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args stor9, stor12, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                    args stor9, ext_call.return_data[0] - stor13, this.address
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
                mem[ceil32(32 * ('cd', 36).length) + 129] = 2
                mem[64] = ceil32(32 * ('cd', 36).length) + 225
                mem[ceil32(32 * ('cd', 36).length) + 161] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
                mem[ceil32(32 * ('cd', 36).length) + 193] = 0xac3f978714c613e768272c502a8912bc03dcf624
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _451 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_451))
                    staticcall address(_451).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _469 = mem[_462]
                    if mem[_462]:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _474 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _469
                        require ext_code.size(address(_474))
                        call address(_474).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _469
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_483] == bool(mem[_483])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _489 = mem[ceil32(32 * ('cd', 36).length) + 129]
                idx = 0
                while idx < _489:
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    _494 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_494))
                    staticcall address(_494).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _502 = mem[_501]
                    if mem[_501]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                            revert with 0, 50
                        _504 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _502
                        require ext_code.size(address(_504))
                        call address(_504).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _502
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_507] == bool(mem[_507])
                    if idx == -1:
                        revert with 0, 17
                    _489 = mem[ceil32(32 * ('cd', 36).length) + 129]
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
                        _447 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_447))
                        staticcall address(_447).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _463 = mem[_457]
                        if mem[_457]:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _473 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _463
                            require ext_code.size(address(_473))
                            call address(_473).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _463
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _484 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_484] == bool(mem[_484])
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
            if not stor0[msg.sender]:
                revert with 0, 'Only I can do this.'
            require ext_code.size(stor6)
            call stor6.0x9975b113 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x9bd7b8cc: ext_call.return_data[0], stor10
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] > stor10:
                    emit log(Array(len=5, data='magic'));
                    require ext_code.size(stor1)
                    call stor1.borrowETH(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args stor9, stor11, 2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    call stor1.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args stor9, stor12, 2, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                            args stor9, ext_call.return_data[0] - stor13, this.address
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
}



}
