contract main {




// =====================  Runtime code  =====================


#
#  - sub_1de9c881(?)
#  - sub_ecfa311d(?)
#
function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x11ef9bf5591ca7e48442def2858a0927ff1529ce01b14c203fb351eaa:
        revert with 0, 17
    return (3831377025 * arg1)
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 128
    _3 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg2.length + 128
    _4 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
    require arg2.length + 32 >= _3 + (32 * _4) + 64
    s = _3 + 160
    t = ceil32(arg2.length) + 160
    idx = 0
    while idx < _4:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _210 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg2.length + 128
    _212 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 0, 65
    _213 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_213] = mem[mem[160] + 128]
    require arg2.length + 32 >= _210 + (32 * _212) + 64
    idx = 0
    s = _210 + 160
    t = _213 + 32
    while idx < _212:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _414 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < arg2.length + 128
    _416 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 0, 65
    _417 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_417] = mem[mem[192] + 128]
    require arg2.length + 32 >= _414 + (32 * _416) + 64
    mem[_417 + 32 len 32 * _416] = mem[_414 + 160 len 32 * _416]
    _615 = mem[224]
    require mem[224] <= test266151307()
    require mem[224] + 159 < arg2.length + 128
    _616 = mem[mem[224] + 128]
    if mem[mem[224] + 128] > test266151307():
        revert with 0, 65
    _617 = mem[64]
    if mem[64] + (32 * mem[mem[224] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[224] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[224] + 128]) + 32
    mem[_617] = mem[mem[224] + 128]
    require arg2.length + 32 >= _615 + (32 * _616) + 64
    idx = 0
    s = _615 + 160
    t = _617 + 32
    while idx < _616:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_213] < 1:
        revert with 0, 17
    if mem[_213] - 1 >= mem[_213]:
        revert with 0, 50
    require ext_code.size(msg.sender)
    if mem[(32 * mem[_213] - 1) + _213 + 32]:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _818 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _820 = mem[_818]
        require mem[_818] == mem[_818 + 12 len 20]
        if 0 >= mem[ceil32(arg2.length) + 128]:
            revert with 0, 50
        if 0 >= mem[_417]:
            revert with 0, 50
        _826 = mem[_417 + 32]
        mem[mem[64] + 4] = mem[ceil32(arg2.length) + 172 len 20]
        mem[mem[64] + 36] = _826
        require ext_code.size(address(_820))
        call address(_820).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _826
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _834 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_834] == bool(mem[_834])
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        if var137001 < 1:
            revert with 0, 17
        if var141002 >= var141001:
        if var143001 >= mem[_213]:
            revert with 0, 50
        if mem[(32 * var145001) + _213 + 32]:
            if var149003 >= mem[_213]:
                revert with 0, 50
            if mem[(32 * var151001) + _213 + 32]:
                if 1 > !var159002:
                    revert with 0, 17
                if var163001 >= mem[_417]:
                    revert with 0, 50
                if var162004 >= _616:
                    revert with 0, 50
                # nil
            else:
                if var155004 >= _616:
                    revert with 0, 50
                if not mem[(32 * var157001) + _617 + 32]:
                    if var155003 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if 1 > !var159002:
                        revert with 0, 17
                    # nil
                else:
                    if var159003 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if 1 > !var163002:
                        revert with 0, 17
                    # nil
        else:
            if 1 > !var149002:
                revert with 0, 17
            if var153001 >= mem[_417]:
                revert with 0, 50
            if var152003 >= mem[_213]:
                revert with 0, 50
            if mem[(32 * var154001) + _213 + 32]:
                if 1 > !var162002:
                    revert with 0, 17
                # nil
            else:
                if var158004 >= _616:
                    revert with 0, 50
                # nil
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _819 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _821 = mem[_819]
        require mem[_819] == mem[_819 + 12 len 20]
        if 0 >= mem[ceil32(arg2.length) + 128]:
            revert with 0, 50
        if 0 >= mem[_417]:
            revert with 0, 50
        _830 = mem[_417 + 32]
        mem[mem[64] + 4] = mem[ceil32(arg2.length) + 172 len 20]
        mem[mem[64] + 36] = _830
        require ext_code.size(address(_821))
        call address(_821).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _830
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _835 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_835] == bool(mem[_835])
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        if var138001 < 1:
            revert with 0, 17
        if var142002 >= var142001:
        if var144001 >= mem[_213]:
            revert with 0, 50
        if mem[(32 * var146001) + _213 + 32]:
            if var150003 >= mem[_213]:
                revert with 0, 50
            if mem[(32 * var152001) + _213 + 32]:
                if 1 > !var160002:
                    revert with 0, 17
                if var164001 >= mem[_417]:
                    revert with 0, 50
                if var163004 >= _616:
                    revert with 0, 50
                # nil
            else:
                if var156004 >= _616:
                    revert with 0, 50
                if not mem[(32 * var158001) + _617 + 32]:
                    if var156003 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if 1 > !var160002:
                        revert with 0, 17
                    # nil
                else:
                    if var160003 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if 1 > !var164002:
                        revert with 0, 17
                    # nil
        else:
            if 1 > !var150002:
                revert with 0, 17
            if var154001 >= mem[_417]:
                revert with 0, 50
            if var153003 >= mem[_213]:
                revert with 0, 50
            if mem[(32 * var155001) + _213 + 32]:
                if 1 > !var163002:
                    revert with 0, 17
                # nil
            else:
                if var159004 >= _616:
                    revert with 0, 50
                # nil
}



}
