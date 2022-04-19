contract main {




// =====================  Runtime code  =====================


address owner;
address refAddress;

function ref() payable {
    return refAddress
}

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

function setRef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    refAddress = arg1
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

function getReferenceData(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(refAddress)
        staticcall refAddress.0x65555bcc with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + 294] = arg2.length
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + 326 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + arg2.length + 326] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.0x65555bcc with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 326 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 290 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getReferenceDataBulk(string[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        if cd[(arg1 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _106 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1
        mem[_106] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_106 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_106 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _106
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    _107 = mem[64]
    if mem[64] + floor32(arg2.length) + 1 > test266151307() or mem[64] + floor32(arg2.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg2.length) + 1
    mem[_107] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _107 + 32
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _220 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_220] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_220 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_220 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _220
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[_107]:
        revert with 0, 'BAD_INPUT_LENGTH'
    _212 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _214 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _212) + 32
    if not _212:
        idx = 0
        while idx < _212:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _315 = mem[(32 * idx) + 128]
            if idx >= mem[_107]:
                revert with 'NH{q', 50
            _317 = mem[(32 * idx) + _107 + 32]
            _319 = mem[64]
            mem[64] = mem[64] + 96
            mem[_319] = 0
            mem[_319 + 32] = 0
            mem[_319 + 64] = 0
            _320 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _326 = mem[_315]
            mem[mem[64] + 68] = mem[_315]
            s = 0
            while s < _326:
                mem[mem[64] + s + 100] = mem[_315 + s + 32]
                s = s + 32
                continue 
            if ceil32(_326) <= _326:
                mem[mem[64] + 36] = ceil32(_326) + 96
                _418 = mem[_317]
                mem[mem[64] + ceil32(_326) + 100] = mem[_317]
                s = 0
                while s < _418:
                    mem[mem[64] + ceil32(_326) + s + 132] = mem[_317 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_418) <= _418:
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _320 + ceil32(_326) + ceil32(_418) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _515 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_507] == mem[_507]
                    mem[_515] = mem[_507]
                    require mem[_507 + 32] == mem[_507 + 32]
                    mem[_515 + 32] = mem[_507 + 32]
                    require mem[_507 + 64] == mem[_507 + 64]
                    mem[_515 + 64] = mem[_507 + 64]
                    if idx >= mem[_214]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _214 + 32] = _515
                else:
                    mem[_320 + ceil32(_326) + _418 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _320 + ceil32(_326) + ceil32(_418) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _518 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_510] == mem[_510]
                    mem[_518] = mem[_510]
                    require mem[_510 + 32] == mem[_510 + 32]
                    mem[_518 + 32] = mem[_510 + 32]
                    require mem[_510 + 64] == mem[_510 + 64]
                    mem[_518 + 64] = mem[_510 + 64]
                    if idx >= mem[_214]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _214 + 32] = _518
            else:
                mem[mem[64] + _326 + 100] = 0
                mem[mem[64] + 36] = ceil32(_326) + 96
                _419 = mem[_317]
                mem[mem[64] + ceil32(_326) + 100] = mem[_317]
                s = 0
                while s < _419:
                    mem[mem[64] + ceil32(_326) + s + 132] = mem[_317 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_419) <= _419:
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _320 + ceil32(_326) + ceil32(_419) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _516 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_508] == mem[_508]
                    mem[_516] = mem[_508]
                    require mem[_508 + 32] == mem[_508 + 32]
                    mem[_516 + 32] = mem[_508 + 32]
                    require mem[_508 + 64] == mem[_508 + 64]
                    mem[_516 + 64] = mem[_508 + 64]
                    if idx >= mem[_214]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _214 + 32] = _516
                else:
                    mem[_320 + ceil32(_326) + _419 + 132] = 0
                    require ext_code.size(refAddress)
                    staticcall refAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _320 + ceil32(_326) + ceil32(_419) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _519 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_511] == mem[_511]
                    mem[_519] = mem[_511]
                    require mem[_511 + 32] == mem[_511 + 32]
                    mem[_519 + 32] = mem[_511 + 32]
                    require mem[_511 + 64] == mem[_511 + 64]
                    mem[_519 + 64] = mem[_511 + 64]
                    if idx >= mem[_214]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _214 + 32] = _519
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _314 = mem[64]
        mem[mem[64]] = 32
        _318 = mem[_214]
        mem[mem[64] + 32] = mem[_214]
        idx = 0
        s = _214 + 32
        t = mem[64] + 64
        while idx < _318:
            _408 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_408 + 32]
            mem[t + 64] = mem[_408 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _314 + (96 * _318) + -mem[64] + 64
    mem[64] = _214 + (32 * _212) + 128
    mem[_214 + (32 * _212) + 32] = 0
    mem[_214 + (32 * _212) + 64] = 0
    mem[_214 + (32 * _212) + 96] = 0
    mem[var54001] = _214 + (32 * _212) + 32
    s = var54001
    idx = var54002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_214 + (32 * _212) + 32] = 0
        mem[_214 + (32 * _212) + 64] = 0
        mem[_214 + (32 * _212) + 96] = 0
        mem[s + 32] = _214 + (32 * _212) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _212:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _497 = mem[(32 * idx) + 128]
        if idx >= mem[_107]:
            revert with 'NH{q', 50
        _499 = mem[(32 * idx) + _107 + 32]
        _501 = mem[64]
        mem[64] = mem[64] + 96
        mem[_501] = 0
        mem[_501 + 32] = 0
        mem[_501 + 64] = 0
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _509 = mem[_497]
        mem[mem[64] + 68] = mem[_497]
        s = 0
        while s < _509:
            mem[mem[64] + s + 100] = mem[_497 + s + 32]
            s = s + 32
            continue 
        if ceil32(_509) <= _509:
            mem[mem[64] + 36] = ceil32(_509) + 96
            _575 = mem[_499]
            mem[mem[64] + ceil32(_509) + 100] = mem[_499]
            s = 0
            while s < _575:
                mem[mem[64] + ceil32(_509) + s + 132] = mem[_499 + s + 32]
                s = s + 32
                continue 
            if ceil32(_575) <= _575:
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_509) + 96, mem[mem[64] + 68 len ceil32(_509) + ceil32(_575) + 64]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _618 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                require mem[_614] == mem[_614]
                mem[_618] = mem[_614]
                require mem[_614 + 32] == mem[_614 + 32]
                mem[_618 + 32] = mem[_614 + 32]
                require mem[_614 + 64] == mem[_614 + 64]
                mem[_618 + 64] = mem[_614 + 64]
                if idx >= mem[_214]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _214 + 32] = _618
            else:
                mem[mem[64] + ceil32(_509) + _575 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_509) + 96, mem[mem[64] + 68 len ceil32(_509) + ceil32(_575) + 64]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _620 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                require mem[_616] == mem[_616]
                mem[_620] = mem[_616]
                require mem[_616 + 32] == mem[_616 + 32]
                mem[_620 + 32] = mem[_616 + 32]
                require mem[_616 + 64] == mem[_616 + 64]
                mem[_620 + 64] = mem[_616 + 64]
                if idx >= mem[_214]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _214 + 32] = _620
        else:
            mem[mem[64] + _509 + 100] = 0
            mem[mem[64] + 36] = ceil32(_509) + 96
            _576 = mem[_499]
            mem[mem[64] + ceil32(_509) + 100] = mem[_499]
            s = 0
            while s < _576:
                mem[mem[64] + ceil32(_509) + s + 132] = mem[_499 + s + 32]
                s = s + 32
                continue 
            if ceil32(_576) <= _576:
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_509) + 96, mem[mem[64] + 68 len _509 + 32], 0, mem[mem[64] + _509 + 132 len ceil32(_509) + ceil32(_576) - _509]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _615 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _619 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                require mem[_615] == mem[_615]
                mem[_619] = mem[_615]
                require mem[_615 + 32] == mem[_615 + 32]
                mem[_619 + 32] = mem[_615 + 32]
                require mem[_615 + 64] == mem[_615 + 64]
                mem[_619 + 64] = mem[_615 + 64]
                if idx >= mem[_214]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _214 + 32] = _619
            else:
                mem[mem[64] + ceil32(_509) + _576 + 132] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.0x65555bcc with:
                        gas gas_remaining wei
                       args 64, ceil32(_509) + 96, mem[mem[64] + 68 len _509 + 32], 0, mem[mem[64] + _509 + 132 len ceil32(_509) + ceil32(_576) - _509]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _621 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                require mem[_617] == mem[_617]
                mem[_621] = mem[_617]
                require mem[_617 + 32] == mem[_617 + 32]
                mem[_621 + 32] = mem[_617 + 32]
                require mem[_617 + 64] == mem[_617 + 64]
                mem[_621 + 64] = mem[_617 + 64]
                if idx >= mem[_214]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _214 + 32] = _621
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _496 = mem[64]
    mem[mem[64]] = 32
    _500 = mem[_214]
    mem[mem[64] + 32] = mem[_214]
    idx = 0
    s = _214 + 32
    t = mem[64] + 64
    while idx < _500:
        _570 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_570 + 32]
        mem[t + 64] = mem[_570 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _496 + (96 * _500) + -mem[64] + 64
}



}
