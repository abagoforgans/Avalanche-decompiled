contract main {




// =====================  Runtime code  =====================


address controllerAddress;

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function sub_6101c540(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = 1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe765ced6 with:
            gas gas_remaining wei
           args 1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x34283354 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).getComponents() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _13 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = _13
    require return_data.size >= _12 + (32 * _13) + 32
    s = (2 * ceil32(return_data.size)) + _12 + 128
    t = (4 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _13:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < _13:
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _262 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xac41865a with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _267 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_267]
        mem[mem[64] + 4] = address(_262)
        require ext_code.size(address(arg1))
        staticcall address(arg1).getTotalComponentRealUnits(address rg1) with:
                gas gas_remaining wei
               args address(_262)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _277 = mem[_276]
        require ext_code.size(address(_262))
        staticcall address(_262).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_280] == mem[_280 + 31 len 1]
        if 10^mem[_280 + 31 len 1] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'SafeCast: value doesn't fit in an int256'
        if not _277:
            if not 10^mem[_280 + 31 len 1]:
                revert with 0, 'SignedSafeMath: division by zero'
            require 10^mem[_280 + 31 len 1]
            if _270 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'SafeCast: value doesn't fit in an int256'
            if 0 / 10^mem[_280 + 31 len 1]:
                if -1 == 0 / 10^mem[_280 + 31 len 1]:
                    if _270 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignedSafeMath: multiplication overflow'
                require 0 / 10^mem[_280 + 31 len 1]
                if _270 * 0 / 10^mem[_280 + 31 len 1] / 0 / 10^mem[_280 + 31 len 1] != _270:
                    revert with 0, 'SignedSafeMath: multiplication overflow'
                if _270 * 0 / 10^mem[_280 + 31 len 1] / 10^18 < _270 * 0 / 10^mem[_280 + 31 len 1] / 10^18:
                    revert with 0, 'SignedSafeMath: addition overflow'
        else:
            require _277
            if 10^18 * _277 / _277 != 10^18:
                revert with 0, 'SignedSafeMath: multiplication overflow'
            if not 10^mem[_280 + 31 len 1]:
                revert with 0, 'SignedSafeMath: division by zero'
            if -1 == 10^mem[_280 + 31 len 1]:
                if 10^18 * _277 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'SignedSafeMath: division overflow'
            require 10^mem[_280 + 31 len 1]
            if _270 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'SafeCast: value doesn't fit in an int256'
            if 10^18 * _277 / 10^mem[_280 + 31 len 1]:
                if -1 == 10^18 * _277 / 10^mem[_280 + 31 len 1]:
                    if _270 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignedSafeMath: multiplication overflow'
                require 10^18 * _277 / 10^mem[_280 + 31 len 1]
                if _270 * 10^18 * _277 / 10^mem[_280 + 31 len 1] / 10^18 * _277 / 10^mem[_280 + 31 len 1] != _270:
                    revert with 0, 'SignedSafeMath: multiplication overflow'
                if _270 * 10^18 * _277 / 10^mem[_280 + 31 len 1] / 10^18 < _270 * 10^18 * _277 / 10^mem[_280 + 31 len 1] / 10^18:
                    revert with 0, 'SignedSafeMath: addition overflow'
        idx = idx + 1
        continue 
    if address(ext_call.return_data[0]) == address(arg2):
        return 0
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xac41865a with:
            gas gas_remaining wei
           args address(arg2), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _266 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_266] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'SafeCast: value doesn't fit in an int256'
    if not mem[_266]:
        revert with 0, 'SignedSafeMath: division by zero'
    require mem[_266]
    if 0 / mem[_266] < 0:
        revert with 0, 'SafeCast: value must be positive'
    mem[mem[64]] = 0 / mem[_266]
    return memory
      from mem[64]
       len 32
}



}
