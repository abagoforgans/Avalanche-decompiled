contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserve(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = var28001
    staticcall arg3.coins(uint256 arg1) with:
            gas gas_remaining wei
           args var28001
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var32002 - var32001 >= 32
    require mem[var34002] == mem[var34002 + 12 len 20]
    s = mem[var34002]
    idx = mem[var34002]
    s = var34002
    s = var34003
    s = var34006
    while address(idx) != arg2:
        if s > -2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = s + 1
        staticcall arg3.coins(uint256 arg1) with:
                gas gas_remaining wei
               args (s + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == mem[_60 + 12 len 20]
        s = mem[_60]
        idx = mem[_60]
        s = _60
        s = _60 + return_data.size
        s = s + 1
        continue 
    mem[mem[64] + 4] = s
    staticcall arg3.balances(uint256 arg1) with:
            gas gas_remaining wei
           args s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_59]
    return memory
      from mem[64]
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    mem[100] = this.address
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = var38001
    staticcall arg4.coins(uint256 arg1) with:
            gas gas_remaining wei
           args var38001
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var42002 - var42001 >= 32
    require var46001 == address(var46001)
    if address(var46003) == arg1:
        if ('signextend', 15, ('var', 46010)) >= 0 and 1 > -('signextend', 15, ('var', 46010)) + 0x7fffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if ('signextend', 15, ('var', 46010)) < 0 and 1 < -('signextend', 15, ('var', 46010)) - 0x80000000000000000000000000000000:
            revert with 'NH{q', 17
        if var46009 > -2:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 100] = var46009 + 1
        staticcall arg4.coins(uint256 arg1) with:
                gas gas_remaining wei
               args (var46009 + 1)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        var46001 = ext_call.return_data[0]
        var46003 = ext_call.return_data[0]
        var46005 = (2 * ceil32(return_data.size)) + 96
        var46006 = (2 * ceil32(return_data.size)) + return_data.size + 96
        var46009 = var46009 + 1
        var46010 = ('signextend', 15, ('var', 46010)) + 1
        var46012 = var46010
        continue 
    if address(var46003) == arg2:
        if ('signextend', 15, ('var', 46012)) != 0x7fffffffffffffffffffffffffffffff:
            require ext_code.size(arg4)
            call arg4.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', 46012)), ('signextend', 15, ('var', 46010)), arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            else:
                return 0
    if ('signextend', 15, ('var', 46010)) >= 0 and 1 > -('signextend', 15, ('var', 46010)) + 0x7fffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if ('signextend', 15, ('var', 46010)) < 0 and 1 < -('signextend', 15, ('var', 46010)) - 0x80000000000000000000000000000000:
        revert with 'NH{q', 17
    if var46009 > -2:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 100] = var46009 + 1
    staticcall arg4.coins(uint256 arg1) with:
            gas gas_remaining wei
           args (var46009 + 1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    var46001 = ext_call.return_data[0]
    var46003 = ext_call.return_data[0]
    var46005 = (2 * ceil32(return_data.size)) + 96
    var46006 = (2 * ceil32(return_data.size)) + return_data.size + 96
    var46009 = var46009 + 1
    var46010 = ('signextend', 15, ('var', 46010)) + 1
    var46012 = var46012
    continue 
}



}
