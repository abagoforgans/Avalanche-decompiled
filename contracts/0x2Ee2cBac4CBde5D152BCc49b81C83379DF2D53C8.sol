contract main {




// =====================  Runtime code  =====================


#
#  - sub_1445da02(?)
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
            require ext_code.size(stor1)
            staticcall stor1.0xf0344e36 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _244 = mem[_242]
            require mem[_242 + 32] == mem[_242 + 48 len 16]
            require mem[_242 + 64] == mem[_242 + 80 len 16]
            require mem[_242 + 96] == mem[_242 + 124 len 4]
            require mem[_242 + 128] == mem[_242 + 156 len 4]
            require mem[_242 + 160] == mem[_242 + 188 len 4]
            if 0 == mem[_242]:
            require ext_code.size(stor1)
            staticcall stor1.0xab0c8f8d with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_260] == mem[_260 + 30 len 2]
            require mem[_260 + 32] == mem[_260 + 62 len 2]
            if not mem[_260 + 30 len 2]:
                _312 = mem[96]
                s = 0
                while s < _312:
                    if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                        revert with 0, 50
                    if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                        if s >= mem[96]:
                            revert with 0, 50
                        _320 = mem[(32 * s) + 128]
                        if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        _324 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                        require ext_code.size(stor1)
                        staticcall stor1.0x969215ba with:
                                gas gas_remaining wei
                               args _244
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_330] == mem[_330 + 12 len 20]
                        require mem[_330 + 128] == mem[_330 + 158 len 2]
                        require mem[_330 + 160] == mem[_330 + 190 len 2]
                        _344 = mem[_330 + 192]
                        require mem[_330 + 224] == mem[_330 + 240 len 16]
                        if mem[_330 + 192] != 0:
                            if mem[_330 + 158 len 2] < _324:
                                mem[mem[64] + 4] = mem[_330 + 192]
                                require ext_code.size(stor1)
                                call stor1.attack(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _320
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _344
                                mem[mem[64] + 32] = _244
                                mem[mem[64] + 64] = _320
                                emit 0x3add227a: _344, _244, _320
                                if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                if not ('cd', 68).length:
                                    revert with 0, 17
                                if not ('cd', 68).length - 1:
                    if s == -1:
                        revert with 0, 17
                    _312 = mem[96]
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
            require ext_code.size(stor1)
            staticcall stor1.0xf0344e36 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _245 = mem[_243]
            require mem[_243 + 32] == mem[_243 + 48 len 16]
            require mem[_243 + 64] == mem[_243 + 80 len 16]
            require mem[_243 + 96] == mem[_243 + 124 len 4]
            require mem[_243 + 128] == mem[_243 + 156 len 4]
            require mem[_243 + 160] == mem[_243 + 188 len 4]
            if 0 == mem[_243]:
            require ext_code.size(stor1)
            staticcall stor1.0xab0c8f8d with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_261] == mem[_261 + 30 len 2]
            require mem[_261 + 32] == mem[_261 + 62 len 2]
            if not mem[_261 + 30 len 2]:
                _313 = mem[96]
                s = 0
                while s < _313:
                    if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                        revert with 0, 50
                    if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                        if s >= mem[96]:
                            revert with 0, 50
                        _322 = mem[(32 * s) + 128]
                        if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        _325 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                        require ext_code.size(stor1)
                        staticcall stor1.0x969215ba with:
                                gas gas_remaining wei
                               args _245
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_331] == mem[_331 + 12 len 20]
                        require mem[_331 + 128] == mem[_331 + 158 len 2]
                        require mem[_331 + 160] == mem[_331 + 190 len 2]
                        _345 = mem[_331 + 192]
                        require mem[_331 + 224] == mem[_331 + 240 len 16]
                        if mem[_331 + 192] != 0:
                            if mem[_331 + 158 len 2] < _325:
                                mem[mem[64] + 4] = mem[_331 + 192]
                                require ext_code.size(stor1)
                                call stor1.attack(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _322
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _345
                                mem[mem[64] + 32] = _245
                                mem[mem[64] + 64] = _322
                                emit 0x3add227a: _345, _245, _322
                                if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                if not ('cd', 68).length:
                                    revert with 0, 17
                                if not ('cd', 68).length - 1:
                    if s == -1:
                        revert with 0, 17
                    _313 = mem[96]
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
