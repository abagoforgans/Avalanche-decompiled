contract main {




// =====================  Runtime code  =====================


#
#  - sub_1445da02(?)
#  - getTeamId(uint256 arg1)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function settleGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x312d7bbc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3dc8d5ce(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x3dc8d5ce with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e75bfd6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), owner, arg1
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

function sub_52c421c5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'BOT: invalid caller'
    call address(arg2) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf034493(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0xcf034493 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x15c069c0: ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_168):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor1 = arg1
        stor2 = arg2
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor1 = arg1
            stor2 = arg2
        else:
            uint16(stor0.field_160) = 257
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor1 = arg1
            stor2 = arg2
            uint8(stor0.field_168) = 0
}

function sub_5d08a54e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(stor1)
    call stor1.deposit(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ed0d28da(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(stor1)
    call stor1.withdraw(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_be6b6e1f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor1)
        staticcall stor1.0x969215ba with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_25] == mem[_25 + 12 len 20]
        require mem[_25 + 128] == mem[_25 + 158 len 2]
        require mem[_25 + 160] == mem[_25 + 190 len 2]
        _32 = mem[_25 + 192]
        require mem[_25 + 224] == mem[_25 + 240 len 16]
        if 0 == mem[_25 + 192]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if mem[_25 + 158 len 2] >= cd[68]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(stor1)
        staticcall stor1.0xab0c8f8d with:
                gas gas_remaining wei
               args mem[_25 + 192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_36] == mem[_36 + 30 len 2]
        require mem[_36 + 32] == mem[_36 + 62 len 2]
        if mem[_36 + 30 len 2]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(stor1)
        call stor1.attack(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args _32, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3add227a: _32, cd[((32 * idx) + cd[4] + 36)], cd[36]
}

function sub_f0d94f33(?) {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
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
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 68).length) + 129
    idx = 0
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] > !cd[36]:
        revert with 0, 17
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = cd[4]
        while idx <= cd[4] + cd[36]:
            _916 = mem[64]
            mem[mem[64] + 36] = idx
            _918 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_918 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_918 + 36 len 28]
            _924 = mem[_918]
            s = 0
            while s < _924:
                mem[s + _916 + 68] = mem[s + _918 + 32]
                s = s + 32
                continue 
            if ceil32(_924) <= _924:
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _924 + _916 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1234 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1298] == mem[_1298 + 30 len 2]
                    require mem[_1298 + 32] == mem[_1298 + 62 len 2]
                    if not mem[_1298 + 30 len 2]:
                        _1506 = mem[96]
                        s = 0
                        while s < _1506:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1538 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1554 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1234
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1578 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1578] == mem[_1578 + 12 len 20]
                                require mem[_1578 + 128] == mem[_1578 + 158 len 2]
                                require mem[_1578 + 160] == mem[_1578 + 190 len 2]
                                _1634 = mem[_1578 + 192]
                                require mem[_1578 + 224] == mem[_1578 + 240 len 16]
                                if mem[_1578 + 192] != 0:
                                    if mem[_1578 + 158 len 2] < _1554:
                                        mem[mem[64] + 4] = mem[_1578 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1538
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1634
                                        mem[mem[64] + 32] = _1234
                                        mem[mem[64] + 64] = _1538
                                        emit 0x3add227a: _1634, _1234, _1538
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1506 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1222] = return_data.size
                    mem[_1222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1235 = mem[_1222 + 32]
                    require mem[_1222 + 64] == mem[_1222 + 80 len 16]
                    require mem[_1222 + 96] == mem[_1222 + 112 len 16]
                    require mem[_1222 + 128] == mem[_1222 + 156 len 4]
                    require mem[_1222 + 160] == mem[_1222 + 188 len 4]
                    require mem[_1222 + 192] == mem[_1222 + 220 len 4]
                    if not mem[_1222 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1299] == mem[_1299 + 30 len 2]
                    require mem[_1299 + 32] == mem[_1299 + 62 len 2]
                    if not mem[_1299 + 30 len 2]:
                        _1507 = mem[96]
                        s = 0
                        while s < _1507:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1540 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1555 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1235
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1579] == mem[_1579 + 12 len 20]
                                require mem[_1579 + 128] == mem[_1579 + 158 len 2]
                                require mem[_1579 + 160] == mem[_1579 + 190 len 2]
                                _1635 = mem[_1579 + 192]
                                require mem[_1579 + 224] == mem[_1579 + 240 len 16]
                                if mem[_1579 + 192] != 0:
                                    if mem[_1579 + 158 len 2] < _1555:
                                        mem[mem[64] + 4] = mem[_1579 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1540
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1635
                                        mem[mem[64] + 32] = _1235
                                        mem[mem[64] + 64] = _1540
                                        emit 0x3add227a: _1635, _1235, _1540
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1507 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[_924 + _916 + 68] = 0
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _924 + _916 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1236 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1300] == mem[_1300 + 30 len 2]
                    require mem[_1300 + 32] == mem[_1300 + 62 len 2]
                    if not mem[_1300 + 30 len 2]:
                        _1508 = mem[96]
                        s = 0
                        while s < _1508:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1542 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1556 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1236
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1580 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1580] == mem[_1580 + 12 len 20]
                                require mem[_1580 + 128] == mem[_1580 + 158 len 2]
                                require mem[_1580 + 160] == mem[_1580 + 190 len 2]
                                _1636 = mem[_1580 + 192]
                                require mem[_1580 + 224] == mem[_1580 + 240 len 16]
                                if mem[_1580 + 192] != 0:
                                    if mem[_1580 + 158 len 2] < _1556:
                                        mem[mem[64] + 4] = mem[_1580 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1542
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1636
                                        mem[mem[64] + 32] = _1236
                                        mem[mem[64] + 64] = _1542
                                        emit 0x3add227a: _1636, _1236, _1542
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1508 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1223] = return_data.size
                    mem[_1223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1237 = mem[_1223 + 32]
                    require mem[_1223 + 64] == mem[_1223 + 80 len 16]
                    require mem[_1223 + 96] == mem[_1223 + 112 len 16]
                    require mem[_1223 + 128] == mem[_1223 + 156 len 4]
                    require mem[_1223 + 160] == mem[_1223 + 188 len 4]
                    require mem[_1223 + 192] == mem[_1223 + 220 len 4]
                    if not mem[_1223 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1301] == mem[_1301 + 30 len 2]
                    require mem[_1301 + 32] == mem[_1301 + 62 len 2]
                    if not mem[_1301 + 30 len 2]:
                        _1509 = mem[96]
                        s = 0
                        while s < _1509:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1544 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1557 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1237
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1581] == mem[_1581 + 12 len 20]
                                require mem[_1581 + 128] == mem[_1581 + 158 len 2]
                                require mem[_1581 + 160] == mem[_1581 + 190 len 2]
                                _1637 = mem[_1581 + 192]
                                require mem[_1581 + 224] == mem[_1581 + 240 len 16]
                                if mem[_1581 + 192] != 0:
                                    if mem[_1581 + 158 len 2] < _1557:
                                        mem[mem[64] + 4] = mem[_1581 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1544
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1637
                                        mem[mem[64] + 32] = _1237
                                        mem[mem[64] + 64] = _1544
                                        emit 0x3add227a: _1637, _1237, _1544
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1509 = mem[96]
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = cd[4]
        while idx <= cd[4] + cd[36]:
            _917 = mem[64]
            mem[mem[64] + 36] = idx
            _921 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_921 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_921 + 36 len 28]
            _925 = mem[_921]
            s = 0
            while s < _925:
                mem[s + _917 + 68] = mem[s + _921 + 32]
                s = s + 32
                continue 
            if ceil32(_925) <= _925:
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _925 + _917 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1238 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1302] == mem[_1302 + 30 len 2]
                    require mem[_1302 + 32] == mem[_1302 + 62 len 2]
                    if not mem[_1302 + 30 len 2]:
                        _1510 = mem[96]
                        s = 0
                        while s < _1510:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1546 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1558 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1238
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1582 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1582] == mem[_1582 + 12 len 20]
                                require mem[_1582 + 128] == mem[_1582 + 158 len 2]
                                require mem[_1582 + 160] == mem[_1582 + 190 len 2]
                                _1638 = mem[_1582 + 192]
                                require mem[_1582 + 224] == mem[_1582 + 240 len 16]
                                if mem[_1582 + 192] != 0:
                                    if mem[_1582 + 158 len 2] < _1558:
                                        mem[mem[64] + 4] = mem[_1582 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1546
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1638
                                        mem[mem[64] + 32] = _1238
                                        mem[mem[64] + 64] = _1546
                                        emit 0x3add227a: _1638, _1238, _1546
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1510 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1224] = return_data.size
                    mem[_1224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1239 = mem[_1224 + 32]
                    require mem[_1224 + 64] == mem[_1224 + 80 len 16]
                    require mem[_1224 + 96] == mem[_1224 + 112 len 16]
                    require mem[_1224 + 128] == mem[_1224 + 156 len 4]
                    require mem[_1224 + 160] == mem[_1224 + 188 len 4]
                    require mem[_1224 + 192] == mem[_1224 + 220 len 4]
                    if not mem[_1224 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1303] == mem[_1303 + 30 len 2]
                    require mem[_1303 + 32] == mem[_1303 + 62 len 2]
                    if not mem[_1303 + 30 len 2]:
                        _1511 = mem[96]
                        s = 0
                        while s < _1511:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1548 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1559 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1239
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1583 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1583] == mem[_1583 + 12 len 20]
                                require mem[_1583 + 128] == mem[_1583 + 158 len 2]
                                require mem[_1583 + 160] == mem[_1583 + 190 len 2]
                                _1639 = mem[_1583 + 192]
                                require mem[_1583 + 224] == mem[_1583 + 240 len 16]
                                if mem[_1583 + 192] != 0:
                                    if mem[_1583 + 158 len 2] < _1559:
                                        mem[mem[64] + 4] = mem[_1583 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1548
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1639
                                        mem[mem[64] + 32] = _1239
                                        mem[mem[64] + 64] = _1548
                                        emit 0x3add227a: _1639, _1239, _1548
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1511 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[_925 + _917 + 68] = 0
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _925 + _917 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1240 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1304] == mem[_1304 + 30 len 2]
                    require mem[_1304 + 32] == mem[_1304 + 62 len 2]
                    if not mem[_1304 + 30 len 2]:
                        _1512 = mem[96]
                        s = 0
                        while s < _1512:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1550 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1560 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1240
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1584] == mem[_1584 + 12 len 20]
                                require mem[_1584 + 128] == mem[_1584 + 158 len 2]
                                require mem[_1584 + 160] == mem[_1584 + 190 len 2]
                                _1640 = mem[_1584 + 192]
                                require mem[_1584 + 224] == mem[_1584 + 240 len 16]
                                if mem[_1584 + 192] != 0:
                                    if mem[_1584 + 158 len 2] < _1560:
                                        mem[mem[64] + 4] = mem[_1584 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1550
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1640
                                        mem[mem[64] + 32] = _1240
                                        mem[mem[64] + 64] = _1550
                                        emit 0x3add227a: _1640, _1240, _1550
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1512 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1225] = return_data.size
                    mem[_1225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1241 = mem[_1225 + 32]
                    require mem[_1225 + 64] == mem[_1225 + 80 len 16]
                    require mem[_1225 + 96] == mem[_1225 + 112 len 16]
                    require mem[_1225 + 128] == mem[_1225 + 156 len 4]
                    require mem[_1225 + 160] == mem[_1225 + 188 len 4]
                    require mem[_1225 + 192] == mem[_1225 + 220 len 4]
                    if not mem[_1225 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1305] == mem[_1305 + 30 len 2]
                    require mem[_1305 + 32] == mem[_1305 + 62 len 2]
                    if not mem[_1305 + 30 len 2]:
                        _1513 = mem[96]
                        s = 0
                        while s < _1513:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _1552 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _1561 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1241
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_1585] == mem[_1585 + 12 len 20]
                                require mem[_1585 + 128] == mem[_1585 + 158 len 2]
                                require mem[_1585 + 160] == mem[_1585 + 190 len 2]
                                _1641 = mem[_1585 + 192]
                                require mem[_1585 + 224] == mem[_1585 + 240 len 16]
                                if mem[_1585 + 192] != 0:
                                    if mem[_1585 + 158 len 2] < _1561:
                                        mem[mem[64] + 4] = mem[_1585 + 192]
                                        require ext_code.size(stor1)
                                        call stor1.attack(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1552
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = _1641
                                        mem[mem[64] + 32] = _1241
                                        mem[mem[64] + 64] = _1552
                                        emit 0x3add227a: _1641, _1241, _1552
                                        if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                            revert with 0, 50
                                        mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                        if not ('cd', 68).length:
                                            revert with 0, 17
                                        if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _1513 = mem[96]
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
