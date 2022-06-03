contract main {




// =====================  Runtime code  =====================


#
#  - getFullReservesIncentiveData(address arg1, address arg2)
#  - getUserReservesIncentivesData(address arg1, address arg2)
#  - getReservesIncentivesData(address arg1)
#
const sub_9dd9e2ce(?) = 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2


function _fallback() payable {
    revert
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return ''
}

function getSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2 == arg1:
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ''
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _9 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _9
    require _7 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_7 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        _30 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _9
        mem[mem[64] + 64 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
        if ceil32(_9) <= _9:
            return Array(len=_9, data=mem[mem[64] + 64 len ceil32(_9)])
        mem[mem[64] + _9 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_9) + _30 + -mem[64] + 64
    mem[ceil32(return_data.size) + _9 + 128] = 0
    _32 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    mem[mem[64] + 64 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        return Array(len=_9, data=mem[mem[64] + 64 len ceil32(_9)])
    mem[mem[64] + _9 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_9) + _32 + -mem[64] + 64
}



}
