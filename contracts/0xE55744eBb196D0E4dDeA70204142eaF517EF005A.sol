contract main {




// =====================  Runtime code  =====================


#
#  - getProxyImplementation(address arg1)
#  - getProxyAdmin(address arg1)
#
const sub_1cdcf85a(?) = 0xca11bde05977b3631167028862be2a173976ca11


address owner;

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

function changeProxyAdmin(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x8f283970 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgrade(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _2 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    mem[64] = (32 * mem[96]) + 128
    if not mem[96]:
        idx = 0
        while idx < _2:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _155 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _157 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 68
        u = mem[64] + 68
        while idx < _157:
            mem[u] = t + -_155 - 68
            _303 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _305 = mem[_303 + 32]
            mem[t + 32] = 64
            _306 = mem[_305]
            mem[t + 64] = mem[_305]
            v = 0
            while v < _306:
                mem[v + t + 96] = mem[v + _305 + 32]
                v = v + 32
                continue 
            if ceil32(_306) > _306:
                mem[t + _306 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_306) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _324 = mem[_315 + 32]
        require mem[_315 + 32] <= test266151307()
        require _315 + mem[_315 + 32] + 31 < _315 + return_data.size
        _327 = mem[_315 + mem[_315 + 32]]
        if mem[_315 + mem[_315 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1 < 0 or _315 + ceil32(return_data.size) + ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _315 + ceil32(return_data.size) + ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1
        mem[_315 + ceil32(return_data.size)] = _327
        require (32 * _327) + _324 + 32 <= return_data.size
        s = _315 + ceil32(return_data.size) + 32
        idx = _315 + _324 + 32
        while idx < (32 * _327) + _315 + _324 + 32:
            _443 = mem[idx]
            require mem[idx] <= test266151307()
            require _315 + return_data.size > _315 + _324 + mem[idx] + 63
            _451 = mem[_315 + _324 + mem[idx] + 32]
            if mem[_315 + _324 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _455 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1
            mem[_455] = _451
            require _324 + _443 + _451 + 64 <= return_data.size
            t = 0
            while t < _451:
                mem[t + _455 + 32] = mem[t + _315 + _324 + _443 + 64]
                t = t + 32
                continue 
            if ceil32(_451) > _451:
                mem[_455 + _451 + 32] = 0
            mem[s] = _455
            s = s + 32
            idx = idx + 32
            continue 
        mem[mem[64]] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(arg1)
        call arg1.0x3659cfe6 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _458 = mem[96]
        if mem[96] > test266151307():
            revert with 0, 65
        _460 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _458) + 32
        if not _458:
            idx = 0
            while idx < _458:
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _566 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _571 = mem[_460]
            mem[mem[64] + 36] = mem[_460]
            idx = 0
            s = _460 + 32
            t = mem[64] + (32 * _571) + 68
            u = mem[64] + 68
            while idx < _571:
                mem[u] = t + -_566 - 68
                _670 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _672 = mem[_670 + 32]
                mem[t + 32] = 64
                _673 = mem[_672]
                mem[t + 64] = mem[_672]
                v = 0
                while v < _673:
                    mem[v + t + 96] = mem[v + _672 + 32]
                    v = v + 32
                    continue 
                if ceil32(_673) > _673:
                    mem[t + _673 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_673) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _690 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _710 = mem[_690 + 32]
            require mem[_690 + 32] <= test266151307()
            require _690 + mem[_690 + 32] + 31 < _690 + return_data.size
            _722 = mem[_690 + mem[_690 + 32]]
            if mem[_690 + mem[_690 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1 < 0 or _690 + ceil32(return_data.size) + ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _690 + ceil32(return_data.size) + ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1
            mem[_690 + ceil32(return_data.size)] = _722
            require (32 * _722) + _710 + 32 <= return_data.size
            s = _690 + ceil32(return_data.size) + 32
            idx = _690 + _710 + 32
            while idx < (32 * _722) + _690 + _710 + 32:
                _755 = mem[idx]
                require mem[idx] <= test266151307()
                require _690 + return_data.size > _690 + _710 + mem[idx] + 63
                _772 = mem[_690 + _710 + mem[idx] + 32]
                if mem[_690 + _710 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _784 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1
                mem[_784] = _772
                require _710 + _755 + _772 + 64 <= return_data.size
                t = 0
                while t < _772:
                    mem[t + _784 + 32] = mem[t + _690 + _710 + _755 + 64]
                    t = t + 32
                    continue 
                if ceil32(_772) > _772:
                    mem[_784 + _772 + 32] = 0
                mem[s] = _784
                s = s + 32
                idx = idx + 32
                continue 
        else:
            mem[64] = _460 + (32 * _458) + 96
            mem[_460 + (32 * _458) + 32] = 0
            mem[_460 + (32 * _458) + 64] = 96
            mem[_460 + 32] = _460 + (32 * _458) + 32
            s = _460 + 32
            idx = _458
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_460 + (32 * _458) + 32] = 0
                mem[_460 + (32 * _458) + 64] = 96
                mem[s + 32] = _460 + (32 * _458) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _458:
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _674 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _680 = mem[_460]
            mem[mem[64] + 36] = mem[_460]
            idx = 0
            s = _460 + 32
            t = mem[64] + (32 * _680) + 68
            u = mem[64] + 68
            while idx < _680:
                mem[u] = t + -_674 - 68
                _757 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _759 = mem[_757 + 32]
                mem[t + 32] = 64
                _760 = mem[_759]
                mem[t + 64] = mem[_759]
                v = 0
                while v < _760:
                    mem[v + t + 96] = mem[v + _759 + 32]
                    v = v + 32
                    continue 
                if ceil32(_760) > _760:
                    mem[t + _760 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_760) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _787 = mem[_775 + 32]
            require mem[_775 + 32] <= test266151307()
            require _775 + mem[_775 + 32] + 31 < _775 + return_data.size
            _792 = mem[_775 + mem[_775 + 32]]
            if mem[_775 + mem[_775 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1 < 0 or _775 + ceil32(return_data.size) + ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _775 + ceil32(return_data.size) + ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1
            mem[_775 + ceil32(return_data.size)] = _792
            require (32 * _792) + _787 + 32 <= return_data.size
            s = _775 + ceil32(return_data.size) + 32
            idx = _775 + _787 + 32
            while idx < (32 * _792) + _775 + _787 + 32:
                _814 = mem[idx]
                require mem[idx] <= test266151307()
                require _775 + return_data.size > _775 + _787 + mem[idx] + 63
                _823 = mem[_775 + _787 + mem[idx] + 32]
                if mem[_775 + _787 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _827 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1
                mem[_827] = _823
                require _787 + _814 + _823 + 64 <= return_data.size
                t = 0
                while t < _823:
                    mem[t + _827 + 32] = mem[t + _775 + _787 + _814 + 64]
                    t = t + 32
                    continue 
                if ceil32(_823) > _823:
                    mem[_827 + _823 + 32] = 0
                mem[s] = _827
                s = s + 32
                idx = idx + 32
                continue 
    else:
        _154 = (32 * mem[96]) + 128
        mem[64] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + 128] = 0
        mem[_154 + 32] = 96
        mem[128] = _154
        s = 128
        idx = _2
        while idx - 1:
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 0
            mem[_154 + 32] = 96
            mem[s + 32] = _154
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _2:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _307 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _310 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 68
        u = mem[64] + 68
        while idx < _310:
            mem[u] = t + -_307 - 68
            _445 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _447 = mem[_445 + 32]
            mem[t + 32] = 64
            _448 = mem[_447]
            mem[t + 64] = mem[_447]
            v = 0
            while v < _448:
                mem[v + t + 96] = mem[v + _447 + 32]
                v = v + 32
                continue 
            if ceil32(_448) > _448:
                mem[t + _448 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_448) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _452 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _457 = mem[_452 + 32]
        require mem[_452 + 32] <= test266151307()
        require _452 + mem[_452 + 32] + 31 < _452 + return_data.size
        _459 = mem[_452 + mem[_452 + 32]]
        if mem[_452 + mem[_452 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1 < 0 or _452 + ceil32(return_data.size) + ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _452 + ceil32(return_data.size) + ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1
        mem[_452 + ceil32(return_data.size)] = _459
        require (32 * _459) + _457 + 32 <= return_data.size
        s = _452 + ceil32(return_data.size) + 32
        idx = _452 + _457 + 32
        while idx < (32 * _459) + _452 + _457 + 32:
            _569 = mem[idx]
            require mem[idx] <= test266151307()
            require _452 + return_data.size > _452 + _457 + mem[idx] + 63
            _577 = mem[_452 + _457 + mem[idx] + 32]
            if mem[_452 + _457 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _590 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1
            mem[_590] = _577
            require _457 + _569 + _577 + 64 <= return_data.size
            t = 0
            while t < _577:
                mem[t + _590 + 32] = mem[t + _452 + _457 + _569 + 64]
                t = t + 32
                continue 
            if ceil32(_577) > _577:
                mem[_590 + _577 + 32] = 0
            mem[s] = _590
            s = s + 32
            idx = idx + 32
            continue 
        mem[mem[64]] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(arg1)
        call arg1.0x3659cfe6 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _601 = mem[96]
        if mem[96] > test266151307():
            revert with 0, 65
        _604 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _601) + 32
        if not _601:
            idx = 0
            while idx < _601:
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _676 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _683 = mem[_604]
            mem[mem[64] + 36] = mem[_604]
            idx = 0
            s = _604 + 32
            t = mem[64] + (32 * _683) + 68
            u = mem[64] + 68
            while idx < _683:
                mem[u] = t + -_676 - 68
                _761 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _763 = mem[_761 + 32]
                mem[t + 32] = 64
                _764 = mem[_763]
                mem[t + 64] = mem[_763]
                v = 0
                while v < _764:
                    mem[v + t + 96] = mem[v + _763 + 32]
                    v = v + 32
                    continue 
                if ceil32(_764) > _764:
                    mem[t + _764 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_764) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _789 = mem[_777 + 32]
            require mem[_777 + 32] <= test266151307()
            require _777 + mem[_777 + 32] + 31 < _777 + return_data.size
            _793 = mem[_777 + mem[_777 + 32]]
            if mem[_777 + mem[_777 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1 < 0 or _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1
            mem[_777 + ceil32(return_data.size)] = _793
            require (32 * _793) + _789 + 32 <= return_data.size
            s = _777 + ceil32(return_data.size) + 32
            idx = _777 + _789 + 32
            while idx < (32 * _793) + _777 + _789 + 32:
                _816 = mem[idx]
                require mem[idx] <= test266151307()
                require _777 + return_data.size > _777 + _789 + mem[idx] + 63
                _824 = mem[_777 + _789 + mem[idx] + 32]
                if mem[_777 + _789 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _828 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1
                mem[_828] = _824
                require _789 + _816 + _824 + 64 <= return_data.size
                t = 0
                while t < _824:
                    mem[t + _828 + 32] = mem[t + _777 + _789 + _816 + 64]
                    t = t + 32
                    continue 
                if ceil32(_824) > _824:
                    mem[_828 + _824 + 32] = 0
                mem[s] = _828
                s = s + 32
                idx = idx + 32
                continue 
        else:
            mem[64] = _604 + (32 * _601) + 96
            mem[_604 + (32 * _601) + 32] = 0
            mem[_604 + (32 * _601) + 64] = 96
            mem[_604 + 32] = _604 + (32 * _601) + 32
            s = _604 + 32
            idx = _601
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_604 + (32 * _601) + 32] = 0
                mem[_604 + (32 * _601) + 64] = 96
                mem[s + 32] = _604 + (32 * _601) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _601:
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _765 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _769 = mem[_604]
            mem[mem[64] + 36] = mem[_604]
            idx = 0
            s = _604 + 32
            t = mem[64] + (32 * _769) + 68
            u = mem[64] + 68
            while idx < _769:
                mem[u] = t + -_765 - 68
                _818 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _820 = mem[_818 + 32]
                mem[t + 32] = 64
                _821 = mem[_820]
                mem[t + 64] = mem[_820]
                v = 0
                while v < _821:
                    mem[v + t + 96] = mem[v + _820 + 32]
                    v = v + 32
                    continue 
                if ceil32(_821) > _821:
                    mem[t + _821 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_821) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _830 = mem[_825 + 32]
            require mem[_825 + 32] <= test266151307()
            require _825 + mem[_825 + 32] + 31 < _825 + return_data.size
            _831 = mem[_825 + mem[_825 + 32]]
            if mem[_825 + mem[_825 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1 < 0 or _825 + ceil32(return_data.size) + ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _825 + ceil32(return_data.size) + ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1
            mem[_825 + ceil32(return_data.size)] = _831
            require (32 * _831) + _830 + 32 <= return_data.size
            s = _825 + ceil32(return_data.size) + 32
            idx = _825 + _830 + 32
            while idx < (32 * _831) + _825 + _830 + 32:
                _841 = mem[idx]
                require mem[idx] <= test266151307()
                require _825 + return_data.size > _825 + _830 + mem[idx] + 63
                _843 = mem[_825 + _830 + mem[idx] + 32]
                if mem[_825 + _830 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _844 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1
                mem[_844] = _843
                require _830 + _841 + _843 + 64 <= return_data.size
                t = 0
                while t < _843:
                    mem[t + _844 + 32] = mem[t + _825 + _830 + _841 + 64]
                    t = t + 32
                    continue 
                if ceil32(_843) > _843:
                    mem[_844 + _843 + 32] = 0
                mem[s] = _844
                s = s + 32
                idx = idx + 32
                continue 
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _2 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    mem[64] = (32 * mem[96]) + 128
    if not mem[96]:
        idx = 0
        while idx < _2:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _155 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _157 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 68
        u = mem[64] + 68
        while idx < _157:
            mem[u] = t + -_155 - 68
            _303 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _305 = mem[_303 + 32]
            mem[t + 32] = 64
            _306 = mem[_305]
            mem[t + 64] = mem[_305]
            v = 0
            while v < _306:
                mem[v + t + 96] = mem[v + _305 + 32]
                v = v + 32
                continue 
            if ceil32(_306) > _306:
                mem[t + _306 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_306) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _324 = mem[_315 + 32]
        require mem[_315 + 32] <= test266151307()
        require _315 + mem[_315 + 32] + 31 < _315 + return_data.size
        _327 = mem[_315 + mem[_315 + 32]]
        if mem[_315 + mem[_315 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1 < 0 or _315 + ceil32(return_data.size) + ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _315 + ceil32(return_data.size) + ceil32(32 * mem[_315 + mem[_315 + 32]]) + 1
        mem[_315 + ceil32(return_data.size)] = _327
        require (32 * _327) + _324 + 32 <= return_data.size
        s = _315 + ceil32(return_data.size) + 32
        idx = _315 + _324 + 32
        while idx < (32 * _327) + _315 + _324 + 32:
            _443 = mem[idx]
            require mem[idx] <= test266151307()
            require _315 + return_data.size > _315 + _324 + mem[idx] + 63
            _451 = mem[_315 + _324 + mem[idx] + 32]
            if mem[_315 + _324 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _455 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_315 + _324 + mem[idx] + 32])) + 1
            mem[_455] = _451
            require _324 + _443 + _451 + 64 <= return_data.size
            t = 0
            while t < _451:
                mem[t + _455 + 32] = mem[t + _315 + _324 + _443 + 64]
                t = t + 32
                continue 
            if ceil32(_451) > _451:
                mem[_455 + _451 + 32] = 0
            mem[s] = _455
            s = s + 32
            idx = idx + 32
            continue 
        mem[mem[64]] = 0x4f1ef28600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = arg3.length
        mem[mem[64] + 100 len arg3.length] = arg3[all]
        mem[arg3.length + mem[64] + 100] = 0
        require ext_code.size(arg1)
        call arg1.0x4f1ef286 with:
           value msg.value wei
             gas gas_remaining wei
            args address(arg2), Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _458 = mem[96]
        if mem[96] > test266151307():
            revert with 0, 65
        _460 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _458) + 32
        if not _458:
            idx = 0
            while idx < _458:
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _566 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _571 = mem[_460]
            mem[mem[64] + 36] = mem[_460]
            idx = 0
            s = _460 + 32
            t = mem[64] + (32 * _571) + 68
            u = mem[64] + 68
            while idx < _571:
                mem[u] = t + -_566 - 68
                _670 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _672 = mem[_670 + 32]
                mem[t + 32] = 64
                _673 = mem[_672]
                mem[t + 64] = mem[_672]
                v = 0
                while v < _673:
                    mem[v + t + 96] = mem[v + _672 + 32]
                    v = v + 32
                    continue 
                if ceil32(_673) > _673:
                    mem[t + _673 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_673) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _690 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _710 = mem[_690 + 32]
            require mem[_690 + 32] <= test266151307()
            require _690 + mem[_690 + 32] + 31 < _690 + return_data.size
            _722 = mem[_690 + mem[_690 + 32]]
            if mem[_690 + mem[_690 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1 < 0 or _690 + ceil32(return_data.size) + ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _690 + ceil32(return_data.size) + ceil32(32 * mem[_690 + mem[_690 + 32]]) + 1
            mem[_690 + ceil32(return_data.size)] = _722
            require (32 * _722) + _710 + 32 <= return_data.size
            s = _690 + ceil32(return_data.size) + 32
            idx = _690 + _710 + 32
            while idx < (32 * _722) + _690 + _710 + 32:
                _755 = mem[idx]
                require mem[idx] <= test266151307()
                require _690 + return_data.size > _690 + _710 + mem[idx] + 63
                _772 = mem[_690 + _710 + mem[idx] + 32]
                if mem[_690 + _710 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _784 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_690 + _710 + mem[idx] + 32])) + 1
                mem[_784] = _772
                require _710 + _755 + _772 + 64 <= return_data.size
                t = 0
                while t < _772:
                    mem[t + _784 + 32] = mem[t + _690 + _710 + _755 + 64]
                    t = t + 32
                    continue 
                if ceil32(_772) > _772:
                    mem[_784 + _772 + 32] = 0
                mem[s] = _784
                s = s + 32
                idx = idx + 32
                continue 
        else:
            mem[64] = _460 + (32 * _458) + 96
            mem[_460 + (32 * _458) + 32] = 0
            mem[_460 + (32 * _458) + 64] = 96
            mem[_460 + 32] = _460 + (32 * _458) + 32
            s = _460 + 32
            idx = _458
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_460 + (32 * _458) + 32] = 0
                mem[_460 + (32 * _458) + 64] = 96
                mem[s + 32] = _460 + (32 * _458) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _458:
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_460]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _460 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _674 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _680 = mem[_460]
            mem[mem[64] + 36] = mem[_460]
            idx = 0
            s = _460 + 32
            t = mem[64] + (32 * _680) + 68
            u = mem[64] + 68
            while idx < _680:
                mem[u] = t + -_674 - 68
                _757 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _759 = mem[_757 + 32]
                mem[t + 32] = 64
                _760 = mem[_759]
                mem[t + 64] = mem[_759]
                v = 0
                while v < _760:
                    mem[v + t + 96] = mem[v + _759 + 32]
                    v = v + 32
                    continue 
                if ceil32(_760) > _760:
                    mem[t + _760 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_760) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _787 = mem[_775 + 32]
            require mem[_775 + 32] <= test266151307()
            require _775 + mem[_775 + 32] + 31 < _775 + return_data.size
            _792 = mem[_775 + mem[_775 + 32]]
            if mem[_775 + mem[_775 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1 < 0 or _775 + ceil32(return_data.size) + ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _775 + ceil32(return_data.size) + ceil32(32 * mem[_775 + mem[_775 + 32]]) + 1
            mem[_775 + ceil32(return_data.size)] = _792
            require (32 * _792) + _787 + 32 <= return_data.size
            s = _775 + ceil32(return_data.size) + 32
            idx = _775 + _787 + 32
            while idx < (32 * _792) + _775 + _787 + 32:
                _814 = mem[idx]
                require mem[idx] <= test266151307()
                require _775 + return_data.size > _775 + _787 + mem[idx] + 63
                _823 = mem[_775 + _787 + mem[idx] + 32]
                if mem[_775 + _787 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _827 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_775 + _787 + mem[idx] + 32])) + 1
                mem[_827] = _823
                require _787 + _814 + _823 + 64 <= return_data.size
                t = 0
                while t < _823:
                    mem[t + _827 + 32] = mem[t + _775 + _787 + _814 + 64]
                    t = t + 32
                    continue 
                if ceil32(_823) > _823:
                    mem[_827 + _823 + 32] = 0
                mem[s] = _827
                s = s + 32
                idx = idx + 32
                continue 
    else:
        _154 = (32 * mem[96]) + 128
        mem[64] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + 128] = 0
        mem[_154 + 32] = 96
        mem[128] = _154
        s = 128
        idx = _2
        while idx - 1:
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 0
            mem[_154 + 32] = 96
            mem[s + 32] = _154
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _2:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _307 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _310 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 68
        u = mem[64] + 68
        while idx < _310:
            mem[u] = t + -_307 - 68
            _445 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _447 = mem[_445 + 32]
            mem[t + 32] = 64
            _448 = mem[_447]
            mem[t + 64] = mem[_447]
            v = 0
            while v < _448:
                mem[v + t + 96] = mem[v + _447 + 32]
                v = v + 32
                continue 
            if ceil32(_448) > _448:
                mem[t + _448 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_448) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _452 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _457 = mem[_452 + 32]
        require mem[_452 + 32] <= test266151307()
        require _452 + mem[_452 + 32] + 31 < _452 + return_data.size
        _459 = mem[_452 + mem[_452 + 32]]
        if mem[_452 + mem[_452 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1 < 0 or _452 + ceil32(return_data.size) + ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _452 + ceil32(return_data.size) + ceil32(32 * mem[_452 + mem[_452 + 32]]) + 1
        mem[_452 + ceil32(return_data.size)] = _459
        require (32 * _459) + _457 + 32 <= return_data.size
        s = _452 + ceil32(return_data.size) + 32
        idx = _452 + _457 + 32
        while idx < (32 * _459) + _452 + _457 + 32:
            _569 = mem[idx]
            require mem[idx] <= test266151307()
            require _452 + return_data.size > _452 + _457 + mem[idx] + 63
            _577 = mem[_452 + _457 + mem[idx] + 32]
            if mem[_452 + _457 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _590 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_452 + _457 + mem[idx] + 32])) + 1
            mem[_590] = _577
            require _457 + _569 + _577 + 64 <= return_data.size
            t = 0
            while t < _577:
                mem[t + _590 + 32] = mem[t + _452 + _457 + _569 + 64]
                t = t + 32
                continue 
            if ceil32(_577) > _577:
                mem[_590 + _577 + 32] = 0
            mem[s] = _590
            s = s + 32
            idx = idx + 32
            continue 
        mem[mem[64]] = 0x4f1ef28600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = arg3.length
        mem[mem[64] + 100 len arg3.length] = arg3[all]
        mem[arg3.length + mem[64] + 100] = 0
        require ext_code.size(arg1)
        call arg1.0x4f1ef286 with:
           value msg.value wei
             gas gas_remaining wei
            args address(arg2), Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _601 = mem[96]
        if mem[96] > test266151307():
            revert with 0, 65
        _604 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _601) + 32
        if not _601:
            idx = 0
            while idx < _601:
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _676 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _683 = mem[_604]
            mem[mem[64] + 36] = mem[_604]
            idx = 0
            s = _604 + 32
            t = mem[64] + (32 * _683) + 68
            u = mem[64] + 68
            while idx < _683:
                mem[u] = t + -_676 - 68
                _761 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _763 = mem[_761 + 32]
                mem[t + 32] = 64
                _764 = mem[_763]
                mem[t + 64] = mem[_763]
                v = 0
                while v < _764:
                    mem[v + t + 96] = mem[v + _763 + 32]
                    v = v + 32
                    continue 
                if ceil32(_764) > _764:
                    mem[t + _764 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_764) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _789 = mem[_777 + 32]
            require mem[_777 + 32] <= test266151307()
            require _777 + mem[_777 + 32] + 31 < _777 + return_data.size
            _793 = mem[_777 + mem[_777 + 32]]
            if mem[_777 + mem[_777 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1 < 0 or _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777 + 32]]) + 1
            mem[_777 + ceil32(return_data.size)] = _793
            require (32 * _793) + _789 + 32 <= return_data.size
            s = _777 + ceil32(return_data.size) + 32
            idx = _777 + _789 + 32
            while idx < (32 * _793) + _777 + _789 + 32:
                _816 = mem[idx]
                require mem[idx] <= test266151307()
                require _777 + return_data.size > _777 + _789 + mem[idx] + 63
                _824 = mem[_777 + _789 + mem[idx] + 32]
                if mem[_777 + _789 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _828 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_777 + _789 + mem[idx] + 32])) + 1
                mem[_828] = _824
                require _789 + _816 + _824 + 64 <= return_data.size
                t = 0
                while t < _824:
                    mem[t + _828 + 32] = mem[t + _777 + _789 + _816 + 64]
                    t = t + 32
                    continue 
                if ceil32(_824) > _824:
                    mem[_828 + _824 + 32] = 0
                mem[s] = _828
                s = s + 32
                idx = idx + 32
                continue 
        else:
            mem[64] = _604 + (32 * _601) + 96
            mem[_604 + (32 * _601) + 32] = 0
            mem[_604 + (32 * _601) + 64] = 96
            mem[_604 + 32] = _604 + (32 * _601) + 32
            s = _604 + 32
            idx = _601
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_604 + (32 * _601) + 32] = 0
                mem[_604 + (32 * _601) + 64] = 96
                mem[s + 32] = _604 + (32 * _601) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _601:
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32]] = arg1
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_604]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _604 + 32] + 32] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _765 = mem[64]
            mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _769 = mem[_604]
            mem[mem[64] + 36] = mem[_604]
            idx = 0
            s = _604 + 32
            t = mem[64] + (32 * _769) + 68
            u = mem[64] + 68
            while idx < _769:
                mem[u] = t + -_765 - 68
                _818 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _820 = mem[_818 + 32]
                mem[t + 32] = 64
                _821 = mem[_820]
                mem[t + 64] = mem[_820]
                v = 0
                while v < _821:
                    mem[v + t + 96] = mem[v + _820 + 32]
                    v = v + 32
                    continue 
                if ceil32(_821) > _821:
                    mem[t + _821 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_821) + t + 96
                u = u + 32
                continue 
            require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
            call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _830 = mem[_825 + 32]
            require mem[_825 + 32] <= test266151307()
            require _825 + mem[_825 + 32] + 31 < _825 + return_data.size
            _831 = mem[_825 + mem[_825 + 32]]
            if mem[_825 + mem[_825 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1 < 0 or _825 + ceil32(return_data.size) + ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _825 + ceil32(return_data.size) + ceil32(32 * mem[_825 + mem[_825 + 32]]) + 1
            mem[_825 + ceil32(return_data.size)] = _831
            require (32 * _831) + _830 + 32 <= return_data.size
            s = _825 + ceil32(return_data.size) + 32
            idx = _825 + _830 + 32
            while idx < (32 * _831) + _825 + _830 + 32:
                _841 = mem[idx]
                require mem[idx] <= test266151307()
                require _825 + return_data.size > _825 + _830 + mem[idx] + 63
                _843 = mem[_825 + _830 + mem[idx] + 32]
                if mem[_825 + _830 + mem[idx] + 32] > test266151307():
                    revert with 0, 65
                _844 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_825 + _830 + mem[idx] + 32])) + 1
                mem[_844] = _843
                require _830 + _841 + _843 + 64 <= return_data.size
                t = 0
                while t < _843:
                    mem[t + _844 + 32] = mem[t + _825 + _830 + _841 + 64]
                    t = t + 32
                    continue 
                if ceil32(_843) > _843:
                    mem[_844 + _843 + 32] = 0
                mem[s] = _844
                s = s + 32
                idx = idx + 32
                continue 
}



}
