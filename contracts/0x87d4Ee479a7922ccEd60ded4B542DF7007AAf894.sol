contract main {




// =====================  Runtime code  =====================


const sub_5a2ebd51(?) = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const JOE_ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e4a658e0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if ('cd', 36).length <= 0:
        revert with 0, 'Empty path'
    staticcall address(cd[68]).WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) == ext_call.return_data[12 len 20]:
        revert with 0, 'Bad tokens chain'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == ext_call.return_data[12 len 20]:
        revert with 0, 'Bad tokens chain'
    if ('cd', 36).length > -3:
        revert with 'NH{q', 17
    if ('cd', 36).length + 2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ('cd', 36).length + 2
    if not ('cd', 36).length + 2:
        if 0 >= ('cd', 36).length + 2:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= ('cd', 36).length + 2:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = address(cd[((32 * idx) + cd[36] + 36)])
            idx = idx + 1
            continue 
        if ('cd', 36).length > -2:
            revert with 'NH{q', 17
        mem[(32 * ('cd', 36).length + 1) + ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 132] = cd[4]
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 164] = 64
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 196] = ('cd', 36).length + 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 228
        while idx < ('cd', 36).length + 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=('cd', 36).length + 2, data=mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 228 len (96 * ('cd', 36).length) + 192])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 128
        require return_data.size >= 32
        _80 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + return_data.size + 128
        _82 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 128] = _82
        require _80 + (32 * _82) + 32 <= return_data.size
        idx = ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + _80 + 160
        s = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 160
        while idx < ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + _80 + (32 * _82) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if ('cd', 36).length > -2:
            revert with 'NH{q', 17
        if ('cd', 36).length + 1 >= _82:
            revert with 'NH{q', 50
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ('cd', 36).length + 2] = call.data[calldata.size len 32 * ('cd', 36).length + 2]
        if 0 >= ('cd', 36).length + 2:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= ('cd', 36).length + 2:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = address(cd[((32 * idx) + cd[36] + 36)])
            idx = idx + 1
            continue 
        if ('cd', 36).length > -2:
            revert with 'NH{q', 17
        mem[(32 * ('cd', 36).length + 1) + ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 132] = cd[4]
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 164] = 64
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 196] = ('cd', 36).length + 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 228
        while idx < ('cd', 36).length + 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=('cd', 36).length + 2, data=mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 228 len (96 * ('cd', 36).length) + 192])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 128
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + return_data.size + 128
        _83 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + floor32(mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + mem[ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 128] = _83
        require _81 + (32 * _83) + 32 <= return_data.size
        idx = ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + _81 + 160
        s = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 160
        while idx < ceil32(return_data.size) + (32 * ('cd', 36).length + 2) + _81 + (32 * _83) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if ('cd', 36).length > -2:
            revert with 'NH{q', 17
        if ('cd', 36).length + 1 >= _83:
            revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * ('cd', 36).length + 1) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length + 2) + 160]
    return memory
      from mem[64]
       len 32
}

function sub_ac67f6a7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length <= 0:
        revert with 0, 'Bad data length'
    if ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if ('cd', 68).length != ('cd', 36).length + 1:
        revert with 0, 'Bad data length'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    staticcall address(('cd', 68)[0]).WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) == ext_call.return_data[12 len 20]:
        revert with 0, 'Bad tokens chain'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == ext_call.return_data[12 len 20]:
        revert with 0, 'Bad tokens chain'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        _42 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not idx:
            if 0 >= mem[_42]:
                revert with 'NH{q', 50
            mem[_42 + 32] = address(ext_call.return_data[0])
            if not idx - ('cd', 36).length:
                if 1 >= mem[_42]:
                    revert with 'NH{q', 50
                mem[_42 + 64] = address(ext_call.return_data[0])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_42 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_42 + 100] = s
                mem[_42 + 132] = 64
                mem[_42 + 164] = mem[_42]
                s = 0
                t = _42 + 32
                u = _42 + 196
                while s < mem[_42]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _42 + (32 * mem[_42]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _105 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _109 = mem[_105]
                require mem[_105] <= test266151307()
                require _105 + mem[_105] + 31 < _105 + return_data.size
                _113 = mem[_105 + mem[_105]]
                if mem[_105 + mem[_105]] > test266151307():
                    revert with 'NH{q', 65
                if _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1 > test266151307() or floor32(mem[_105 + mem[_105]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1
                mem[_105 + ceil32(return_data.size)] = _113
                require _109 + (32 * _113) + 32 <= return_data.size
                s = _105 + _109 + 32
                t = _105 + ceil32(return_data.size) + 32
                while s < _105 + _109 + (32 * _113) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _113:
                    revert with 'NH{q', 50
                idx = idx + 1
                s = mem[_105 + ceil32(return_data.size) + 64]
                continue 
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if 1 >= mem[_42]:
                revert with 'NH{q', 50
            mem[_42 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_42 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_42 + 100] = s
            mem[_42 + 132] = 64
            mem[_42 + 164] = mem[_42]
            s = 0
            t = _42 + 32
            u = _42 + 196
            while s < mem[_42]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _42 + (32 * mem[_42]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_104]
            require mem[_104] <= test266151307()
            require _104 + mem[_104] + 31 < _104 + return_data.size
            _112 = mem[_104 + mem[_104]]
            if mem[_104 + mem[_104]] > test266151307():
                revert with 'NH{q', 65
            if _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1 > test266151307() or floor32(mem[_104 + mem[_104]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1
            mem[_104 + ceil32(return_data.size)] = _112
            require _108 + (32 * _112) + 32 <= return_data.size
            s = _104 + _108 + 32
            t = _104 + ceil32(return_data.size) + 32
            while s < _104 + _108 + (32 * _112) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _112:
                revert with 'NH{q', 50
            idx = idx + 1
            s = mem[_104 + ceil32(return_data.size) + 64]
            continue 
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
        if 0 >= mem[_42]:
            revert with 'NH{q', 50
        mem[_42 + 32] = address(cd[((32 * idx - 1) + cd[36] + 36)])
        if not idx - ('cd', 36).length:
            if 1 >= mem[_42]:
                revert with 'NH{q', 50
            mem[_42 + 64] = address(ext_call.return_data[0])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_42 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_42 + 100] = s
            mem[_42 + 132] = 64
            mem[_42 + 164] = mem[_42]
            s = 0
            t = _42 + 32
            u = _42 + 196
            while s < mem[_42]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _42 + (32 * mem[_42]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _107 = mem[_103]
            require mem[_103] <= test266151307()
            require _103 + mem[_103] + 31 < _103 + return_data.size
            _111 = mem[_103 + mem[_103]]
            if mem[_103 + mem[_103]] > test266151307():
                revert with 'NH{q', 65
            if _103 + ceil32(return_data.size) + floor32(mem[_103 + mem[_103]]) + 1 > test266151307() or floor32(mem[_103 + mem[_103]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _103 + ceil32(return_data.size) + floor32(mem[_103 + mem[_103]]) + 1
            mem[_103 + ceil32(return_data.size)] = _111
            require _107 + (32 * _111) + 32 <= return_data.size
            s = _103 + _107 + 32
            t = _103 + ceil32(return_data.size) + 32
            while s < _103 + _107 + (32 * _111) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _111:
                revert with 'NH{q', 50
            idx = idx + 1
            s = mem[_103 + ceil32(return_data.size) + 64]
            continue 
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if 1 >= mem[_42]:
            revert with 'NH{q', 50
        mem[_42 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[_42 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_42 + 100] = s
        mem[_42 + 132] = 64
        mem[_42 + 164] = mem[_42]
        s = 0
        t = _42 + 32
        u = _42 + 196
        while s < mem[_42]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _42 + (32 * mem[_42]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _106 = mem[_102]
        require mem[_102] <= test266151307()
        require _102 + mem[_102] + 31 < _102 + return_data.size
        _110 = mem[_102 + mem[_102]]
        if mem[_102 + mem[_102]] > test266151307():
            revert with 'NH{q', 65
        if _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1 > test266151307() or floor32(mem[_102 + mem[_102]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1
        mem[_102 + ceil32(return_data.size)] = _110
        require _106 + (32 * _110) + 32 <= return_data.size
        s = _102 + _106 + 32
        t = _102 + ceil32(return_data.size) + 32
        while s < _102 + _106 + (32 * _110) + 32:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _110:
            revert with 'NH{q', 50
        idx = idx + 1
        s = mem[_102 + ceil32(return_data.size) + 64]
        continue 
    return s
}



}
