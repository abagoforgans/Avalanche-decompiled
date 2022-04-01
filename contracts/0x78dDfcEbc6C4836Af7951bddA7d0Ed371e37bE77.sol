contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a7ac4c9(?)
#  - sub_393a1f65(?)
#  - sub_49f207fb(?)
#  - sub_5cbaee44(?)
#  - sub_6de44cbb(?)
#  - sub_7865a310(?)
#  - sub_825af36d(?)
#  - sub_cc2a66a2(?)
#  - sub_cf70bba4(?)
#  - sub_e0c42031(?)
#  - swap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5, uint256 arg6)
#  - sub_efb653bc(?)
#  - sub_f4416945(?)
#
address sub_2a739a72Address;

function sub_2a739a72(?) {
    return sub_2a739a72Address
}

function _fallback() payable {
    require tx.origin != msg.sender
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[96] = 0x8373f26500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = 0
    require ext_code.size(sub_2a739a72Address)
    staticcall sub_2a739a72Address.0x8373f265 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 == mem[96 len 4], address(arg1) << 64
    require 0, address(arg2) << 64 == 0, address(arg2) << 64
    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
    require 0, Mask(224, 32, arg3) >> 32 + 127 < return_data.size + 96
    _7 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require 0, Mask(224, 32, arg3) >> 32 + (32 * _7) + 32 <= return_data.size
    idx = 0
    s = 0, Mask(224, 32, arg3) >> 32 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _7
    mem[mem[64] + 96 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return _4, Array(len=_7, data=mem[mem[64] + 96 len 32 * _7])
}

function getExpectedReturnWithGas(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[96] = 0x8373f26500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = arg6
    require ext_code.size(sub_2a739a72Address)
    staticcall sub_2a739a72Address.0x8373f265 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 == mem[96 len 4], address(arg1) << 64
    require 0, address(arg2) << 64 == 0, address(arg2) << 64
    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
    require 0, Mask(224, 32, arg3) >> 32 + 127 < return_data.size + 96
    _7 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require 0, Mask(224, 32, arg3) >> 32 + (32 * _7) + 32 <= return_data.size
    idx = 0
    s = 0, Mask(224, 32, arg3) >> 32 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 0, address(arg2) << 64
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _7
    mem[mem[64] + 128 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return _4, 0, address(arg2) << 64, 96, _7, mem[mem[64] + 128 len 32 * _7]
}



}
