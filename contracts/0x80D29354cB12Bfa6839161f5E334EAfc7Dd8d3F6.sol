contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_88f9eddd(?)
#  - apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor6;

function owner() {
    return owner
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

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_a70e2abd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function sub_43e06224(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
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
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 6
    require stor6[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_56]
            require mem[_56] == mem[_56 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_57))
            staticcall address(_57).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _62 = mem[_61]
                require mem[_61] == mem[_61 + 12 len 20]
                if mem[_61 + 12 len 20]:
                    require ext_code.size(mem[_61 + 12 len 20])
                    staticcall mem[_61 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _65 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _66 = mem[_65]
                        require mem[_65] == mem[_65 + 18 len 14]
                        _67 = mem[_65 + 32]
                        require mem[_65 + 32] == mem[_65 + 50 len 14]
                        require mem[_65 + 64] == mem[_65 + 92 len 4]
                        require ext_code.size(address(_62))
                        staticcall address(_62).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _71 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_71] == mem[_71 + 12 len 20]
                            if mem[_71 + 12 len 20] == address(cd[36]):
                                if Mask(112, 0, _66) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if Mask(112, 0, _67) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    idx = idx + 1
                    continue 
    return 0
}

function sub_65af5795(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
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
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require stor6[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 6
    require stor6[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _59 = mem[_58]
            require mem[_58] == mem[_58 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_59))
            staticcall address(_59).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _64 = mem[_63]
                require mem[_63] == mem[_63 + 12 len 20]
                if mem[_63 + 12 len 20]:
                    require ext_code.size(mem[_63 + 12 len 20])
                    staticcall mem[_63 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _67 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _68 = mem[_67]
                        require mem[_67] == mem[_67 + 18 len 14]
                        _69 = mem[_67 + 32]
                        require mem[_67 + 32] == mem[_67 + 50 len 14]
                        require mem[_67 + 64] == mem[_67 + 92 len 4]
                        require ext_code.size(address(_64))
                        staticcall address(_64).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _73 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_73] == mem[_73 + 12 len 20]
                            if mem[_73 + 12 len 20] == address(cd[68]):
                                if Mask(112, 0, _68) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if Mask(112, 0, _69) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    idx = idx + 1
                    continue 
    revert with 0, 'NF'
}

function sub_faecc783(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    mem[0] = msg.sender
    mem[32] = 6
    require stor6[address(msg.sender)]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 36).length <= test266151307()
    mem[ceil32(return_data.size) + 96] = ('cd', 36).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        require ('cd', 36).length <= test266151307()
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = ('cd', 36).length
        mem[64] = ceil32(return_data.size) + (64 * ('cd', 36).length) + 160
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1124 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1128 = mem[_1124]
                require mem[_1124] <= test266151307()
                require _1124 + mem[_1124] + 31 < _1124 + return_data.size
                _1137 = mem[_1124 + mem[_1124]]
                require mem[_1124 + mem[_1124]] <= test266151307()
                require _1124 + ceil32(return_data.size) + ceil32(mem[_1124 + mem[_1124]]) + 32 <= test266151307() and ceil32(mem[_1124 + mem[_1124]]) + 32 >= 0
                mem[64] = _1124 + ceil32(return_data.size) + ceil32(mem[_1124 + mem[_1124]]) + 32
                mem[_1124 + ceil32(return_data.size)] = _1137
                require _1128 + _1137 + 32 <= return_data.size
                s = 0
                while s < _1137:
                    mem[_1124 + ceil32(return_data.size) + s + 32] = mem[_1124 + _1128 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1137) <= _1137:
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1124 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2194] == mem[_2194 + 31 len 1]
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = mem[_2194 + 31 len 1]
                else:
                    mem[_1124 + ceil32(return_data.size) + _1137 + 32] = 0
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1124 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2196] == mem[_2196 + 31 len 1]
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = mem[_2196 + 31 len 1]
                idx = idx + 1
                continue 
            require ('cd', 36).length - 1 <= test266151307()
            _1081 = mem[64]
            mem[mem[64]] = ('cd', 36).length - 1
            mem[64] = mem[64] + (32 * ('cd', 36).length - 1) + 32
            if not ('cd', 36).length - 1:
                s = 0
                while s < ('cd', 36).length - 1:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    require s + 1 < ('cd', 36).length
                    require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2391 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2391] == mem[_2391 + 12 len 20]
                    require s < mem[_1081]
                    mem[(32 * s) + _1081 + 32] = mem[_2391 + 12 len 20]
                    s = s + 1
                    continue 
                _2154 = mem[_1081]
                require mem[_1081] <= test266151307()
                _2160 = mem[64]
                mem[mem[64]] = mem[_1081]
                mem[64] = mem[64] + (32 * _2154) + 32
                if not _2154:
                    s = 0
                    while s < ('cd', 36).length - 1:
                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                        require s + 1 < ('cd', 36).length
                        require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * s + 1) + cd[36] + 36)]):
                            _3451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3451] == mem[_3451 + 12 len 20]
                            require ext_code.size(mem[_3451 + 12 len 20])
                            staticcall mem[_3451 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3626 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3662 = mem[_3626]
                            require mem[_3626] == mem[_3626 + 18 len 14]
                            _3770 = mem[_3626 + 32]
                            require mem[_3626 + 32] == mem[_3626 + 50 len 14]
                            require mem[_3626 + 64] == mem[_3626 + 92 len 4]
                            require s < mem[_2160]
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                _3919 = mem[(32 * s) + _2160 + 32]
                                require s < mem[_2160]
                                mem[mem[(32 * s) + _2160 + 32] + 32] = mem[_3626 + 50 len 14]
                                mem[_3919] = Mask(112, 0, _3662)
                            else:
                                _3920 = mem[(32 * s) + _2160 + 32]
                                require s < mem[_2160]
                                mem[mem[(32 * s) + _2160 + 32] + 32] = mem[_3626 + 18 len 14]
                                mem[_3920] = Mask(112, 0, _3770)
                        else:
                            _3452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3452] == mem[_3452 + 12 len 20]
                            require ext_code.size(mem[_3452 + 12 len 20])
                            staticcall mem[_3452 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3663 = mem[_3627]
                            require mem[_3627] == mem[_3627 + 18 len 14]
                            _3771 = mem[_3627 + 32]
                            require mem[_3627 + 32] == mem[_3627 + 50 len 14]
                            require mem[_3627 + 64] == mem[_3627 + 92 len 4]
                            require s < mem[_2160]
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s + 1) + cd[36] + 36)]):
                                _3921 = mem[(32 * s) + _2160 + 32]
                                require s < mem[_2160]
                                mem[mem[(32 * s) + _2160 + 32] + 32] = mem[_3627 + 50 len 14]
                                mem[_3921] = Mask(112, 0, _3663)
                            else:
                                _3922 = mem[(32 * s) + _2160 + 32]
                                require s < mem[_2160]
                                mem[mem[(32 * s) + _2160 + 32] + 32] = mem[_3627 + 18 len 14]
                                mem[_3922] = Mask(112, 0, _3771)
                        s = s + 1
                        continue 
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = ('cd', 36).length
                    s = 0
                    t = cd[36] + 36
                    u = mem[64] + 100
                    while s < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4218 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4230 = mem[_4218]
                    require mem[_4218] <= test266151307()
                    require _4218 + mem[_4218] + 31 < _4218 + return_data.size
                    _4234 = mem[_4218 + mem[_4218]]
                    require mem[_4218 + mem[_4218]] <= test266151307()
                    require _4218 + ceil32(return_data.size) + (32 * mem[_4218 + mem[_4218]]) + 32 <= test266151307() and (32 * mem[_4218 + mem[_4218]]) + 32 >= 0
                    mem[64] = _4218 + ceil32(return_data.size) + (32 * mem[_4218 + mem[_4218]]) + 32
                    mem[_4218 + ceil32(return_data.size)] = _4234
                    require _4230 + (32 * _4234) + 32 <= return_data.size
                    s = 0
                    t = _4218 + _4230 + 32
                    u = _4218 + ceil32(return_data.size) + 32
                    while s < _4234:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _5006 = mem[64]
                    mem[mem[64]] = block.number
                    mem[mem[64] + 32] = 192
                    _5026 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + (32 * _5026) + 224
                    u = mem[64] + 224
                    while idx < _5026:
                        mem[u] = t + -_5006 - 224
                        _5606 = mem[s]
                        _5623 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _5623:
                            mem[t + v + 32] = mem[_5606 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_5623) > _5623:
                            mem[t + _5623 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(_5623) + 32
                        u = u + 32
                        continue 
                    mem[_5006 + 64] = t - _5006
                    _5622 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                    mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                    mem[t + 32 len 32 * _5622] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _5622]
                    mem[_5006 + 96] = t + (32 * _5622) + -_5006 + 32
                    _6058 = mem[_1081]
                    mem[t + (32 * _5622) + 32] = mem[_1081]
                    idx = 0
                    s = _1081 + 32
                    u = t + (32 * _5622) + 64
                    while idx < _6058:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_5006 + 128] = t + (32 * _5622) + (32 * _6058) + -_5006 + 64
                    _6298 = mem[_2160]
                    mem[t + (32 * _5622) + (32 * _6058) + 64] = mem[_2160]
                    idx = 0
                    s = _2160 + 32
                    u = t + (32 * _5622) + (32 * _6058) + 96
                    while idx < _6298:
                        t = 0
                        v = mem[s]
                        w = u
                        while t < 2:
                            mem[w] = mem[v]
                            t = t + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + 64
                        continue 
                    mem[_5006 + 160] = u - _5006
                    _6622 = mem[_4218 + ceil32(return_data.size)]
                    mem[u] = mem[_4218 + ceil32(return_data.size)]
                    mem[u + 32 len 32 * _6622] = mem[_4218 + ceil32(return_data.size) + 32 len 32 * _6622]
                    var164001 = _6622
                    var164002 = _4218 + ceil32(return_data.size) + (32 * _6622) + 32
                    return memory
                      from mem[64]
                       len u + (32 * _6622) + -mem[64] + 32
                mem[64] = _2160 + (32 * _2154) + 96
                mem[_2160 + (32 * _2154) + 32 len 64] = call.data[calldata.size len 64]
                mem[var63001] = _2160 + (32 * _2154) + 32
                s = var63001
                idx = var63002
                while idx - 1:
                    mem[64] = mem[64] + 64
                    mem[_2160 + (32 * _2154) + 32 len 64] = call.data[calldata.size len 64]
                    mem[s + 32] = _2160 + (32 * _2154) + 32
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require idx + 1 < ('cd', 36).length
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _5188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5188] == mem[_5188 + 12 len 20]
                        require ext_code.size(mem[_5188 + 12 len 20])
                        staticcall mem[_5188 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _5342 = mem[_5314]
                        require mem[_5314] == mem[_5314 + 18 len 14]
                        _5386 = mem[_5314 + 32]
                        require mem[_5314 + 32] == mem[_5314 + 50 len 14]
                        require mem[_5314 + 64] == mem[_5314 + 92 len 4]
                        require idx < mem[_2160]
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            _5479 = mem[(32 * idx) + _2160 + 32]
                            require idx < mem[_2160]
                            mem[mem[(32 * idx) + _2160 + 32] + 32] = mem[_5314 + 50 len 14]
                            mem[_5479] = Mask(112, 0, _5342)
                        else:
                            _5480 = mem[(32 * idx) + _2160 + 32]
                            require idx < mem[_2160]
                            mem[mem[(32 * idx) + _2160 + 32] + 32] = mem[_5314 + 18 len 14]
                            mem[_5480] = Mask(112, 0, _5386)
                    else:
                        _5189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5189] == mem[_5189 + 12 len 20]
                        require ext_code.size(mem[_5189 + 12 len 20])
                        staticcall mem[_5189 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _5343 = mem[_5315]
                        require mem[_5315] == mem[_5315 + 18 len 14]
                        _5387 = mem[_5315 + 32]
                        require mem[_5315 + 32] == mem[_5315 + 50 len 14]
                        require mem[_5315 + 64] == mem[_5315 + 92 len 4]
                        require idx < mem[_2160]
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _5481 = mem[(32 * idx) + _2160 + 32]
                            require idx < mem[_2160]
                            mem[mem[(32 * idx) + _2160 + 32] + 32] = mem[_5315 + 50 len 14]
                            mem[_5481] = Mask(112, 0, _5343)
                        else:
                            _5482 = mem[(32 * idx) + _2160 + 32]
                            require idx < mem[_2160]
                            mem[mem[(32 * idx) + _2160 + 32] + 32] = mem[_5315 + 18 len 14]
                            mem[_5482] = Mask(112, 0, _5387)
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = mem[64] + 100
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5634 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5638 = mem[_5634]
                require mem[_5634] <= test266151307()
                require _5634 + mem[_5634] + 31 < _5634 + return_data.size
                _5643 = mem[_5634 + mem[_5634]]
                require mem[_5634 + mem[_5634]] <= test266151307()
                require _5634 + ceil32(return_data.size) + (32 * mem[_5634 + mem[_5634]]) + 32 <= test266151307() and (32 * mem[_5634 + mem[_5634]]) + 32 >= 0
                mem[64] = _5634 + ceil32(return_data.size) + (32 * mem[_5634 + mem[_5634]]) + 32
                mem[_5634 + ceil32(return_data.size)] = _5643
                require _5638 + (32 * _5643) + 32 <= return_data.size
                idx = 0
                s = _5634 + _5638 + 32
                t = _5634 + ceil32(return_data.size) + 32
                while idx < _5643:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6059 = mem[64]
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = 192
                _6091 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + (32 * _6091) + 224
                u = mem[64] + 224
                while idx < _6091:
                    mem[u] = t + -_6059 - 224
                    _6279 = mem[s]
                    _6300 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _6300:
                        mem[t + v + 32] = mem[_6279 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_6300) > _6300:
                        mem[t + _6300 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_6300) + 32
                    u = u + 32
                    continue 
                mem[_6059 + 64] = t - _6059
                _6299 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t + 32 len 32 * _6299] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _6299]
                mem[_6059 + 96] = t + (32 * _6299) + -_6059 + 32
                _6490 = mem[_1081]
                mem[t + (32 * _6299) + 32] = mem[_1081]
                idx = 0
                s = _1081 + 32
                u = t + (32 * _6299) + 64
                while idx < _6490:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_6059 + 128] = t + (32 * _6299) + (32 * _6490) + -_6059 + 64
                _6623 = mem[_2160]
                mem[t + (32 * _6299) + (32 * _6490) + 64] = mem[_2160]
                idx = 0
                s = _2160 + 32
                u = t + (32 * _6299) + (32 * _6490) + 96
                while idx < _6623:
                    t = 0
                    v = mem[s]
                    w = u
                    while t < 2:
                        mem[w] = mem[v]
                        t = t + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + 64
                    continue 
                mem[_6059 + 160] = u - _6059
                _6794 = mem[_5634 + ceil32(return_data.size)]
                mem[u] = mem[_5634 + ceil32(return_data.size)]
                mem[u + 32 len 32 * _6794] = mem[_5634 + ceil32(return_data.size) + 32 len 32 * _6794]
                var171001 = _6794
                var171002 = _5634 + ceil32(return_data.size) + (32 * _6794) + 32
                return memory
                  from mem[64]
                   len u + (32 * _6794) + -mem[64] + 32
            mem[_1081 + 32 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2393] == mem[_2393 + 12 len 20]
                require idx < mem[_1081]
                mem[(32 * idx) + _1081 + 32] = mem[_2393 + 12 len 20]
                idx = idx + 1
                continue 
            _2155 = mem[_1081]
            require mem[_1081] <= test266151307()
            _2161 = mem[64]
            mem[mem[64]] = mem[_1081]
            mem[64] = mem[64] + (32 * _2155) + 32
            if not _2155:
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require idx + 1 < ('cd', 36).length
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _3454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3454] == mem[_3454 + 12 len 20]
                        require ext_code.size(mem[_3454 + 12 len 20])
                        staticcall mem[_3454 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3668 = mem[_3629]
                        require mem[_3629] == mem[_3629 + 18 len 14]
                        _3772 = mem[_3629 + 32]
                        require mem[_3629 + 32] == mem[_3629 + 50 len 14]
                        require mem[_3629 + 64] == mem[_3629 + 92 len 4]
                        require idx < mem[_2161]
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            _3924 = mem[(32 * idx) + _2161 + 32]
                            require idx < mem[_2161]
                            mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_3629 + 50 len 14]
                            mem[_3924] = Mask(112, 0, _3668)
                        else:
                            _3925 = mem[(32 * idx) + _2161 + 32]
                            require idx < mem[_2161]
                            mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_3629 + 18 len 14]
                            mem[_3925] = Mask(112, 0, _3772)
                    else:
                        _3455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3455] == mem[_3455 + 12 len 20]
                        require ext_code.size(mem[_3455 + 12 len 20])
                        staticcall mem[_3455 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3669 = mem[_3630]
                        require mem[_3630] == mem[_3630 + 18 len 14]
                        _3773 = mem[_3630 + 32]
                        require mem[_3630 + 32] == mem[_3630 + 50 len 14]
                        require mem[_3630 + 64] == mem[_3630 + 92 len 4]
                        require idx < mem[_2161]
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _3926 = mem[(32 * idx) + _2161 + 32]
                            require idx < mem[_2161]
                            mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_3630 + 50 len 14]
                            mem[_3926] = Mask(112, 0, _3669)
                        else:
                            _3927 = mem[(32 * idx) + _2161 + 32]
                            require idx < mem[_2161]
                            mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_3630 + 18 len 14]
                            mem[_3927] = Mask(112, 0, _3773)
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = mem[64] + 100
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4220 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4231 = mem[_4220]
                require mem[_4220] <= test266151307()
                require _4220 + mem[_4220] + 31 < _4220 + return_data.size
                _4235 = mem[_4220 + mem[_4220]]
                require mem[_4220 + mem[_4220]] <= test266151307()
                require _4220 + ceil32(return_data.size) + (32 * mem[_4220 + mem[_4220]]) + 32 <= test266151307() and (32 * mem[_4220 + mem[_4220]]) + 32 >= 0
                mem[64] = _4220 + ceil32(return_data.size) + (32 * mem[_4220 + mem[_4220]]) + 32
                mem[_4220 + ceil32(return_data.size)] = _4235
                require _4231 + (32 * _4235) + 32 <= return_data.size
                idx = 0
                s = _4220 + _4231 + 32
                t = _4220 + ceil32(return_data.size) + 32
                while idx < _4235:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5007 = mem[64]
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = 192
                _5027 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + (32 * _5027) + 224
                u = mem[64] + 224
                while idx < _5027:
                    mem[u] = t + -_5007 - 224
                    _5607 = mem[s]
                    _5625 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _5625:
                        mem[t + v + 32] = mem[_5607 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_5625) > _5625:
                        mem[t + _5625 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_5625) + 32
                    u = u + 32
                    continue 
                mem[_5007 + 64] = t - _5007
                _5624 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t + 32 len 32 * _5624] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _5624]
                mem[_5007 + 96] = t + (32 * _5624) + -_5007 + 32
                _6060 = mem[_1081]
                mem[t + (32 * _5624) + 32] = mem[_1081]
                idx = 0
                s = _1081 + 32
                u = t + (32 * _5624) + 64
                while idx < _6060:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_5007 + 128] = t + (32 * _5624) + (32 * _6060) + -_5007 + 64
                _6301 = mem[_2161]
                mem[t + (32 * _5624) + (32 * _6060) + 64] = mem[_2161]
                idx = 0
                s = _2161 + 32
                u = t + (32 * _5624) + (32 * _6060) + 96
                while idx < _6301:
                    t = 0
                    v = mem[s]
                    w = u
                    while t < 2:
                        mem[w] = mem[v]
                        t = t + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + 64
                    continue 
                mem[_5007 + 160] = u - _5007
                _6624 = mem[_4220 + ceil32(return_data.size)]
                mem[u] = mem[_4220 + ceil32(return_data.size)]
                mem[u + 32 len 32 * _6624] = mem[_4220 + ceil32(return_data.size) + 32 len 32 * _6624]
                var165001 = _6624
                var165002 = _4220 + ceil32(return_data.size) + (32 * _6624) + 32
                return memory
                  from mem[64]
                   len u + (32 * _6624) + -mem[64] + 32
            mem[64] = _2161 + (32 * _2155) + 96
            mem[_2161 + (32 * _2155) + 32 len 64] = call.data[calldata.size len 64]
            mem[var64001] = _2161 + (32 * _2155) + 32
            s = var64001
            idx = var64002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_2161 + (32 * _2155) + 32 len 64] = call.data[calldata.size len 64]
                mem[s + 32] = _2161 + (32 * _2155) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5192] == mem[_5192 + 12 len 20]
                    require ext_code.size(mem[_5192 + 12 len 20])
                    staticcall mem[_5192 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5344 = mem[_5316]
                    require mem[_5316] == mem[_5316 + 18 len 14]
                    _5388 = mem[_5316 + 32]
                    require mem[_5316 + 32] == mem[_5316 + 50 len 14]
                    require mem[_5316 + 64] == mem[_5316 + 92 len 4]
                    require idx < mem[_2161]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _5484 = mem[(32 * idx) + _2161 + 32]
                        require idx < mem[_2161]
                        mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_5316 + 50 len 14]
                        mem[_5484] = Mask(112, 0, _5344)
                    else:
                        _5485 = mem[(32 * idx) + _2161 + 32]
                        require idx < mem[_2161]
                        mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_5316 + 18 len 14]
                        mem[_5485] = Mask(112, 0, _5388)
                else:
                    _5193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5193] == mem[_5193 + 12 len 20]
                    require ext_code.size(mem[_5193 + 12 len 20])
                    staticcall mem[_5193 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5345 = mem[_5317]
                    require mem[_5317] == mem[_5317 + 18 len 14]
                    _5389 = mem[_5317 + 32]
                    require mem[_5317 + 32] == mem[_5317 + 50 len 14]
                    require mem[_5317 + 64] == mem[_5317 + 92 len 4]
                    require idx < mem[_2161]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _5486 = mem[(32 * idx) + _2161 + 32]
                        require idx < mem[_2161]
                        mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_5317 + 50 len 14]
                        mem[_5486] = Mask(112, 0, _5345)
                    else:
                        _5487 = mem[(32 * idx) + _2161 + 32]
                        require idx < mem[_2161]
                        mem[mem[(32 * idx) + _2161 + 32] + 32] = mem[_5317 + 18 len 14]
                        mem[_5487] = Mask(112, 0, _5389)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5635 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5639 = mem[_5635]
            require mem[_5635] <= test266151307()
            require _5635 + mem[_5635] + 31 < _5635 + return_data.size
            _5645 = mem[_5635 + mem[_5635]]
            require mem[_5635 + mem[_5635]] <= test266151307()
            require _5635 + ceil32(return_data.size) + (32 * mem[_5635 + mem[_5635]]) + 32 <= test266151307() and (32 * mem[_5635 + mem[_5635]]) + 32 >= 0
            mem[64] = _5635 + ceil32(return_data.size) + (32 * mem[_5635 + mem[_5635]]) + 32
            mem[_5635 + ceil32(return_data.size)] = _5645
            require _5639 + (32 * _5645) + 32 <= return_data.size
            idx = 0
            s = _5635 + _5639 + 32
            t = _5635 + ceil32(return_data.size) + 32
            while idx < _5645:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _6061 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _6093 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _6093) + 224
            u = mem[64] + 224
            while idx < _6093:
                mem[u] = t + -_6061 - 224
                _6281 = mem[s]
                _6303 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _6303:
                    mem[t + v + 32] = mem[_6281 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_6303) > _6303:
                    mem[t + _6303 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_6303) + 32
                u = u + 32
                continue 
            mem[_6061 + 64] = t - _6061
            _6302 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t + 32 len 32 * _6302] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _6302]
            mem[_6061 + 96] = t + (32 * _6302) + -_6061 + 32
            _6491 = mem[_1081]
            mem[t + (32 * _6302) + 32] = mem[_1081]
            idx = 0
            s = _1081 + 32
            u = t + (32 * _6302) + 64
            while idx < _6491:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_6061 + 128] = t + (32 * _6302) + (32 * _6491) + -_6061 + 64
            _6625 = mem[_2161]
            mem[t + (32 * _6302) + (32 * _6491) + 64] = mem[_2161]
            idx = 0
            s = _2161 + 32
            u = t + (32 * _6302) + (32 * _6491) + 96
            while idx < _6625:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_6061 + 160] = u - _6061
            _6795 = mem[_5635 + ceil32(return_data.size)]
            mem[u] = mem[_5635 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6795] = mem[_5635 + ceil32(return_data.size) + 32 len 32 * _6795]
            var172001 = _6795
            var172002 = _5635 + ceil32(return_data.size) + (32 * _6795) + 32
            return memory
              from mem[64]
               len u + (32 * _6795) + -mem[64] + 32
        mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1125 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1129 = mem[_1125]
            require mem[_1125] <= test266151307()
            require _1125 + mem[_1125] + 31 < _1125 + return_data.size
            _1138 = mem[_1125 + mem[_1125]]
            require mem[_1125 + mem[_1125]] <= test266151307()
            require _1125 + ceil32(return_data.size) + ceil32(mem[_1125 + mem[_1125]]) + 32 <= test266151307() and ceil32(mem[_1125 + mem[_1125]]) + 32 >= 0
            mem[64] = _1125 + ceil32(return_data.size) + ceil32(mem[_1125 + mem[_1125]]) + 32
            mem[_1125 + ceil32(return_data.size)] = _1138
            require _1129 + _1138 + 32 <= return_data.size
            s = 0
            while s < _1138:
                mem[_1125 + ceil32(return_data.size) + s + 32] = mem[_1125 + _1129 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1138) <= _1138:
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _1125 + ceil32(return_data.size)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2195] == mem[_2195 + 31 len 1]
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = mem[_2195 + 31 len 1]
            else:
                mem[_1125 + ceil32(return_data.size) + _1138 + 32] = 0
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _1125 + ceil32(return_data.size)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2197] == mem[_2197 + 31 len 1]
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = mem[_2197 + 31 len 1]
            idx = idx + 1
            continue 
        require ('cd', 36).length - 1 <= test266151307()
        _1082 = mem[64]
        mem[mem[64]] = ('cd', 36).length - 1
        mem[64] = mem[64] + (32 * ('cd', 36).length - 1) + 32
        if not ('cd', 36).length - 1:
            s = 0
            while s < ('cd', 36).length - 1:
                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                require s + 1 < ('cd', 36).length
                require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2395] == mem[_2395 + 12 len 20]
                require s < mem[_1082]
                mem[(32 * s) + _1082 + 32] = mem[_2395 + 12 len 20]
                s = s + 1
                continue 
            _2157 = mem[_1082]
            require mem[_1082] <= test266151307()
            _2162 = mem[64]
            mem[mem[64]] = mem[_1082]
            mem[64] = mem[64] + (32 * _2157) + 32
            if not _2157:
                s = 0
                while s < ('cd', 36).length - 1:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    require s + 1 < ('cd', 36).length
                    require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * s + 1) + cd[36] + 36)]):
                        _3457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3457] == mem[_3457 + 12 len 20]
                        require ext_code.size(mem[_3457 + 12 len 20])
                        staticcall mem[_3457 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3674 = mem[_3632]
                        require mem[_3632] == mem[_3632 + 18 len 14]
                        _3774 = mem[_3632 + 32]
                        require mem[_3632 + 32] == mem[_3632 + 50 len 14]
                        require mem[_3632 + 64] == mem[_3632 + 92 len 4]
                        require s < mem[_2162]
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                            _3929 = mem[(32 * s) + _2162 + 32]
                            require s < mem[_2162]
                            mem[mem[(32 * s) + _2162 + 32] + 32] = mem[_3632 + 50 len 14]
                            mem[_3929] = Mask(112, 0, _3674)
                        else:
                            _3930 = mem[(32 * s) + _2162 + 32]
                            require s < mem[_2162]
                            mem[mem[(32 * s) + _2162 + 32] + 32] = mem[_3632 + 18 len 14]
                            mem[_3930] = Mask(112, 0, _3774)
                    else:
                        _3458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3458] == mem[_3458 + 12 len 20]
                        require ext_code.size(mem[_3458 + 12 len 20])
                        staticcall mem[_3458 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3675 = mem[_3633]
                        require mem[_3633] == mem[_3633 + 18 len 14]
                        _3775 = mem[_3633 + 32]
                        require mem[_3633 + 32] == mem[_3633 + 50 len 14]
                        require mem[_3633 + 64] == mem[_3633 + 92 len 4]
                        require s < mem[_2162]
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s + 1) + cd[36] + 36)]):
                            _3931 = mem[(32 * s) + _2162 + 32]
                            require s < mem[_2162]
                            mem[mem[(32 * s) + _2162 + 32] + 32] = mem[_3633 + 50 len 14]
                            mem[_3931] = Mask(112, 0, _3675)
                        else:
                            _3932 = mem[(32 * s) + _2162 + 32]
                            require s < mem[_2162]
                            mem[mem[(32 * s) + _2162 + 32] + 32] = mem[_3633 + 18 len 14]
                            mem[_3932] = Mask(112, 0, _3775)
                    s = s + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 36).length
                s = 0
                t = cd[36] + 36
                u = mem[64] + 100
                while s < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4222 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4232 = mem[_4222]
                require mem[_4222] <= test266151307()
                require _4222 + mem[_4222] + 31 < _4222 + return_data.size
                _4236 = mem[_4222 + mem[_4222]]
                require mem[_4222 + mem[_4222]] <= test266151307()
                require _4222 + ceil32(return_data.size) + (32 * mem[_4222 + mem[_4222]]) + 32 <= test266151307() and (32 * mem[_4222 + mem[_4222]]) + 32 >= 0
                mem[64] = _4222 + ceil32(return_data.size) + (32 * mem[_4222 + mem[_4222]]) + 32
                mem[_4222 + ceil32(return_data.size)] = _4236
                require _4232 + (32 * _4236) + 32 <= return_data.size
                s = 0
                t = _4222 + _4232 + 32
                u = _4222 + ceil32(return_data.size) + 32
                while s < _4236:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _5008 = mem[64]
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = 192
                _5028 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + (32 * _5028) + 224
                u = mem[64] + 224
                while idx < _5028:
                    mem[u] = t + -_5008 - 224
                    _5608 = mem[s]
                    _5627 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _5627:
                        mem[t + v + 32] = mem[_5608 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_5627) > _5627:
                        mem[t + _5627 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_5627) + 32
                    u = u + 32
                    continue 
                mem[_5008 + 64] = t - _5008
                _5626 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
                mem[t + 32 len 32 * _5626] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _5626]
                mem[_5008 + 96] = t + (32 * _5626) + -_5008 + 32
                _6062 = mem[_1082]
                mem[t + (32 * _5626) + 32] = mem[_1082]
                idx = 0
                s = _1082 + 32
                u = t + (32 * _5626) + 64
                while idx < _6062:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_5008 + 128] = t + (32 * _5626) + (32 * _6062) + -_5008 + 64
                _6304 = mem[_2162]
                mem[t + (32 * _5626) + (32 * _6062) + 64] = mem[_2162]
                idx = 0
                s = _2162 + 32
                u = t + (32 * _5626) + (32 * _6062) + 96
                while idx < _6304:
                    t = 0
                    v = mem[s]
                    w = u
                    while t < 2:
                        mem[w] = mem[v]
                        t = t + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + 64
                    continue 
                mem[_5008 + 160] = u - _5008
                _6626 = mem[_4222 + ceil32(return_data.size)]
                mem[u] = mem[_4222 + ceil32(return_data.size)]
                mem[u + 32 len 32 * _6626] = mem[_4222 + ceil32(return_data.size) + 32 len 32 * _6626]
                var165001 = _6626
                var165002 = _4222 + ceil32(return_data.size) + (32 * _6626) + 32
                return memory
                  from mem[64]
                   len u + (32 * _6626) + -mem[64] + 32
            mem[64] = _2162 + (32 * _2157) + 96
            mem[_2162 + (32 * _2157) + 32 len 64] = call.data[calldata.size len 64]
            mem[var64001] = _2162 + (32 * _2157) + 32
            s = var64001
            idx = var64002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_2162 + (32 * _2157) + 32 len 64] = call.data[calldata.size len 64]
                mem[s + 32] = _2162 + (32 * _2157) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5196] == mem[_5196 + 12 len 20]
                    require ext_code.size(mem[_5196 + 12 len 20])
                    staticcall mem[_5196 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5346 = mem[_5318]
                    require mem[_5318] == mem[_5318 + 18 len 14]
                    _5390 = mem[_5318 + 32]
                    require mem[_5318 + 32] == mem[_5318 + 50 len 14]
                    require mem[_5318 + 64] == mem[_5318 + 92 len 4]
                    require idx < mem[_2162]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _5489 = mem[(32 * idx) + _2162 + 32]
                        require idx < mem[_2162]
                        mem[mem[(32 * idx) + _2162 + 32] + 32] = mem[_5318 + 50 len 14]
                        mem[_5489] = Mask(112, 0, _5346)
                    else:
                        _5490 = mem[(32 * idx) + _2162 + 32]
                        require idx < mem[_2162]
                        mem[mem[(32 * idx) + _2162 + 32] + 32] = mem[_5318 + 18 len 14]
                        mem[_5490] = Mask(112, 0, _5390)
                else:
                    _5197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5197] == mem[_5197 + 12 len 20]
                    require ext_code.size(mem[_5197 + 12 len 20])
                    staticcall mem[_5197 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5347 = mem[_5319]
                    require mem[_5319] == mem[_5319 + 18 len 14]
                    _5391 = mem[_5319 + 32]
                    require mem[_5319 + 32] == mem[_5319 + 50 len 14]
                    require mem[_5319 + 64] == mem[_5319 + 92 len 4]
                    require idx < mem[_2162]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _5491 = mem[(32 * idx) + _2162 + 32]
                        require idx < mem[_2162]
                        mem[mem[(32 * idx) + _2162 + 32] + 32] = mem[_5319 + 50 len 14]
                        mem[_5491] = Mask(112, 0, _5347)
                    else:
                        _5492 = mem[(32 * idx) + _2162 + 32]
                        require idx < mem[_2162]
                        mem[mem[(32 * idx) + _2162 + 32] + 32] = mem[_5319 + 18 len 14]
                        mem[_5492] = Mask(112, 0, _5391)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5636 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5640 = mem[_5636]
            require mem[_5636] <= test266151307()
            require _5636 + mem[_5636] + 31 < _5636 + return_data.size
            _5647 = mem[_5636 + mem[_5636]]
            require mem[_5636 + mem[_5636]] <= test266151307()
            require _5636 + ceil32(return_data.size) + (32 * mem[_5636 + mem[_5636]]) + 32 <= test266151307() and (32 * mem[_5636 + mem[_5636]]) + 32 >= 0
            mem[64] = _5636 + ceil32(return_data.size) + (32 * mem[_5636 + mem[_5636]]) + 32
            mem[_5636 + ceil32(return_data.size)] = _5647
            require _5640 + (32 * _5647) + 32 <= return_data.size
            idx = 0
            s = _5636 + _5640 + 32
            t = _5636 + ceil32(return_data.size) + 32
            while idx < _5647:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _6063 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _6095 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _6095) + 224
            u = mem[64] + 224
            while idx < _6095:
                mem[u] = t + -_6063 - 224
                _6283 = mem[s]
                _6306 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _6306:
                    mem[t + v + 32] = mem[_6283 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_6306) > _6306:
                    mem[t + _6306 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_6306) + 32
                u = u + 32
                continue 
            mem[_6063 + 64] = t - _6063
            _6305 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t + 32 len 32 * _6305] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _6305]
            mem[_6063 + 96] = t + (32 * _6305) + -_6063 + 32
            _6492 = mem[_1082]
            mem[t + (32 * _6305) + 32] = mem[_1082]
            idx = 0
            s = _1082 + 32
            u = t + (32 * _6305) + 64
            while idx < _6492:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_6063 + 128] = t + (32 * _6305) + (32 * _6492) + -_6063 + 64
            _6627 = mem[_2162]
            mem[t + (32 * _6305) + (32 * _6492) + 64] = mem[_2162]
            idx = 0
            s = _2162 + 32
            u = t + (32 * _6305) + (32 * _6492) + 96
            while idx < _6627:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_6063 + 160] = u - _6063
            _6796 = mem[_5636 + ceil32(return_data.size)]
            mem[u] = mem[_5636 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6796] = mem[_5636 + ceil32(return_data.size) + 32 len 32 * _6796]
            var172001 = _6796
            var172002 = _5636 + ceil32(return_data.size) + (32 * _6796) + 32
            return memory
              from mem[64]
               len u + (32 * _6796) + -mem[64] + 32
        mem[_1082 + 32 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2397] == mem[_2397 + 12 len 20]
            require idx < mem[_1082]
            mem[(32 * idx) + _1082 + 32] = mem[_2397 + 12 len 20]
            idx = idx + 1
            continue 
        _2158 = mem[_1082]
        require mem[_1082] <= test266151307()
        _2163 = mem[64]
        mem[mem[64]] = mem[_1082]
        mem[64] = mem[64] + (32 * _2158) + 32
        if not _2158:
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _3460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3460] == mem[_3460 + 12 len 20]
                    require ext_code.size(mem[_3460 + 12 len 20])
                    staticcall mem[_3460 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3680 = mem[_3635]
                    require mem[_3635] == mem[_3635 + 18 len 14]
                    _3776 = mem[_3635 + 32]
                    require mem[_3635 + 32] == mem[_3635 + 50 len 14]
                    require mem[_3635 + 64] == mem[_3635 + 92 len 4]
                    require idx < mem[_2163]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _3934 = mem[(32 * idx) + _2163 + 32]
                        require idx < mem[_2163]
                        mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_3635 + 50 len 14]
                        mem[_3934] = Mask(112, 0, _3680)
                    else:
                        _3935 = mem[(32 * idx) + _2163 + 32]
                        require idx < mem[_2163]
                        mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_3635 + 18 len 14]
                        mem[_3935] = Mask(112, 0, _3776)
                else:
                    _3461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3461] == mem[_3461 + 12 len 20]
                    require ext_code.size(mem[_3461 + 12 len 20])
                    staticcall mem[_3461 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3681 = mem[_3636]
                    require mem[_3636] == mem[_3636 + 18 len 14]
                    _3777 = mem[_3636 + 32]
                    require mem[_3636 + 32] == mem[_3636 + 50 len 14]
                    require mem[_3636 + 64] == mem[_3636 + 92 len 4]
                    require idx < mem[_2163]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _3936 = mem[(32 * idx) + _2163 + 32]
                        require idx < mem[_2163]
                        mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_3636 + 50 len 14]
                        mem[_3936] = Mask(112, 0, _3681)
                    else:
                        _3937 = mem[(32 * idx) + _2163 + 32]
                        require idx < mem[_2163]
                        mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_3636 + 18 len 14]
                        mem[_3937] = Mask(112, 0, _3777)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4224 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4233 = mem[_4224]
            require mem[_4224] <= test266151307()
            require _4224 + mem[_4224] + 31 < _4224 + return_data.size
            _4237 = mem[_4224 + mem[_4224]]
            require mem[_4224 + mem[_4224]] <= test266151307()
            require _4224 + ceil32(return_data.size) + (32 * mem[_4224 + mem[_4224]]) + 32 <= test266151307() and (32 * mem[_4224 + mem[_4224]]) + 32 >= 0
            mem[64] = _4224 + ceil32(return_data.size) + (32 * mem[_4224 + mem[_4224]]) + 32
            mem[_4224 + ceil32(return_data.size)] = _4237
            require _4233 + (32 * _4237) + 32 <= return_data.size
            idx = 0
            s = _4224 + _4233 + 32
            t = _4224 + ceil32(return_data.size) + 32
            while idx < _4237:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _5009 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _5029 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _5029) + 224
            u = mem[64] + 224
            while idx < _5029:
                mem[u] = t + -_5009 - 224
                _5609 = mem[s]
                _5629 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _5629:
                    mem[t + v + 32] = mem[_5609 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_5629) > _5629:
                    mem[t + _5629 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_5629) + 32
                u = u + 32
                continue 
            mem[_5009 + 64] = t - _5009
            _5628 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
            mem[t + 32 len 32 * _5628] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _5628]
            mem[_5009 + 96] = t + (32 * _5628) + -_5009 + 32
            _6064 = mem[_1082]
            mem[t + (32 * _5628) + 32] = mem[_1082]
            idx = 0
            s = _1082 + 32
            u = t + (32 * _5628) + 64
            while idx < _6064:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_5009 + 128] = t + (32 * _5628) + (32 * _6064) + -_5009 + 64
            _6307 = mem[_2163]
            mem[t + (32 * _5628) + (32 * _6064) + 64] = mem[_2163]
            idx = 0
            s = _2163 + 32
            u = t + (32 * _5628) + (32 * _6064) + 96
            while idx < _6307:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_5009 + 160] = u - _5009
            _6628 = mem[_4224 + ceil32(return_data.size)]
            mem[u] = mem[_4224 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6628] = mem[_4224 + ceil32(return_data.size) + 32 len 32 * _6628]
            var166001 = _6628
            var166002 = _4224 + ceil32(return_data.size) + (32 * _6628) + 32
            return memory
              from mem[64]
               len u + (32 * _6628) + -mem[64] + 32
        mem[64] = _2163 + (32 * _2158) + 96
        mem[_2163 + (32 * _2158) + 32 len 64] = call.data[calldata.size len 64]
        mem[var65001] = _2163 + (32 * _2158) + 32
        s = var65001
        idx = var65002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_2163 + (32 * _2158) + 32 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = _2163 + (32 * _2158) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _5200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5200] == mem[_5200 + 12 len 20]
                require ext_code.size(mem[_5200 + 12 len 20])
                staticcall mem[_5200 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5348 = mem[_5320]
                require mem[_5320] == mem[_5320 + 18 len 14]
                _5392 = mem[_5320 + 32]
                require mem[_5320 + 32] == mem[_5320 + 50 len 14]
                require mem[_5320 + 64] == mem[_5320 + 92 len 4]
                require idx < mem[_2163]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    _5494 = mem[(32 * idx) + _2163 + 32]
                    require idx < mem[_2163]
                    mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_5320 + 50 len 14]
                    mem[_5494] = Mask(112, 0, _5348)
                else:
                    _5495 = mem[(32 * idx) + _2163 + 32]
                    require idx < mem[_2163]
                    mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_5320 + 18 len 14]
                    mem[_5495] = Mask(112, 0, _5392)
            else:
                _5201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5201] == mem[_5201 + 12 len 20]
                require ext_code.size(mem[_5201 + 12 len 20])
                staticcall mem[_5201 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5349 = mem[_5321]
                require mem[_5321] == mem[_5321 + 18 len 14]
                _5393 = mem[_5321 + 32]
                require mem[_5321 + 32] == mem[_5321 + 50 len 14]
                require mem[_5321 + 64] == mem[_5321 + 92 len 4]
                require idx < mem[_2163]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5496 = mem[(32 * idx) + _2163 + 32]
                    require idx < mem[_2163]
                    mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_5321 + 50 len 14]
                    mem[_5496] = Mask(112, 0, _5349)
                else:
                    _5497 = mem[(32 * idx) + _2163 + 32]
                    require idx < mem[_2163]
                    mem[mem[(32 * idx) + _2163 + 32] + 32] = mem[_5321 + 18 len 14]
                    mem[_5497] = Mask(112, 0, _5393)
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 100
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5637 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5641 = mem[_5637]
        require mem[_5637] <= test266151307()
        require _5637 + mem[_5637] + 31 < _5637 + return_data.size
        _5649 = mem[_5637 + mem[_5637]]
        require mem[_5637 + mem[_5637]] <= test266151307()
        require _5637 + ceil32(return_data.size) + (32 * mem[_5637 + mem[_5637]]) + 32 <= test266151307() and (32 * mem[_5637 + mem[_5637]]) + 32 >= 0
        mem[64] = _5637 + ceil32(return_data.size) + (32 * mem[_5637 + mem[_5637]]) + 32
        mem[_5637 + ceil32(return_data.size)] = _5649
        require _5641 + (32 * _5649) + 32 <= return_data.size
        idx = 0
        s = _5637 + _5641 + 32
        t = _5637 + ceil32(return_data.size) + 32
        while idx < _5649:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _6065 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 192
        _6097 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _6097) + 224
        u = mem[64] + 224
        while idx < _6097:
            mem[u] = t + -_6065 - 224
            _6285 = mem[s]
            _6309 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _6309:
                mem[t + v + 32] = mem[_6285 + v + 32]
                v = v + 32
                continue 
            if ceil32(_6309) > _6309:
                mem[t + _6309 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_6309) + 32
            u = u + 32
            continue 
        mem[_6065 + 64] = t - _6065
        _6308 = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
        mem[t] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128]
        mem[t + 32 len 32 * _6308] = mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160 len 32 * _6308]
        mem[_6065 + 96] = t + (32 * _6308) + -_6065 + 32
        _6493 = mem[_1082]
        mem[t + (32 * _6308) + 32] = mem[_1082]
        idx = 0
        s = _1082 + 32
        u = t + (32 * _6308) + 64
        while idx < _6493:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_6065 + 128] = t + (32 * _6308) + (32 * _6493) + -_6065 + 64
        _6629 = mem[_2163]
        mem[t + (32 * _6308) + (32 * _6493) + 64] = mem[_2163]
        idx = 0
        s = _2163 + 32
        u = t + (32 * _6308) + (32 * _6493) + 96
        while idx < _6629:
            t = 0
            v = mem[s]
            w = u
            while t < 2:
                mem[w] = mem[v]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            u = u + 64
            continue 
        mem[_6065 + 160] = u - _6065
        _6797 = mem[_5637 + ceil32(return_data.size)]
        mem[u] = mem[_5637 + ceil32(return_data.size)]
        mem[u + 32 len 32 * _6797] = mem[_5637 + ceil32(return_data.size) + 32 len 32 * _6797]
        var173001 = _6797
        var173002 = _5637 + ceil32(return_data.size) + (32 * _6797) + 32
        return memory
          from mem[64]
           len u + (32 * _6797) + -mem[64] + 32
    mem[ceil32(return_data.size) + 128] = 96
    s = ceil32(return_data.size) + 128
    idx = ('cd', 36).length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    require ('cd', 36).length <= test266151307()
    _1083 = mem[64]
    mem[mem[64]] = ('cd', 36).length
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2222 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2226 = mem[_2222]
            require mem[_2222] <= test266151307()
            require _2222 + mem[_2222] + 31 < _2222 + return_data.size
            _2238 = mem[_2222 + mem[_2222]]
            require mem[_2222 + mem[_2222]] <= test266151307()
            require _2222 + ceil32(return_data.size) + ceil32(mem[_2222 + mem[_2222]]) + 32 <= test266151307() and ceil32(mem[_2222 + mem[_2222]]) + 32 >= 0
            mem[64] = _2222 + ceil32(return_data.size) + ceil32(mem[_2222 + mem[_2222]]) + 32
            mem[_2222 + ceil32(return_data.size)] = _2238
            require _2226 + _2238 + 32 <= return_data.size
            s = 0
            while s < _2238:
                mem[_2222 + ceil32(return_data.size) + s + 32] = mem[_2222 + _2226 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2238) <= _2238:
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _2222 + ceil32(return_data.size)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3254] == mem[_3254 + 31 len 1]
                require idx < mem[_1083]
                mem[(32 * idx) + _1083 + 32] = mem[_3254 + 31 len 1]
            else:
                mem[_2222 + ceil32(return_data.size) + _2238 + 32] = 0
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _2222 + ceil32(return_data.size)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3256] == mem[_3256 + 31 len 1]
                require idx < mem[_1083]
                mem[(32 * idx) + _1083 + 32] = mem[_3256 + 31 len 1]
            idx = idx + 1
            continue 
        require ('cd', 36).length - 1 <= test266151307()
        _2164 = mem[64]
        mem[mem[64]] = ('cd', 36).length - 1
        mem[64] = mem[64] + (32 * ('cd', 36).length - 1) + 32
        if not ('cd', 36).length - 1:
            s = 0
            while s < ('cd', 36).length - 1:
                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                require s + 1 < ('cd', 36).length
                require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3423] == mem[_3423 + 12 len 20]
                require s < mem[_2164]
                mem[(32 * s) + _2164 + 32] = mem[_3423 + 12 len 20]
                s = s + 1
                continue 
            _3220 = mem[_2164]
            require mem[_2164] <= test266151307()
            _3226 = mem[64]
            mem[mem[64]] = mem[_2164]
            mem[64] = mem[64] + (32 * _3220) + 32
            if not _3220:
                s = 0
                while s < ('cd', 36).length - 1:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    require s + 1 < ('cd', 36).length
                    require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * s + 1) + cd[36] + 36)]):
                        _4403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4403] == mem[_4403 + 12 len 20]
                        require ext_code.size(mem[_4403 + 12 len 20])
                        staticcall mem[_4403 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _4586 = mem[_4550]
                        require mem[_4550] == mem[_4550 + 18 len 14]
                        _4666 = mem[_4550 + 32]
                        require mem[_4550 + 32] == mem[_4550 + 50 len 14]
                        require mem[_4550 + 64] == mem[_4550 + 92 len 4]
                        require s < mem[_3226]
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                            _4787 = mem[(32 * s) + _3226 + 32]
                            require s < mem[_3226]
                            mem[mem[(32 * s) + _3226 + 32] + 32] = mem[_4550 + 50 len 14]
                            mem[_4787] = Mask(112, 0, _4586)
                        else:
                            _4788 = mem[(32 * s) + _3226 + 32]
                            require s < mem[_3226]
                            mem[mem[(32 * s) + _3226 + 32] + 32] = mem[_4550 + 18 len 14]
                            mem[_4788] = Mask(112, 0, _4666)
                    else:
                        _4404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4404] == mem[_4404 + 12 len 20]
                        require ext_code.size(mem[_4404 + 12 len 20])
                        staticcall mem[_4404 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _4587 = mem[_4551]
                        require mem[_4551] == mem[_4551 + 18 len 14]
                        _4667 = mem[_4551 + 32]
                        require mem[_4551 + 32] == mem[_4551 + 50 len 14]
                        require mem[_4551 + 64] == mem[_4551 + 92 len 4]
                        require s < mem[_3226]
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s + 1) + cd[36] + 36)]):
                            _4789 = mem[(32 * s) + _3226 + 32]
                            require s < mem[_3226]
                            mem[mem[(32 * s) + _3226 + 32] + 32] = mem[_4551 + 50 len 14]
                            mem[_4789] = Mask(112, 0, _4587)
                        else:
                            _4790 = mem[(32 * s) + _3226 + 32]
                            require s < mem[_3226]
                            mem[mem[(32 * s) + _3226 + 32] + 32] = mem[_4551 + 18 len 14]
                            mem[_4790] = Mask(112, 0, _4667)
                    s = s + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 36).length
                s = 0
                t = cd[36] + 36
                u = mem[64] + 100
                while s < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5010 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5018 = mem[_5010]
                require mem[_5010] <= test266151307()
                require _5010 + mem[_5010] + 31 < _5010 + return_data.size
                _5022 = mem[_5010 + mem[_5010]]
                require mem[_5010 + mem[_5010]] <= test266151307()
                require _5010 + ceil32(return_data.size) + (32 * mem[_5010 + mem[_5010]]) + 32 <= test266151307() and (32 * mem[_5010 + mem[_5010]]) + 32 >= 0
                mem[64] = _5010 + ceil32(return_data.size) + (32 * mem[_5010 + mem[_5010]]) + 32
                mem[_5010 + ceil32(return_data.size)] = _5022
                require _5018 + (32 * _5022) + 32 <= return_data.size
                s = 0
                t = _5010 + _5018 + 32
                u = _5010 + ceil32(return_data.size) + 32
                while s < _5022:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _5630 = mem[64]
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = 192
                _5654 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + (32 * _5654) + 224
                u = mem[64] + 224
                while idx < _5654:
                    mem[u] = t + -_5630 - 224
                    _6046 = mem[s]
                    _6067 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _6067:
                        mem[t + v + 32] = mem[_6046 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_6067) > _6067:
                        mem[t + _6067 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_6067) + 32
                    u = u + 32
                    continue 
                mem[_5630 + 64] = t - _5630
                _6066 = mem[_1083]
                mem[t] = mem[_1083]
                mem[t + 32 len 32 * _6066] = mem[_1083 + 32 len 32 * _6066]
                mem[_5630 + 96] = t + (32 * _6066) + -_5630 + 32
                _6310 = mem[_2164]
                mem[t + (32 * _6066) + 32] = mem[_2164]
                idx = 0
                s = _2164 + 32
                u = t + (32 * _6066) + 64
                while idx < _6310:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_5630 + 128] = t + (32 * _6066) + (32 * _6310) + -_5630 + 64
                _6494 = mem[_3226]
                mem[t + (32 * _6066) + (32 * _6310) + 64] = mem[_3226]
                idx = 0
                s = _3226 + 32
                u = t + (32 * _6066) + (32 * _6310) + 96
                while idx < _6494:
                    t = 0
                    v = mem[s]
                    w = u
                    while t < 2:
                        mem[w] = mem[v]
                        t = t + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + 64
                    continue 
                mem[_5630 + 160] = u - _5630
                _6726 = mem[_5010 + ceil32(return_data.size)]
                mem[u] = mem[_5010 + ceil32(return_data.size)]
                mem[u + 32 len 32 * _6726] = mem[_5010 + ceil32(return_data.size) + 32 len 32 * _6726]
                var168001 = _6726
                var168002 = _5010 + ceil32(return_data.size) + (32 * _6726) + 32
                return memory
                  from mem[64]
                   len u + (32 * _6726) + -mem[64] + 32
            mem[64] = _3226 + (32 * _3220) + 96
            mem[_3226 + (32 * _3220) + 32 len 64] = call.data[calldata.size len 64]
            mem[var67001] = _3226 + (32 * _3220) + 32
            s = var67001
            idx = var67002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_3226 + (32 * _3220) + 32 len 64] = call.data[calldata.size len 64]
                mem[s + 32] = _3226 + (32 * _3220) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5808] == mem[_5808 + 12 len 20]
                    require ext_code.size(mem[_5808 + 12 len 20])
                    staticcall mem[_5808 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5894 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5902 = mem[_5894]
                    require mem[_5894] == mem[_5894 + 18 len 14]
                    _5926 = mem[_5894 + 32]
                    require mem[_5894 + 32] == mem[_5894 + 50 len 14]
                    require mem[_5894 + 64] == mem[_5894 + 92 len 4]
                    require idx < mem[_3226]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _5987 = mem[(32 * idx) + _3226 + 32]
                        require idx < mem[_3226]
                        mem[mem[(32 * idx) + _3226 + 32] + 32] = mem[_5894 + 50 len 14]
                        mem[_5987] = Mask(112, 0, _5902)
                    else:
                        _5988 = mem[(32 * idx) + _3226 + 32]
                        require idx < mem[_3226]
                        mem[mem[(32 * idx) + _3226 + 32] + 32] = mem[_5894 + 18 len 14]
                        mem[_5988] = Mask(112, 0, _5926)
                else:
                    _5809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5809] == mem[_5809 + 12 len 20]
                    require ext_code.size(mem[_5809 + 12 len 20])
                    staticcall mem[_5809 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5895 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _5903 = mem[_5895]
                    require mem[_5895] == mem[_5895 + 18 len 14]
                    _5927 = mem[_5895 + 32]
                    require mem[_5895 + 32] == mem[_5895 + 50 len 14]
                    require mem[_5895 + 64] == mem[_5895 + 92 len 4]
                    require idx < mem[_3226]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _5989 = mem[(32 * idx) + _3226 + 32]
                        require idx < mem[_3226]
                        mem[mem[(32 * idx) + _3226 + 32] + 32] = mem[_5895 + 50 len 14]
                        mem[_5989] = Mask(112, 0, _5903)
                    else:
                        _5990 = mem[(32 * idx) + _3226 + 32]
                        require idx < mem[_3226]
                        mem[mem[(32 * idx) + _3226 + 32] + 32] = mem[_5895 + 18 len 14]
                        mem[_5990] = Mask(112, 0, _5927)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6074 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6078 = mem[_6074]
            require mem[_6074] <= test266151307()
            require _6074 + mem[_6074] + 31 < _6074 + return_data.size
            _6083 = mem[_6074 + mem[_6074]]
            require mem[_6074 + mem[_6074]] <= test266151307()
            require _6074 + ceil32(return_data.size) + (32 * mem[_6074 + mem[_6074]]) + 32 <= test266151307() and (32 * mem[_6074 + mem[_6074]]) + 32 >= 0
            mem[64] = _6074 + ceil32(return_data.size) + (32 * mem[_6074 + mem[_6074]]) + 32
            mem[_6074 + ceil32(return_data.size)] = _6083
            require _6078 + (32 * _6083) + 32 <= return_data.size
            idx = 0
            s = _6074 + _6078 + 32
            t = _6074 + ceil32(return_data.size) + 32
            while idx < _6083:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _6311 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _6331 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _6331) + 224
            u = mem[64] + 224
            while idx < _6331:
                mem[u] = t + -_6311 - 224
                _6479 = mem[s]
                _6496 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _6496:
                    mem[t + v + 32] = mem[_6479 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_6496) > _6496:
                    mem[t + _6496 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_6496) + 32
                u = u + 32
                continue 
            mem[_6311 + 64] = t - _6311
            _6495 = mem[_1083]
            mem[t] = mem[_1083]
            mem[t + 32 len 32 * _6495] = mem[_1083 + 32 len 32 * _6495]
            mem[_6311 + 96] = t + (32 * _6495) + -_6311 + 32
            _6630 = mem[_2164]
            mem[t + (32 * _6495) + 32] = mem[_2164]
            idx = 0
            s = _2164 + 32
            u = t + (32 * _6495) + 64
            while idx < _6630:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_6311 + 128] = t + (32 * _6495) + (32 * _6630) + -_6311 + 64
            _6727 = mem[_3226]
            mem[t + (32 * _6495) + (32 * _6630) + 64] = mem[_3226]
            idx = 0
            s = _3226 + 32
            u = t + (32 * _6495) + (32 * _6630) + 96
            while idx < _6727:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_6311 + 160] = u - _6311
            _6826 = mem[_6074 + ceil32(return_data.size)]
            mem[u] = mem[_6074 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6826] = mem[_6074 + ceil32(return_data.size) + 32 len 32 * _6826]
            var175001 = _6826
            var175002 = _6074 + ceil32(return_data.size) + (32 * _6826) + 32
            return memory
              from mem[64]
               len u + (32 * _6826) + -mem[64] + 32
        mem[_2164 + 32 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3425] == mem[_3425 + 12 len 20]
            require idx < mem[_2164]
            mem[(32 * idx) + _2164 + 32] = mem[_3425 + 12 len 20]
            idx = idx + 1
            continue 
        _3221 = mem[_2164]
        require mem[_2164] <= test266151307()
        _3227 = mem[64]
        mem[mem[64]] = mem[_2164]
        mem[64] = mem[64] + (32 * _3221) + 32
        if not _3221:
            idx = 0
            while idx < ('cd', 36).length - 1:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require idx + 1 < ('cd', 36).length
                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _4406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4406] == mem[_4406 + 12 len 20]
                    require ext_code.size(mem[_4406 + 12 len 20])
                    staticcall mem[_4406 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _4592 = mem[_4553]
                    require mem[_4553] == mem[_4553 + 18 len 14]
                    _4668 = mem[_4553 + 32]
                    require mem[_4553 + 32] == mem[_4553 + 50 len 14]
                    require mem[_4553 + 64] == mem[_4553 + 92 len 4]
                    require idx < mem[_3227]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _4792 = mem[(32 * idx) + _3227 + 32]
                        require idx < mem[_3227]
                        mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_4553 + 50 len 14]
                        mem[_4792] = Mask(112, 0, _4592)
                    else:
                        _4793 = mem[(32 * idx) + _3227 + 32]
                        require idx < mem[_3227]
                        mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_4553 + 18 len 14]
                        mem[_4793] = Mask(112, 0, _4668)
                else:
                    _4407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4407] == mem[_4407 + 12 len 20]
                    require ext_code.size(mem[_4407 + 12 len 20])
                    staticcall mem[_4407 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _4593 = mem[_4554]
                    require mem[_4554] == mem[_4554 + 18 len 14]
                    _4669 = mem[_4554 + 32]
                    require mem[_4554 + 32] == mem[_4554 + 50 len 14]
                    require mem[_4554 + 64] == mem[_4554 + 92 len 4]
                    require idx < mem[_3227]
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _4794 = mem[(32 * idx) + _3227 + 32]
                        require idx < mem[_3227]
                        mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_4554 + 50 len 14]
                        mem[_4794] = Mask(112, 0, _4593)
                    else:
                        _4795 = mem[(32 * idx) + _3227 + 32]
                        require idx < mem[_3227]
                        mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_4554 + 18 len 14]
                        mem[_4795] = Mask(112, 0, _4669)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5012 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5019 = mem[_5012]
            require mem[_5012] <= test266151307()
            require _5012 + mem[_5012] + 31 < _5012 + return_data.size
            _5023 = mem[_5012 + mem[_5012]]
            require mem[_5012 + mem[_5012]] <= test266151307()
            require _5012 + ceil32(return_data.size) + (32 * mem[_5012 + mem[_5012]]) + 32 <= test266151307() and (32 * mem[_5012 + mem[_5012]]) + 32 >= 0
            mem[64] = _5012 + ceil32(return_data.size) + (32 * mem[_5012 + mem[_5012]]) + 32
            mem[_5012 + ceil32(return_data.size)] = _5023
            require _5019 + (32 * _5023) + 32 <= return_data.size
            idx = 0
            s = _5012 + _5019 + 32
            t = _5012 + ceil32(return_data.size) + 32
            while idx < _5023:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _5631 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _5655 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _5655) + 224
            u = mem[64] + 224
            while idx < _5655:
                mem[u] = t + -_5631 - 224
                _6047 = mem[s]
                _6069 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _6069:
                    mem[t + v + 32] = mem[_6047 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_6069) > _6069:
                    mem[t + _6069 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_6069) + 32
                u = u + 32
                continue 
            mem[_5631 + 64] = t - _5631
            _6068 = mem[_1083]
            mem[t] = mem[_1083]
            mem[t + 32 len 32 * _6068] = mem[_1083 + 32 len 32 * _6068]
            mem[_5631 + 96] = t + (32 * _6068) + -_5631 + 32
            _6312 = mem[_2164]
            mem[t + (32 * _6068) + 32] = mem[_2164]
            idx = 0
            s = _2164 + 32
            u = t + (32 * _6068) + 64
            while idx < _6312:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_5631 + 128] = t + (32 * _6068) + (32 * _6312) + -_5631 + 64
            _6497 = mem[_3227]
            mem[t + (32 * _6068) + (32 * _6312) + 64] = mem[_3227]
            idx = 0
            s = _3227 + 32
            u = t + (32 * _6068) + (32 * _6312) + 96
            while idx < _6497:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_5631 + 160] = u - _5631
            _6728 = mem[_5012 + ceil32(return_data.size)]
            mem[u] = mem[_5012 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6728] = mem[_5012 + ceil32(return_data.size) + 32 len 32 * _6728]
            var169001 = _6728
            var169002 = _5012 + ceil32(return_data.size) + (32 * _6728) + 32
            return memory
              from mem[64]
               len u + (32 * _6728) + -mem[64] + 32
        mem[64] = _3227 + (32 * _3221) + 96
        mem[_3227 + (32 * _3221) + 32 len 64] = call.data[calldata.size len 64]
        mem[var68001] = _3227 + (32 * _3221) + 32
        s = var68001
        idx = var68002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_3227 + (32 * _3221) + 32 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = _3227 + (32 * _3221) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _5812 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5812] == mem[_5812 + 12 len 20]
                require ext_code.size(mem[_5812 + 12 len 20])
                staticcall mem[_5812 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5904 = mem[_5896]
                require mem[_5896] == mem[_5896 + 18 len 14]
                _5928 = mem[_5896 + 32]
                require mem[_5896 + 32] == mem[_5896 + 50 len 14]
                require mem[_5896 + 64] == mem[_5896 + 92 len 4]
                require idx < mem[_3227]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    _5992 = mem[(32 * idx) + _3227 + 32]
                    require idx < mem[_3227]
                    mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_5896 + 50 len 14]
                    mem[_5992] = Mask(112, 0, _5904)
                else:
                    _5993 = mem[(32 * idx) + _3227 + 32]
                    require idx < mem[_3227]
                    mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_5896 + 18 len 14]
                    mem[_5993] = Mask(112, 0, _5928)
            else:
                _5813 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5813] == mem[_5813 + 12 len 20]
                require ext_code.size(mem[_5813 + 12 len 20])
                staticcall mem[_5813 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5905 = mem[_5897]
                require mem[_5897] == mem[_5897 + 18 len 14]
                _5929 = mem[_5897 + 32]
                require mem[_5897 + 32] == mem[_5897 + 50 len 14]
                require mem[_5897 + 64] == mem[_5897 + 92 len 4]
                require idx < mem[_3227]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5994 = mem[(32 * idx) + _3227 + 32]
                    require idx < mem[_3227]
                    mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_5897 + 50 len 14]
                    mem[_5994] = Mask(112, 0, _5905)
                else:
                    _5995 = mem[(32 * idx) + _3227 + 32]
                    require idx < mem[_3227]
                    mem[mem[(32 * idx) + _3227 + 32] + 32] = mem[_5897 + 18 len 14]
                    mem[_5995] = Mask(112, 0, _5929)
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 100
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6075 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6079 = mem[_6075]
        require mem[_6075] <= test266151307()
        require _6075 + mem[_6075] + 31 < _6075 + return_data.size
        _6085 = mem[_6075 + mem[_6075]]
        require mem[_6075 + mem[_6075]] <= test266151307()
        require _6075 + ceil32(return_data.size) + (32 * mem[_6075 + mem[_6075]]) + 32 <= test266151307() and (32 * mem[_6075 + mem[_6075]]) + 32 >= 0
        mem[64] = _6075 + ceil32(return_data.size) + (32 * mem[_6075 + mem[_6075]]) + 32
        mem[_6075 + ceil32(return_data.size)] = _6085
        require _6079 + (32 * _6085) + 32 <= return_data.size
        idx = 0
        s = _6075 + _6079 + 32
        t = _6075 + ceil32(return_data.size) + 32
        while idx < _6085:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _6313 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 192
        _6333 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _6333) + 224
        u = mem[64] + 224
        while idx < _6333:
            mem[u] = t + -_6313 - 224
            _6481 = mem[s]
            _6499 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _6499:
                mem[t + v + 32] = mem[_6481 + v + 32]
                v = v + 32
                continue 
            if ceil32(_6499) > _6499:
                mem[t + _6499 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_6499) + 32
            u = u + 32
            continue 
        mem[_6313 + 64] = t - _6313
        _6498 = mem[_1083]
        mem[t] = mem[_1083]
        mem[t + 32 len 32 * _6498] = mem[_1083 + 32 len 32 * _6498]
        mem[_6313 + 96] = t + (32 * _6498) + -_6313 + 32
        _6631 = mem[_2164]
        mem[t + (32 * _6498) + 32] = mem[_2164]
        idx = 0
        s = _2164 + 32
        u = t + (32 * _6498) + 64
        while idx < _6631:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_6313 + 128] = t + (32 * _6498) + (32 * _6631) + -_6313 + 64
        _6729 = mem[_3227]
        mem[t + (32 * _6498) + (32 * _6631) + 64] = mem[_3227]
        idx = 0
        s = _3227 + 32
        u = t + (32 * _6498) + (32 * _6631) + 96
        while idx < _6729:
            t = 0
            v = mem[s]
            w = u
            while t < 2:
                mem[w] = mem[v]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            u = u + 64
            continue 
        mem[_6313 + 160] = u - _6313
        _6827 = mem[_6075 + ceil32(return_data.size)]
        mem[u] = mem[_6075 + ceil32(return_data.size)]
        mem[u + 32 len 32 * _6827] = mem[_6075 + ceil32(return_data.size) + 32 len 32 * _6827]
        var176001 = _6827
        var176002 = _6075 + ceil32(return_data.size) + (32 * _6827) + 32
        return memory
          from mem[64]
           len u + (32 * _6827) + -mem[64] + 32
    mem[_1083 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2223 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2227 = mem[_2223]
        require mem[_2223] <= test266151307()
        require _2223 + mem[_2223] + 31 < _2223 + return_data.size
        _2239 = mem[_2223 + mem[_2223]]
        require mem[_2223 + mem[_2223]] <= test266151307()
        require _2223 + ceil32(return_data.size) + ceil32(mem[_2223 + mem[_2223]]) + 32 <= test266151307() and ceil32(mem[_2223 + mem[_2223]]) + 32 >= 0
        mem[64] = _2223 + ceil32(return_data.size) + ceil32(mem[_2223 + mem[_2223]]) + 32
        mem[_2223 + ceil32(return_data.size)] = _2239
        require _2227 + _2239 + 32 <= return_data.size
        s = 0
        while s < _2239:
            mem[_2223 + ceil32(return_data.size) + s + 32] = mem[_2223 + _2227 + s + 32]
            s = s + 32
            continue 
        if ceil32(_2239) <= _2239:
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _2223 + ceil32(return_data.size)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3255] == mem[_3255 + 31 len 1]
            require idx < mem[_1083]
            mem[(32 * idx) + _1083 + 32] = mem[_3255 + 31 len 1]
        else:
            mem[_2223 + ceil32(return_data.size) + _2239 + 32] = 0
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _2223 + ceil32(return_data.size)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3257] == mem[_3257 + 31 len 1]
            require idx < mem[_1083]
            mem[(32 * idx) + _1083 + 32] = mem[_3257 + 31 len 1]
        idx = idx + 1
        continue 
    require ('cd', 36).length - 1 <= test266151307()
    _2165 = mem[64]
    mem[mem[64]] = ('cd', 36).length - 1
    mem[64] = mem[64] + (32 * ('cd', 36).length - 1) + 32
    if not ('cd', 36).length - 1:
        s = 0
        while s < ('cd', 36).length - 1:
            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
            require s + 1 < ('cd', 36).length
            require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3427] == mem[_3427 + 12 len 20]
            require s < mem[_2165]
            mem[(32 * s) + _2165 + 32] = mem[_3427 + 12 len 20]
            s = s + 1
            continue 
        _3223 = mem[_2165]
        require mem[_2165] <= test266151307()
        _3228 = mem[64]
        mem[mem[64]] = mem[_2165]
        mem[64] = mem[64] + (32 * _3223) + 32
        if not _3223:
            s = 0
            while s < ('cd', 36).length - 1:
                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                require s + 1 < ('cd', 36).length
                require cd[((32 * s + 1) + cd[36] + 36)] == address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * s + 1) + cd[36] + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * s + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * s + 1) + cd[36] + 36)]):
                    _4409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4409] == mem[_4409 + 12 len 20]
                    require ext_code.size(mem[_4409 + 12 len 20])
                    staticcall mem[_4409 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _4598 = mem[_4556]
                    require mem[_4556] == mem[_4556 + 18 len 14]
                    _4670 = mem[_4556 + 32]
                    require mem[_4556 + 32] == mem[_4556 + 50 len 14]
                    require mem[_4556 + 64] == mem[_4556 + 92 len 4]
                    require s < mem[_3228]
                    if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                        _4797 = mem[(32 * s) + _3228 + 32]
                        require s < mem[_3228]
                        mem[mem[(32 * s) + _3228 + 32] + 32] = mem[_4556 + 50 len 14]
                        mem[_4797] = Mask(112, 0, _4598)
                    else:
                        _4798 = mem[(32 * s) + _3228 + 32]
                        require s < mem[_3228]
                        mem[mem[(32 * s) + _3228 + 32] + 32] = mem[_4556 + 18 len 14]
                        mem[_4798] = Mask(112, 0, _4670)
                else:
                    _4410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4410] == mem[_4410 + 12 len 20]
                    require ext_code.size(mem[_4410 + 12 len 20])
                    staticcall mem[_4410 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _4599 = mem[_4557]
                    require mem[_4557] == mem[_4557 + 18 len 14]
                    _4671 = mem[_4557 + 32]
                    require mem[_4557 + 32] == mem[_4557 + 50 len 14]
                    require mem[_4557 + 64] == mem[_4557 + 92 len 4]
                    require s < mem[_3228]
                    if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s + 1) + cd[36] + 36)]):
                        _4799 = mem[(32 * s) + _3228 + 32]
                        require s < mem[_3228]
                        mem[mem[(32 * s) + _3228 + 32] + 32] = mem[_4557 + 50 len 14]
                        mem[_4799] = Mask(112, 0, _4599)
                    else:
                        _4800 = mem[(32 * s) + _3228 + 32]
                        require s < mem[_3228]
                        mem[mem[(32 * s) + _3228 + 32] + 32] = mem[_4557 + 18 len 14]
                        mem[_4800] = Mask(112, 0, _4671)
                s = s + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            s = 0
            t = cd[36] + 36
            u = mem[64] + 100
            while s < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5014 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5020 = mem[_5014]
            require mem[_5014] <= test266151307()
            require _5014 + mem[_5014] + 31 < _5014 + return_data.size
            _5024 = mem[_5014 + mem[_5014]]
            require mem[_5014 + mem[_5014]] <= test266151307()
            require _5014 + ceil32(return_data.size) + (32 * mem[_5014 + mem[_5014]]) + 32 <= test266151307() and (32 * mem[_5014 + mem[_5014]]) + 32 >= 0
            mem[64] = _5014 + ceil32(return_data.size) + (32 * mem[_5014 + mem[_5014]]) + 32
            mem[_5014 + ceil32(return_data.size)] = _5024
            require _5020 + (32 * _5024) + 32 <= return_data.size
            s = 0
            t = _5014 + _5020 + 32
            u = _5014 + ceil32(return_data.size) + 32
            while s < _5024:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _5632 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 192
            _5656 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _5656) + 224
            u = mem[64] + 224
            while idx < _5656:
                mem[u] = t + -_5632 - 224
                _6048 = mem[s]
                _6071 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _6071:
                    mem[t + v + 32] = mem[_6048 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_6071) > _6071:
                    mem[t + _6071 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_6071) + 32
                u = u + 32
                continue 
            mem[_5632 + 64] = t - _5632
            _6070 = mem[_1083]
            mem[t] = mem[_1083]
            mem[t + 32 len 32 * _6070] = mem[_1083 + 32 len 32 * _6070]
            mem[_5632 + 96] = t + (32 * _6070) + -_5632 + 32
            _6314 = mem[_2165]
            mem[t + (32 * _6070) + 32] = mem[_2165]
            idx = 0
            s = _2165 + 32
            u = t + (32 * _6070) + 64
            while idx < _6314:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_5632 + 128] = t + (32 * _6070) + (32 * _6314) + -_5632 + 64
            _6500 = mem[_3228]
            mem[t + (32 * _6070) + (32 * _6314) + 64] = mem[_3228]
            idx = 0
            s = _3228 + 32
            u = t + (32 * _6070) + (32 * _6314) + 96
            while idx < _6500:
                t = 0
                v = mem[s]
                w = u
                while t < 2:
                    mem[w] = mem[v]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + 64
                continue 
            mem[_5632 + 160] = u - _5632
            _6730 = mem[_5014 + ceil32(return_data.size)]
            mem[u] = mem[_5014 + ceil32(return_data.size)]
            mem[u + 32 len 32 * _6730] = mem[_5014 + ceil32(return_data.size) + 32 len 32 * _6730]
            var169001 = _6730
            var169002 = _5014 + ceil32(return_data.size) + (32 * _6730) + 32
            return memory
              from mem[64]
               len u + (32 * _6730) + -mem[64] + 32
        mem[64] = _3228 + (32 * _3223) + 96
        mem[_3228 + (32 * _3223) + 32 len 64] = call.data[calldata.size len 64]
        mem[var68001] = _3228 + (32 * _3223) + 32
        s = var68001
        idx = var68002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_3228 + (32 * _3223) + 32 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = _3228 + (32 * _3223) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _5816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5816] == mem[_5816 + 12 len 20]
                require ext_code.size(mem[_5816 + 12 len 20])
                staticcall mem[_5816 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5898 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5906 = mem[_5898]
                require mem[_5898] == mem[_5898 + 18 len 14]
                _5930 = mem[_5898 + 32]
                require mem[_5898 + 32] == mem[_5898 + 50 len 14]
                require mem[_5898 + 64] == mem[_5898 + 92 len 4]
                require idx < mem[_3228]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    _5997 = mem[(32 * idx) + _3228 + 32]
                    require idx < mem[_3228]
                    mem[mem[(32 * idx) + _3228 + 32] + 32] = mem[_5898 + 50 len 14]
                    mem[_5997] = Mask(112, 0, _5906)
                else:
                    _5998 = mem[(32 * idx) + _3228 + 32]
                    require idx < mem[_3228]
                    mem[mem[(32 * idx) + _3228 + 32] + 32] = mem[_5898 + 18 len 14]
                    mem[_5998] = Mask(112, 0, _5930)
            else:
                _5817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5817] == mem[_5817 + 12 len 20]
                require ext_code.size(mem[_5817 + 12 len 20])
                staticcall mem[_5817 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5899 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _5907 = mem[_5899]
                require mem[_5899] == mem[_5899 + 18 len 14]
                _5931 = mem[_5899 + 32]
                require mem[_5899 + 32] == mem[_5899 + 50 len 14]
                require mem[_5899 + 64] == mem[_5899 + 92 len 4]
                require idx < mem[_3228]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _5999 = mem[(32 * idx) + _3228 + 32]
                    require idx < mem[_3228]
                    mem[mem[(32 * idx) + _3228 + 32] + 32] = mem[_5899 + 50 len 14]
                    mem[_5999] = Mask(112, 0, _5907)
                else:
                    _6000 = mem[(32 * idx) + _3228 + 32]
                    require idx < mem[_3228]
                    mem[mem[(32 * idx) + _3228 + 32] + 32] = mem[_5899 + 18 len 14]
                    mem[_6000] = Mask(112, 0, _5931)
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 100
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6076 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6080 = mem[_6076]
        require mem[_6076] <= test266151307()
        require _6076 + mem[_6076] + 31 < _6076 + return_data.size
        _6087 = mem[_6076 + mem[_6076]]
        require mem[_6076 + mem[_6076]] <= test266151307()
        require _6076 + ceil32(return_data.size) + (32 * mem[_6076 + mem[_6076]]) + 32 <= test266151307() and (32 * mem[_6076 + mem[_6076]]) + 32 >= 0
        mem[64] = _6076 + ceil32(return_data.size) + (32 * mem[_6076 + mem[_6076]]) + 32
        mem[_6076 + ceil32(return_data.size)] = _6087
        require _6080 + (32 * _6087) + 32 <= return_data.size
        idx = 0
        s = _6076 + _6080 + 32
        t = _6076 + ceil32(return_data.size) + 32
        while idx < _6087:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _6315 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 192
        _6335 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _6335) + 224
        u = mem[64] + 224
        while idx < _6335:
            mem[u] = t + -_6315 - 224
            _6483 = mem[s]
            _6502 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _6502:
                mem[t + v + 32] = mem[_6483 + v + 32]
                v = v + 32
                continue 
            if ceil32(_6502) > _6502:
                mem[t + _6502 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_6502) + 32
            u = u + 32
            continue 
        mem[_6315 + 64] = t - _6315
        _6501 = mem[_1083]
        mem[t] = mem[_1083]
        mem[t + 32 len 32 * _6501] = mem[_1083 + 32 len 32 * _6501]
        mem[_6315 + 96] = t + (32 * _6501) + -_6315 + 32
        _6632 = mem[_2165]
        mem[t + (32 * _6501) + 32] = mem[_2165]
        idx = 0
        s = _2165 + 32
        u = t + (32 * _6501) + 64
        while idx < _6632:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_6315 + 128] = t + (32 * _6501) + (32 * _6632) + -_6315 + 64
        _6731 = mem[_3228]
        mem[t + (32 * _6501) + (32 * _6632) + 64] = mem[_3228]
        idx = 0
        s = _3228 + 32
        u = t + (32 * _6501) + (32 * _6632) + 96
        while idx < _6731:
            t = 0
            v = mem[s]
            w = u
            while t < 2:
                mem[w] = mem[v]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            u = u + 64
            continue 
        mem[_6315 + 160] = u - _6315
        _6828 = mem[_6076 + ceil32(return_data.size)]
        mem[u] = mem[_6076 + ceil32(return_data.size)]
        mem[u + 32 len 32 * _6828] = mem[_6076 + ceil32(return_data.size) + 32 len 32 * _6828]
        var176001 = _6828
        var176002 = _6076 + ceil32(return_data.size) + (32 * _6828) + 32
        return memory
          from mem[64]
           len u + (32 * _6828) + -mem[64] + 32
    mem[_2165 + 32 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3429 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3429] == mem[_3429 + 12 len 20]
        require idx < mem[_2165]
        mem[(32 * idx) + _2165 + 32] = mem[_3429 + 12 len 20]
        idx = idx + 1
        continue 
    _3224 = mem[_2165]
    require mem[_2165] <= test266151307()
    _3229 = mem[64]
    mem[mem[64]] = mem[_2165]
    mem[64] = mem[64] + (32 * _3224) + 32
    if not _3224:
        idx = 0
        while idx < ('cd', 36).length - 1:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _4412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4412] == mem[_4412 + 12 len 20]
                require ext_code.size(mem[_4412 + 12 len 20])
                staticcall mem[_4412 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _4604 = mem[_4559]
                require mem[_4559] == mem[_4559 + 18 len 14]
                _4672 = mem[_4559 + 32]
                require mem[_4559 + 32] == mem[_4559 + 50 len 14]
                require mem[_4559 + 64] == mem[_4559 + 92 len 4]
                require idx < mem[_3229]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    _4802 = mem[(32 * idx) + _3229 + 32]
                    require idx < mem[_3229]
                    mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_4559 + 50 len 14]
                    mem[_4802] = Mask(112, 0, _4604)
                else:
                    _4803 = mem[(32 * idx) + _3229 + 32]
                    require idx < mem[_3229]
                    mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_4559 + 18 len 14]
                    mem[_4803] = Mask(112, 0, _4672)
            else:
                _4413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4413] == mem[_4413 + 12 len 20]
                require ext_code.size(mem[_4413 + 12 len 20])
                staticcall mem[_4413 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _4605 = mem[_4560]
                require mem[_4560] == mem[_4560 + 18 len 14]
                _4673 = mem[_4560 + 32]
                require mem[_4560 + 32] == mem[_4560 + 50 len 14]
                require mem[_4560 + 64] == mem[_4560 + 92 len 4]
                require idx < mem[_3229]
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _4804 = mem[(32 * idx) + _3229 + 32]
                    require idx < mem[_3229]
                    mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_4560 + 50 len 14]
                    mem[_4804] = Mask(112, 0, _4605)
                else:
                    _4805 = mem[(32 * idx) + _3229 + 32]
                    require idx < mem[_3229]
                    mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_4560 + 18 len 14]
                    mem[_4805] = Mask(112, 0, _4673)
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 100
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5016 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5021 = mem[_5016]
        require mem[_5016] <= test266151307()
        require _5016 + mem[_5016] + 31 < _5016 + return_data.size
        _5025 = mem[_5016 + mem[_5016]]
        require mem[_5016 + mem[_5016]] <= test266151307()
        require _5016 + ceil32(return_data.size) + (32 * mem[_5016 + mem[_5016]]) + 32 <= test266151307() and (32 * mem[_5016 + mem[_5016]]) + 32 >= 0
        mem[64] = _5016 + ceil32(return_data.size) + (32 * mem[_5016 + mem[_5016]]) + 32
        mem[_5016 + ceil32(return_data.size)] = _5025
        require _5021 + (32 * _5025) + 32 <= return_data.size
        idx = 0
        s = _5016 + _5021 + 32
        t = _5016 + ceil32(return_data.size) + 32
        while idx < _5025:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _5633 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 192
        _5657 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _5657) + 224
        u = mem[64] + 224
        while idx < _5657:
            mem[u] = t + -_5633 - 224
            _6049 = mem[s]
            _6073 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _6073:
                mem[t + v + 32] = mem[_6049 + v + 32]
                v = v + 32
                continue 
            if ceil32(_6073) > _6073:
                mem[t + _6073 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_6073) + 32
            u = u + 32
            continue 
        mem[_5633 + 64] = t - _5633
        _6072 = mem[_1083]
        mem[t] = mem[_1083]
        mem[t + 32 len 32 * _6072] = mem[_1083 + 32 len 32 * _6072]
        mem[_5633 + 96] = t + (32 * _6072) + -_5633 + 32
        _6316 = mem[_2165]
        mem[t + (32 * _6072) + 32] = mem[_2165]
        idx = 0
        s = _2165 + 32
        u = t + (32 * _6072) + 64
        while idx < _6316:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_5633 + 128] = t + (32 * _6072) + (32 * _6316) + -_5633 + 64
        _6503 = mem[_3229]
        mem[t + (32 * _6072) + (32 * _6316) + 64] = mem[_3229]
        idx = 0
        s = _3229 + 32
        u = t + (32 * _6072) + (32 * _6316) + 96
        while idx < _6503:
            t = 0
            v = mem[s]
            w = u
            while t < 2:
                mem[w] = mem[v]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            u = u + 64
            continue 
        mem[_5633 + 160] = u - _5633
        _6732 = mem[_5016 + ceil32(return_data.size)]
        mem[u] = mem[_5016 + ceil32(return_data.size)]
        mem[u + 32 len 32 * _6732] = mem[_5016 + ceil32(return_data.size) + 32 len 32 * _6732]
        var170001 = _6732
        var170002 = _5016 + ceil32(return_data.size) + (32 * _6732) + 32
        return memory
          from mem[64]
           len u + (32 * _6732) + -mem[64] + 32
    mem[64] = _3229 + (32 * _3224) + 96
    mem[_3229 + (32 * _3224) + 32 len 64] = call.data[calldata.size len 64]
    mem[var69001] = _3229 + (32 * _3224) + 32
    s = var69001
    idx = var69002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_3229 + (32 * _3224) + 32 len 64] = call.data[calldata.size len 64]
        mem[s + 32] = _3229 + (32 * _3224) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length - 1:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
            _5820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5820] == mem[_5820 + 12 len 20]
            require ext_code.size(mem[_5820 + 12 len 20])
            staticcall mem[_5820 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5900 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _5908 = mem[_5900]
            require mem[_5900] == mem[_5900 + 18 len 14]
            _5932 = mem[_5900 + 32]
            require mem[_5900 + 32] == mem[_5900 + 50 len 14]
            require mem[_5900 + 64] == mem[_5900 + 92 len 4]
            require idx < mem[_3229]
            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                _6002 = mem[(32 * idx) + _3229 + 32]
                require idx < mem[_3229]
                mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_5900 + 50 len 14]
                mem[_6002] = Mask(112, 0, _5908)
            else:
                _6003 = mem[(32 * idx) + _3229 + 32]
                require idx < mem[_3229]
                mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_5900 + 18 len 14]
                mem[_6003] = Mask(112, 0, _5932)
        else:
            _5821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5821] == mem[_5821 + 12 len 20]
            require ext_code.size(mem[_5821 + 12 len 20])
            staticcall mem[_5821 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _5909 = mem[_5901]
            require mem[_5901] == mem[_5901 + 18 len 14]
            _5933 = mem[_5901 + 32]
            require mem[_5901 + 32] == mem[_5901 + 50 len 14]
            require mem[_5901 + 64] == mem[_5901 + 92 len 4]
            require idx < mem[_3229]
            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _6004 = mem[(32 * idx) + _3229 + 32]
                require idx < mem[_3229]
                mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_5901 + 50 len 14]
                mem[_6004] = Mask(112, 0, _5909)
            else:
                _6005 = mem[(32 * idx) + _3229 + 32]
                require idx < mem[_3229]
                mem[mem[(32 * idx) + _3229 + 32] + 32] = mem[_5901 + 18 len 14]
                mem[_6005] = Mask(112, 0, _5933)
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 100
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6077 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6081 = mem[_6077]
    require mem[_6077] <= test266151307()
    require _6077 + mem[_6077] + 31 < _6077 + return_data.size
    _6089 = mem[_6077 + mem[_6077]]
    require mem[_6077 + mem[_6077]] <= test266151307()
    require _6077 + ceil32(return_data.size) + (32 * mem[_6077 + mem[_6077]]) + 32 <= test266151307() and (32 * mem[_6077 + mem[_6077]]) + 32 >= 0
    mem[64] = _6077 + ceil32(return_data.size) + (32 * mem[_6077 + mem[_6077]]) + 32
    mem[_6077 + ceil32(return_data.size)] = _6089
    require _6081 + (32 * _6089) + 32 <= return_data.size
    idx = 0
    s = _6077 + _6081 + 32
    t = _6077 + ceil32(return_data.size) + 32
    while idx < _6089:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _6317 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 192
    _6337 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + (32 * _6337) + 224
    u = mem[64] + 224
    while idx < _6337:
        mem[u] = t + -_6317 - 224
        _6485 = mem[s]
        _6505 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _6505:
            mem[t + v + 32] = mem[_6485 + v + 32]
            v = v + 32
            continue 
        if ceil32(_6505) > _6505:
            mem[t + _6505 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_6505) + 32
        u = u + 32
        continue 
    mem[_6317 + 64] = t - _6317
    _6504 = mem[_1083]
    mem[t] = mem[_1083]
    mem[t + 32 len 32 * _6504] = mem[_1083 + 32 len 32 * _6504]
    mem[_6317 + 96] = t + (32 * _6504) + -_6317 + 32
    _6633 = mem[_2165]
    mem[t + (32 * _6504) + 32] = mem[_2165]
    idx = 0
    s = _2165 + 32
    u = t + (32 * _6504) + 64
    while idx < _6633:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[_6317 + 128] = t + (32 * _6504) + (32 * _6633) + -_6317 + 64
    _6733 = mem[_3229]
    mem[t + (32 * _6504) + (32 * _6633) + 64] = mem[_3229]
    idx = 0
    s = _3229 + 32
    u = t + (32 * _6504) + (32 * _6633) + 96
    while idx < _6733:
        t = 0
        v = mem[s]
        w = u
        while t < 2:
            mem[w] = mem[v]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    mem[_6317 + 160] = u - _6317
    _6829 = mem[_6077 + ceil32(return_data.size)]
    mem[u] = mem[_6077 + ceil32(return_data.size)]
    mem[u + 32 len 32 * _6829] = mem[_6077 + ceil32(return_data.size) + 32 len 32 * _6829]
    var177001 = _6829
    var177002 = _6077 + ceil32(return_data.size) + (32 * _6829) + 32
    return memory
      from mem[64]
       len u + (32 * _6829) + -mem[64] + 32
}



}
