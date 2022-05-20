contract main {




// =====================  Runtime code  =====================


#
#  - sub_3419ba23(?)
#  - withdrawAllTo(address arg1, address arg2)
#  - withdrawTo(address arg1, uint256 arg2, address arg3)
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, uint256 arg2)
#  - withdrawAll(address arg1)
#
address owner;
mapping of uint8 stor1;
address stor2;

function owner() {
    return owner
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function addExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(1, arg1);
    stor1[address(arg1)] = 1
}

function removeExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(0, arg1);
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function sub_077d97d7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _58 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_58] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_58 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_58 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _58
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _75 = mem[96]
    idx = 0
    while idx < _75:
        require idx < mem[96]
        _77 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _79 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _81 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        _82 = mem[64]
        _83 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        s = 0
        while s < _83:
            mem[_82 + s] = mem[_81 + s + 32]
            _75 = mem[96]
            s = s + 32
            continue 
        if ceil32(_83) <= _83:
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _82 + _83 + -mem[64] - 4]
            if return_data.size:
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_91] = return_data.size
                mem[_91 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_82 + _83] = 0
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _82 + _83 + -mem[64] - 4]
            if return_data.size:
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_93] = return_data.size
                mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _75 = mem[96]
        idx = idx + 1
        continue 
}

function sub_aac54e66(?) {
    require calldata.size - 4 >= 320
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 192 <= test266151307() and (32 * ('cd', 100).length) + 192 >= 160
    mem[64] = (32 * ('cd', 100).length) + 192
    mem[160] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 192
    while idx < ('cd', 100).length:
        require cd[100] + cd[s] + 67 < calldata.size
        _10 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        u = 0
        v = cd[100] + cd[s] + 36
        w = _10
        while u < 2:
            require cd[100] + cd[s] + cd[v] + 67 < calldata.size
            require cd[(cd[100] + cd[s] + cd[v] + 36)] <= test266151307()
            _15 = mem[64]
            require mem[64] + (32 * cd[(cd[100] + cd[s] + cd[v] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[100] + cd[s] + cd[v] + 36)]) + 32 >= mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[100] + cd[s] + cd[v] + 36)]) + 32
            mem[_15] = cd[(cd[100] + cd[s] + cd[v] + 36)]
            require cd[100] + cd[s] + cd[v] + (32 * cd[(cd[100] + cd[s] + cd[v] + 36)]) + 68 <= calldata.size
            t = 0
            x = cd[100] + cd[s] + cd[v] + 68
            y = _15 + 32
            while t < cd[(cd[100] + cd[s] + cd[v] + 36)]:
                require cd[x] == address(cd[x])
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _15
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _10
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    _11 = mem[64]
    require mem[64] + (32 * ('cd', 132).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 132).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_11] = ('cd', 132).length
    require cd[132] + (64 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _11 + 32
    while idx < ('cd', 132).length:
        require s + 31 < calldata.size
        _17 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require s + 64 <= calldata.size
        u = 0
        v = s
        w = _17
        while u < 2:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _17
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require 195 < calldata.size
    _18 = mem[64]
    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
    mem[64] = mem[64] + 64
    require 228 <= calldata.size
    idx = 0
    s = 164
    t = _18
    while idx < 2:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 259 < calldata.size
    _19 = mem[64]
    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
    mem[64] = mem[64] + 64
    require 292 <= calldata.size
    idx = 0
    s = 228
    t = _19
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[292] == bool(cd[292])
    if owner == msg.sender:
        mem[mem[64]] = 0x372500ab00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x372500ab with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _28 = mem[_26]
        require mem[_26] <= test266151307()
        require _26 + mem[_26] + 31 < _26 + return_data.size
        _31 = mem[_26 + mem[_26]]
        require mem[_26 + mem[_26]] <= test266151307()
        require _26 + ceil32(return_data.size) + (32 * mem[_26 + mem[_26]]) + 32 <= test266151307() and (32 * mem[_26 + mem[_26]]) + 32 >= 0
        mem[64] = _26 + ceil32(return_data.size) + (32 * mem[_26 + mem[_26]]) + 32
        mem[_26 + ceil32(return_data.size)] = _31
        require _28 + (32 * _31) + 32 <= return_data.size
        idx = 0
        s = _26 + _28 + 32
        t = _26 + ceil32(return_data.size) + 32
        while idx < _31:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _367 = mem[_26 + 32]
        require mem[_26 + 32] <= test266151307()
        require _26 + mem[_26 + 32] + 31 < _26 + return_data.size
        _371 = mem[_26 + mem[_26 + 32]]
        require mem[_26 + mem[_26 + 32]] <= test266151307()
        _373 = mem[64]
        require mem[64] + (32 * mem[_26 + mem[_26 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_26 + mem[_26 + 32]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_26 + mem[_26 + 32]]) + 32
        mem[_373] = _371
        require _367 + (32 * _371) + 32 <= return_data.size
        idx = 0
        s = _26 + _367 + 32
        t = _373 + 32
        while idx < _371:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1027 = mem[_26 + ceil32(return_data.size)]
        idx = 0
        while idx < _1027:
            require idx < mem[_26 + ceil32(return_data.size)]
            _1031 = mem[(32 * idx) + _26 + ceil32(return_data.size) + 32]
            require idx < mem[_373]
            _1035 = mem[(32 * idx) + _373 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1035
            require ext_code.size(address(_1031))
            call address(_1031).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[4]), address(this.address), _1035
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1105] == bool(mem[_1105])
            _1027 = mem[_26 + ceil32(return_data.size)]
            idx = idx + 1
            continue 
        _1351 = mem[160]
        idx = 0
        s = 0
        t = 0
        while idx < _1351:
            require idx < mem[_373]
            _1355 = mem[(32 * idx) + _373 + 32]
            require idx < mem[160]
            _1366 = mem[mem[(32 * idx) + 192]]
            require idx < mem[_11]
            _1373 = mem[mem[(32 * idx) + _11 + 32]]
            if mem[mem[mem[(32 * idx) + 192]]] <= 0:
                require idx < mem[160]
                _1388 = mem[mem[(32 * idx) + 192] + 32]
                require idx < mem[_11]
                _1397 = mem[mem[(32 * idx) + _11 + 32] + 32]
                if mem[mem[mem[(32 * idx) + 192] + 32]] <= 0:
                    require idx < mem[_26 + ceil32(return_data.size)]
                    require idx < mem[_373]
                    _1409 = mem[(32 * idx) + _373 + 32]
                    mem[mem[64]] = mem[(32 * idx) + _26 + ceil32(return_data.size) + 44 len 20]
                    mem[mem[64] + 32] = _1409
                    mem[mem[64] + 64] = _1355 / 2
                    mem[mem[64] + 96] = _1355 / 2
                    emit 0xd25759d8: mem[mem[64]], _1409, Mask(255, 1, _1355), _1355 / 2, address(cd[4])
                    _1351 = mem[160]
                    idx = idx + 1
                    s = s + (_1355 / 2)
                    t = t + (_1355 / 2)
                    continue 
                _1401 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1355 / 2
                mem[mem[64] + 36] = _1397
                mem[mem[64] + 68] = 160
                _1421 = mem[_1388]
                mem[mem[64] + 164] = mem[_1388]
                u = 0
                v = _1388 + 32
                w = mem[64] + 196
                while u < _1421:
                    mem[w] = mem[v + 12 len 20]
                    _1351 = mem[160]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1401 + 100] = this.address
                mem[_1401 + 132] = block.timestamp + 300
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1401 + (32 * _1421) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1688 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1693 = mem[_1688]
                require mem[_1688] <= test266151307()
                require _1688 + mem[_1688] + 31 < _1688 + return_data.size
                _1699 = mem[_1688 + mem[_1688]]
                require mem[_1688 + mem[_1688]] <= test266151307()
                require _1688 + ceil32(return_data.size) + (32 * mem[_1688 + mem[_1688]]) + 32 <= test266151307() and (32 * mem[_1688 + mem[_1688]]) + 32 >= 0
                mem[64] = _1688 + ceil32(return_data.size) + (32 * mem[_1688 + mem[_1688]]) + 32
                mem[_1688 + ceil32(return_data.size)] = _1699
                require _1693 + (32 * _1699) + 32 <= return_data.size
                u = 0
                v = _1688 + _1693 + 32
                w = _1688 + ceil32(return_data.size) + 32
                while u < _1699:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    _1351 = mem[160]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require _1699 - 1 < _1699
                _3849 = mem[(32 * _1699 - 1) + _1688 + ceil32(return_data.size) + 32]
                require idx < mem[_26 + ceil32(return_data.size)]
                require idx < mem[_373]
                _3879 = mem[(32 * idx) + _373 + 32]
                mem[mem[64]] = mem[(32 * idx) + _26 + ceil32(return_data.size) + 44 len 20]
                mem[mem[64] + 32] = _3879
                mem[mem[64] + 64] = _1355 / 2
                mem[mem[64] + 96] = _3849
                emit 0xd25759d8: mem[mem[64]], _3879, Mask(255, 1, _1355), _3849, address(cd[4])
                _1351 = mem[160]
                idx = idx + 1
                s = s + _3849
                t = t + (_1355 / 2)
                continue 
            _1378 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1355 / 2
            mem[mem[64] + 36] = _1373
            mem[mem[64] + 68] = 160
            _1413 = mem[_1366]
            mem[mem[64] + 164] = mem[_1366]
            u = 0
            v = _1366 + 32
            w = mem[64] + 196
            while u < _1413:
                mem[w] = mem[v + 12 len 20]
                _1351 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_1378 + 100] = this.address
            mem[_1378 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1378 + (32 * _1413) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1689 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1694 = mem[_1689]
            require mem[_1689] <= test266151307()
            require _1689 + mem[_1689] + 31 < _1689 + return_data.size
            _1700 = mem[_1689 + mem[_1689]]
            require mem[_1689 + mem[_1689]] <= test266151307()
            require _1689 + ceil32(return_data.size) + (32 * mem[_1689 + mem[_1689]]) + 32 <= test266151307() and (32 * mem[_1689 + mem[_1689]]) + 32 >= 0
            mem[64] = _1689 + ceil32(return_data.size) + (32 * mem[_1689 + mem[_1689]]) + 32
            mem[_1689 + ceil32(return_data.size)] = _1700
            require _1694 + (32 * _1700) + 32 <= return_data.size
            u = 0
            v = _1689 + _1694 + 32
            w = _1689 + ceil32(return_data.size) + 32
            while u < _1700:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                _1351 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _1700 - 1 < _1700
            _3850 = mem[(32 * _1700 - 1) + _1689 + ceil32(return_data.size) + 32]
            require idx < mem[160]
            _3881 = mem[mem[(32 * idx) + 192] + 32]
            require idx < mem[_11]
            _3909 = mem[mem[(32 * idx) + _11 + 32] + 32]
            if mem[mem[mem[(32 * idx) + 192] + 32]] <= 0:
                require idx < mem[_26 + ceil32(return_data.size)]
                require idx < mem[_373]
                _3993 = mem[(32 * idx) + _373 + 32]
                mem[mem[64]] = mem[(32 * idx) + _26 + ceil32(return_data.size) + 44 len 20]
                mem[mem[64] + 32] = _3993
                mem[mem[64] + 64] = _3850
                mem[mem[64] + 96] = _1355 / 2
                emit 0xd25759d8: mem[mem[64]], _3993, _3850, _1355 / 2, address(cd[4])
                _1351 = mem[160]
                idx = idx + 1
                s = s + (_1355 / 2)
                t = t + _3850
                continue 
            _3941 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1355 / 2
            mem[mem[64] + 36] = _3909
            mem[mem[64] + 68] = 160
            _4041 = mem[_3881]
            mem[mem[64] + 164] = mem[_3881]
            u = 0
            v = _3881 + 32
            w = mem[64] + 196
            while u < _4041:
                mem[w] = mem[v + 12 len 20]
                _1351 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_3941 + 100] = this.address
            mem[_3941 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3941 + (32 * _4041) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6523 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6621 = mem[_6523]
            require mem[_6523] <= test266151307()
            require _6523 + mem[_6523] + 31 < _6523 + return_data.size
            _6623 = mem[_6523 + mem[_6523]]
            require mem[_6523 + mem[_6523]] <= test266151307()
            require _6523 + ceil32(return_data.size) + (32 * mem[_6523 + mem[_6523]]) + 32 <= test266151307() and (32 * mem[_6523 + mem[_6523]]) + 32 >= 0
            mem[64] = _6523 + ceil32(return_data.size) + (32 * mem[_6523 + mem[_6523]]) + 32
            mem[_6523 + ceil32(return_data.size)] = _6623
            require _6621 + (32 * _6623) + 32 <= return_data.size
            u = 0
            v = _6523 + _6621 + 32
            w = _6523 + ceil32(return_data.size) + 32
            while u < _6623:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                _1351 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _6623 - 1 < _6623
            _7677 = mem[(32 * _6623 - 1) + _6523 + ceil32(return_data.size) + 32]
            require idx < mem[_26 + ceil32(return_data.size)]
            require idx < mem[_373]
            _7781 = mem[(32 * idx) + _373 + 32]
            mem[mem[64]] = mem[(32 * idx) + _26 + ceil32(return_data.size) + 44 len 20]
            mem[mem[64] + 32] = _7781
            mem[mem[64] + 64] = _3850
            mem[mem[64] + 96] = _7677
            emit 0xd25759d8: mem[mem[64]], _7781, _3850, _7677, address(cd[4])
            _1351 = mem[160]
            idx = idx + 1
            s = s + _7677
            t = t + _3850
            continue 
        _1357 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1357 len 64] = call.data[calldata.size len 64]
        _1359 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1359 len 64] = call.data[calldata.size len 64]
        _1365 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1365 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < 2:
            if mem[(32 * idx) + _19 + 12 len 20]:
                require idx < 2
                _1668 = mem[(32 * idx) + _18]
                _1673 = mem[(32 * idx) + 96]
                _1677 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + _19 + 12 len 20]
                mem[mem[64] + 68] = _1668
                _1683 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1683 + 32] = mem[_1683 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1677 + 164
                mem[_1677 + 100] = 32
                mem[_1677 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1673)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1709 = mem[_1683]
                s = 0
                while s < _1709:
                    mem[_1677 + s + 164] = mem[_1683 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1709) > _1709:
                    mem[_1677 + _1709 + 164] = 0
                call address(_1673).mem[_1677 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1677 + 168 len _1709 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1677 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1677 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1677 + idx + 232] = mem[_1677 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1677 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1677 + ceil32(return_data.size) + 165
                    mem[_1677 + 164] = return_data.size
                    mem[_1677 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1677 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1677 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1677 + ceil32(return_data.size) + idx + 233] = mem[_1677 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1677 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1677 + 196] == bool(mem[_1677 + 196])
                        if not mem[_1677 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < 2
                mem[(32 * idx) + _1365] = _1668
            idx = idx + 1
            continue 
        _1665 = mem[_19 + 32]
        _1667 = mem[_18]
        _1671 = mem[_18 + 32]
        mem[mem[64]] = mem[_19 + 12 len 20]
        mem[mem[64] + 32] = address(_1665)
        mem[mem[64] + 64] = _1667
        mem[mem[64] + 96] = _1671
        emit 0x5f54e322: mem[mem[64]], address(_1665), _1667, _1671, address(cd[4])
        if mem[_1365] > t:
            revert with 0, 'SafeMath: subtraction overflow'
        if mem[_1365 + 32] > s:
            revert with 0, 'SafeMath: subtraction overflow'
        _1745 = mem[96]
        _1749 = mem[128]
        _1767 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = t
        _1855 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1767 + 100] = 32
        mem[_1767 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(_1745)) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1903 = mem[_1855]
        mem[_1767 + 164 len ceil32(mem[_1855])] = mem[_1855 + 32 len ceil32(mem[_1855])]
        if ceil32(_1903) > _1903:
            mem[_1767 + _1903 + 164] = 0
        call address(_1745) with:
             gas gas_remaining wei
            args mem[_1767 + 168 len _1903 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_1767 + 200] = address(cd[4])
            mem[_1767 + 232] = s
            mem[_1767 + 164] = 68
            mem[_1767 + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_1767 + 264] = 32
            mem[_1767 + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1749)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_1767 + 328 len 96] = 0, address(cd[4]), s, 0
            mem[_1767 + 396] = 0
            call address(_1749) with:
               funct Mask(32, 224, 0, address(cd[4]), s, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[4]), s, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1767 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_1767 + 360] == bool(mem[_1767 + 360])
                    if not mem[_1767 + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if cd[292]:
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xff4fbd5b with:
                     gas gas_remaining wei
                    args t, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
        else:
            mem[_1767 + 164] = return_data.size
            mem[_1767 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1767 + 196] == bool(mem[_1767 + 196])
                if not mem[_1767 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_1767 + ceil32(return_data.size) + 201] = address(cd[4])
            mem[_1767 + ceil32(return_data.size) + 233] = s
            mem[_1767 + ceil32(return_data.size) + 165] = 68
            mem[_1767 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_1767 + ceil32(return_data.size) + 265] = 32
            mem[_1767 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1749)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_1767 + ceil32(return_data.size) + 329 len 96] = 0, address(cd[4]), s, 0
            mem[_1767 + ceil32(return_data.size) + 397] = 0
            call address(_1749) with:
               funct Mask(32, 224, 0, address(cd[4]), s, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[4]), s, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[292]:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xff4fbd5b with:
                         gas gas_remaining wei
                        args t, s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
            else:
                mem[_1767 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_1767 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_1767 + ceil32(return_data.size) + 361] == bool(mem[_1767 + ceil32(return_data.size) + 361])
                    if not mem[_1767 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_1767 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if cd[292]:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xff4fbd5b with:
                         gas gas_remaining wei
                        args t, s, mem[_1767 + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0, 'Executable: caller is not the executor'
        mem[mem[64]] = 0x372500ab00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x372500ab with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _29 = mem[_27]
        require mem[_27] <= test266151307()
        require _27 + mem[_27] + 31 < _27 + return_data.size
        _32 = mem[_27 + mem[_27]]
        require mem[_27 + mem[_27]] <= test266151307()
        require _27 + ceil32(return_data.size) + (32 * mem[_27 + mem[_27]]) + 32 <= test266151307() and (32 * mem[_27 + mem[_27]]) + 32 >= 0
        mem[64] = _27 + ceil32(return_data.size) + (32 * mem[_27 + mem[_27]]) + 32
        mem[_27 + ceil32(return_data.size)] = _32
        require _29 + (32 * _32) + 32 <= return_data.size
        idx = 0
        s = _27 + _29 + 32
        t = _27 + ceil32(return_data.size) + 32
        while idx < _32:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _369 = mem[_27 + 32]
        require mem[_27 + 32] <= test266151307()
        require _27 + mem[_27 + 32] + 31 < _27 + return_data.size
        _372 = mem[_27 + mem[_27 + 32]]
        require mem[_27 + mem[_27 + 32]] <= test266151307()
        _374 = mem[64]
        require mem[64] + (32 * mem[_27 + mem[_27 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_27 + mem[_27 + 32]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_27 + mem[_27 + 32]]) + 32
        mem[_374] = _372
        require _369 + (32 * _372) + 32 <= return_data.size
        idx = 0
        s = _27 + _369 + 32
        t = _374 + 32
        while idx < _372:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1028 = mem[_27 + ceil32(return_data.size)]
        idx = 0
        while idx < _1028:
            require idx < mem[_27 + ceil32(return_data.size)]
            _1033 = mem[(32 * idx) + _27 + ceil32(return_data.size) + 32]
            require idx < mem[_374]
            _1037 = mem[(32 * idx) + _374 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1037
            require ext_code.size(address(_1033))
            call address(_1033).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[4]), address(this.address), _1037
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1106] == bool(mem[_1106])
            _1028 = mem[_27 + ceil32(return_data.size)]
            idx = idx + 1
            continue 
        _1352 = mem[160]
        idx = 0
        s = 0
        t = 0
        while idx < _1352:
            require idx < mem[_374]
            _1356 = mem[(32 * idx) + _374 + 32]
            require idx < mem[160]
            _1369 = mem[mem[(32 * idx) + 192]]
            require idx < mem[_11]
            _1374 = mem[mem[(32 * idx) + _11 + 32]]
            if mem[mem[mem[(32 * idx) + 192]]] <= 0:
                require idx < mem[160]
                _1391 = mem[mem[(32 * idx) + 192] + 32]
                require idx < mem[_11]
                _1398 = mem[mem[(32 * idx) + _11 + 32] + 32]
                if mem[mem[mem[(32 * idx) + 192] + 32]] <= 0:
                    require idx < mem[_27 + ceil32(return_data.size)]
                    require idx < mem[_374]
                    _1411 = mem[(32 * idx) + _374 + 32]
                    mem[mem[64]] = mem[(32 * idx) + _27 + ceil32(return_data.size) + 44 len 20]
                    mem[mem[64] + 32] = _1411
                    mem[mem[64] + 64] = _1356 / 2
                    mem[mem[64] + 96] = _1356 / 2
                    emit 0xd25759d8: mem[mem[64]], _1411, Mask(255, 1, _1356), _1356 / 2, address(cd[4])
                    _1352 = mem[160]
                    idx = idx + 1
                    s = s + (_1356 / 2)
                    t = t + (_1356 / 2)
                    continue 
                _1402 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1356 / 2
                mem[mem[64] + 36] = _1398
                mem[mem[64] + 68] = 160
                _1423 = mem[_1391]
                mem[mem[64] + 164] = mem[_1391]
                u = 0
                v = _1391 + 32
                w = mem[64] + 196
                while u < _1423:
                    mem[w] = mem[v + 12 len 20]
                    _1352 = mem[160]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1402 + 100] = this.address
                mem[_1402 + 132] = block.timestamp + 300
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1402 + (32 * _1423) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1691 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1695 = mem[_1691]
                require mem[_1691] <= test266151307()
                require _1691 + mem[_1691] + 31 < _1691 + return_data.size
                _1701 = mem[_1691 + mem[_1691]]
                require mem[_1691 + mem[_1691]] <= test266151307()
                require _1691 + ceil32(return_data.size) + (32 * mem[_1691 + mem[_1691]]) + 32 <= test266151307() and (32 * mem[_1691 + mem[_1691]]) + 32 >= 0
                mem[64] = _1691 + ceil32(return_data.size) + (32 * mem[_1691 + mem[_1691]]) + 32
                mem[_1691 + ceil32(return_data.size)] = _1701
                require _1695 + (32 * _1701) + 32 <= return_data.size
                u = 0
                v = _1691 + _1695 + 32
                w = _1691 + ceil32(return_data.size) + 32
                while u < _1701:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    _1352 = mem[160]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require _1701 - 1 < _1701
                _3851 = mem[(32 * _1701 - 1) + _1691 + ceil32(return_data.size) + 32]
                require idx < mem[_27 + ceil32(return_data.size)]
                require idx < mem[_374]
                _3883 = mem[(32 * idx) + _374 + 32]
                mem[mem[64]] = mem[(32 * idx) + _27 + ceil32(return_data.size) + 44 len 20]
                mem[mem[64] + 32] = _3883
                mem[mem[64] + 64] = _1356 / 2
                mem[mem[64] + 96] = _3851
                emit 0xd25759d8: mem[mem[64]], _3883, Mask(255, 1, _1356), _3851, address(cd[4])
                _1352 = mem[160]
                idx = idx + 1
                s = s + _3851
                t = t + (_1356 / 2)
                continue 
            _1380 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1356 / 2
            mem[mem[64] + 36] = _1374
            mem[mem[64] + 68] = 160
            _1414 = mem[_1369]
            mem[mem[64] + 164] = mem[_1369]
            u = 0
            v = _1369 + 32
            w = mem[64] + 196
            while u < _1414:
                mem[w] = mem[v + 12 len 20]
                _1352 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_1380 + 100] = this.address
            mem[_1380 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1380 + (32 * _1414) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1692 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1696 = mem[_1692]
            require mem[_1692] <= test266151307()
            require _1692 + mem[_1692] + 31 < _1692 + return_data.size
            _1702 = mem[_1692 + mem[_1692]]
            require mem[_1692 + mem[_1692]] <= test266151307()
            require _1692 + ceil32(return_data.size) + (32 * mem[_1692 + mem[_1692]]) + 32 <= test266151307() and (32 * mem[_1692 + mem[_1692]]) + 32 >= 0
            mem[64] = _1692 + ceil32(return_data.size) + (32 * mem[_1692 + mem[_1692]]) + 32
            mem[_1692 + ceil32(return_data.size)] = _1702
            require _1696 + (32 * _1702) + 32 <= return_data.size
            u = 0
            v = _1692 + _1696 + 32
            w = _1692 + ceil32(return_data.size) + 32
            while u < _1702:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                _1352 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _1702 - 1 < _1702
            _3852 = mem[(32 * _1702 - 1) + _1692 + ceil32(return_data.size) + 32]
            require idx < mem[160]
            _3885 = mem[mem[(32 * idx) + 192] + 32]
            require idx < mem[_11]
            _3922 = mem[mem[(32 * idx) + _11 + 32] + 32]
            if mem[mem[mem[(32 * idx) + 192] + 32]] <= 0:
                require idx < mem[_27 + ceil32(return_data.size)]
                require idx < mem[_374]
                _3999 = mem[(32 * idx) + _374 + 32]
                mem[mem[64]] = mem[(32 * idx) + _27 + ceil32(return_data.size) + 44 len 20]
                mem[mem[64] + 32] = _3999
                mem[mem[64] + 64] = _3852
                mem[mem[64] + 96] = _1356 / 2
                emit 0xd25759d8: mem[mem[64]], _3999, _3852, _1356 / 2, address(cd[4])
                _1352 = mem[160]
                idx = idx + 1
                s = s + (_1356 / 2)
                t = t + _3852
                continue 
            _3942 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1356 / 2
            mem[mem[64] + 36] = _3922
            mem[mem[64] + 68] = 160
            _4042 = mem[_3885]
            mem[mem[64] + 164] = mem[_3885]
            u = 0
            v = _3885 + 32
            w = mem[64] + 196
            while u < _4042:
                mem[w] = mem[v + 12 len 20]
                _1352 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_3942 + 100] = this.address
            mem[_3942 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3942 + (32 * _4042) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6556 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6622 = mem[_6556]
            require mem[_6556] <= test266151307()
            require _6556 + mem[_6556] + 31 < _6556 + return_data.size
            _6624 = mem[_6556 + mem[_6556]]
            require mem[_6556 + mem[_6556]] <= test266151307()
            require _6556 + ceil32(return_data.size) + (32 * mem[_6556 + mem[_6556]]) + 32 <= test266151307() and (32 * mem[_6556 + mem[_6556]]) + 32 >= 0
            mem[64] = _6556 + ceil32(return_data.size) + (32 * mem[_6556 + mem[_6556]]) + 32
            mem[_6556 + ceil32(return_data.size)] = _6624
            require _6622 + (32 * _6624) + 32 <= return_data.size
            u = 0
            v = _6556 + _6622 + 32
            w = _6556 + ceil32(return_data.size) + 32
            while u < _6624:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                _1352 = mem[160]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _6624 - 1 < _6624
            _7678 = mem[(32 * _6624 - 1) + _6556 + ceil32(return_data.size) + 32]
            require idx < mem[_27 + ceil32(return_data.size)]
            require idx < mem[_374]
            _7815 = mem[(32 * idx) + _374 + 32]
            mem[mem[64]] = mem[(32 * idx) + _27 + ceil32(return_data.size) + 44 len 20]
            mem[mem[64] + 32] = _7815
            mem[mem[64] + 64] = _3852
            mem[mem[64] + 96] = _7678
            emit 0xd25759d8: mem[mem[64]], _7815, _3852, _7678, address(cd[4])
            _1352 = mem[160]
            idx = idx + 1
            s = s + _7678
            t = t + _3852
            continue 
        _1358 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1358 len 64] = call.data[calldata.size len 64]
        _1361 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1361 len 64] = call.data[calldata.size len 64]
        _1368 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1368 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < 2:
            if mem[(32 * idx) + _19 + 12 len 20]:
                require idx < 2
                _1670 = mem[(32 * idx) + _18]
                _1676 = mem[(32 * idx) + 96]
                _1678 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + _19 + 12 len 20]
                mem[mem[64] + 68] = _1670
                _1685 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1685 + 32] = mem[_1685 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1678 + 164
                mem[_1678 + 100] = 32
                mem[_1678 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1676)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1713 = mem[_1685]
                s = 0
                while s < _1713:
                    mem[_1678 + s + 164] = mem[_1685 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1713) > _1713:
                    mem[_1678 + _1713 + 164] = 0
                call address(_1676).mem[_1678 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1678 + 168 len _1713 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1678 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1678 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1678 + idx + 232] = mem[_1678 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1678 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1678 + ceil32(return_data.size) + 165
                    mem[_1678 + 164] = return_data.size
                    mem[_1678 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1678 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1678 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1678 + ceil32(return_data.size) + idx + 233] = mem[_1678 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1678 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1678 + 196] == bool(mem[_1678 + 196])
                        if not mem[_1678 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < 2
                mem[(32 * idx) + _1368] = _1670
            idx = idx + 1
            continue 
        _1666 = mem[_19 + 32]
        _1669 = mem[_18]
        _1674 = mem[_18 + 32]
        mem[mem[64]] = mem[_19 + 12 len 20]
        mem[mem[64] + 32] = address(_1666)
        mem[mem[64] + 64] = _1669
        mem[mem[64] + 96] = _1674
        emit 0x5f54e322: mem[mem[64]], address(_1666), _1669, _1674, address(cd[4])
        if mem[_1368] > t:
            revert with 0, 'SafeMath: subtraction overflow'
        if mem[_1368 + 32] > s:
            revert with 0, 'SafeMath: subtraction overflow'
        _1747 = mem[96]
        _1753 = mem[128]
        _1773 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = t
        _1859 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1773 + 100] = 32
        mem[_1773 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(_1747)) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1906 = mem[_1859]
        mem[_1773 + 164 len ceil32(mem[_1859])] = mem[_1859 + 32 len ceil32(mem[_1859])]
        if ceil32(_1906) > _1906:
            mem[_1773 + _1906 + 164] = 0
        call address(_1747) with:
             gas gas_remaining wei
            args mem[_1773 + 168 len _1906 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_1773 + 200] = address(cd[4])
            mem[_1773 + 232] = s
            mem[_1773 + 164] = 68
            mem[_1773 + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_1773 + 264] = 32
            mem[_1773 + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1753)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_1773 + 328 len 96] = 0, address(cd[4]), s, 0
            mem[_1773 + 396] = 0
            call address(_1753) with:
               funct Mask(32, 224, 0, address(cd[4]), s, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[4]), s, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1773 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_1773 + 360] == bool(mem[_1773 + 360])
                    if not mem[_1773 + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if cd[292]:
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xff4fbd5b with:
                     gas gas_remaining wei
                    args t, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
        else:
            mem[_1773 + 164] = return_data.size
            mem[_1773 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1773 + 196] == bool(mem[_1773 + 196])
                if not mem[_1773 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_1773 + ceil32(return_data.size) + 201] = address(cd[4])
            mem[_1773 + ceil32(return_data.size) + 233] = s
            mem[_1773 + ceil32(return_data.size) + 165] = 68
            mem[_1773 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_1773 + ceil32(return_data.size) + 265] = 32
            mem[_1773 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1753)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_1773 + ceil32(return_data.size) + 329 len 96] = 0, address(cd[4]), s, 0
            mem[_1773 + ceil32(return_data.size) + 397] = 0
            call address(_1753) with:
               funct Mask(32, 224, 0, address(cd[4]), s, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[4]), s, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if cd[292]:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xff4fbd5b with:
                         gas gas_remaining wei
                        args t, s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
            else:
                mem[_1773 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_1773 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_1773 + ceil32(return_data.size) + 361] == bool(mem[_1773 + ceil32(return_data.size) + 361])
                    if not mem[_1773 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_1773 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if cd[292]:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xff4fbd5b with:
                         gas gas_remaining wei
                        args t, s, mem[_1773 + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
}



}
