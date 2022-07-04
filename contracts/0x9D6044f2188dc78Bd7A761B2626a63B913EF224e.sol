contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9a2cbf3d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == ('signextend', 15, ('cd', ('var', 1)))
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == ('signextend', 15, ('cd', ('var', 1)))
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 256 >= 224 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
    while idx < ('cd', 132).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _710 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]:
                _726 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _731 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_726'))
                mem[mem[64] + 68] = _731
                require ext_code.size(address(_710))
                staticcall address(_710).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_726')), _731
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _763 = mem[_752]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _773 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32)))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_773'))
                mem[mem[64] + 68] = _763
                require ext_code.size(address(_710))
                staticcall address(_710).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_773')), _763
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _795 = mem[_785]
                _799 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_799] = mem[(32 * idx) + 140 len 20]
                mem[_799 + 32] = _763
                mem[_799 + 64] = _795
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = _799
                idx = idx + 1
                s = _795
                s = _763
                continue 
            _728 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _733 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_728'))
            mem[mem[64] + 68] = _733
            require ext_code.size(address(_710))
            staticcall address(_710).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_728')), _733
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _764 = mem[_753]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _775 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_775'))
            mem[mem[64] + 68] = _764
            require ext_code.size(address(_710))
            staticcall address(_710).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_775')), _764
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _796 = mem[_786]
            _801 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_801] = mem[(32 * idx) + 140 len 20]
            mem[_801 + 32] = _764
            mem[_801 + 64] = _796
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = _801
            idx = idx + 1
            s = _796
            s = _764
            continue 
        _709 = mem[64]
        mem[mem[64]] = 32
        _712 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
        t = mem[64] + 64
        while idx < _712:
            _820 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_820 + 32]
            mem[t + 64] = mem[_820 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _709 + (96 * _712) + -mem[64] + 64
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 384
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = 0
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] = 0
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] = 0
    mem[var81001] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
    s = var81001
    idx = var81002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = 0
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] = 0
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] = 0
        mem[s + 32] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
        s = s + 32
        idx = idx - 1
        continue 
    _881 = mem[96]
    idx = 0
    s = 0
    s = 0
    while idx < _881:
        require idx < mem[96]
        _884 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]:
            _899 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _903 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_899'))
            mem[mem[64] + 68] = _903
            require ext_code.size(address(_884))
            staticcall address(_884).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_899')), _903
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _909 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _911 = mem[_909]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _919 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_919'))
            mem[mem[64] + 68] = _911
            require ext_code.size(address(_884))
            staticcall address(_884).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_919')), _911
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _925 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _927 = mem[_925]
            _929 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_929] = mem[(32 * idx) + 140 len 20]
            mem[_929 + 32] = _911
            mem[_929 + 64] = _927
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = _929
            _881 = mem[96]
            idx = idx + 1
            s = _927
            s = _911
            continue 
        _901 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _905 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
        mem[mem[64] + 36] = ('signextend', 15, ('var', '_901'))
        mem[mem[64] + 68] = _905
        require ext_code.size(address(_884))
        staticcall address(_884).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], ('signextend', 15, ('var', '_901')), _905
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _910 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _912 = mem[_910]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _921 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32)))
        mem[mem[64] + 36] = ('signextend', 15, ('var', '_921'))
        mem[mem[64] + 68] = _912
        require ext_code.size(address(_884))
        staticcall address(_884).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], ('signextend', 15, ('var', '_921')), _912
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _926 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _928 = mem[_926]
        _931 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[96]
        mem[_931] = mem[(32 * idx) + 140 len 20]
        mem[_931 + 32] = _912
        mem[_931 + 64] = _928
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = _931
        _881 = mem[96]
        idx = idx + 1
        s = _928
        s = _912
        continue 
    _883 = mem[64]
    mem[mem[64]] = 32
    _886 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
    idx = 0
    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
    t = mem[64] + 64
    while idx < _886:
        _937 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_937 + 32]
        mem[t + 64] = mem[_937 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _883 + (96 * _886) + -mem[64] + 64
}



}
