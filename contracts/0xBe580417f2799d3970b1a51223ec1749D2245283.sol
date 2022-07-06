contract main {




// =====================  Runtime code  =====================


#
#  - getPrice(address arg1)
#  - sub_71e5c903(?)
#  - getPrices(address[] arg1)
#
const sub_f96d0baa(?) = 10^18


function _fallback() payable {
    revert
}

function sub_27473a42(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangOrTjLibrary: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'PangOrTjLibrary: ZERO_ADDRESS'
        mem[100] = address(arg1)
        mem[132] = address(arg2)
        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
        if ext_call.success:
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(arg1) == address(arg1):
                return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
            return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
    else:
        if not address(arg2):
            revert with 0, 'PangOrTjLibrary: ZERO_ADDRESS'
        mem[100] = address(arg1)
        mem[132] = address(arg2)
        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
        if ext_call.success:
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(arg1) == address(arg2):
                return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
            return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
    ('iszero', 'ext_call.success')
    if return_data.size <= 3:
        return 0
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        return 0
    if return_data.size < 68:
        return 0
    mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        return 0
    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] > test266151307():
        return 0
    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] + 32 > return_data.size - 4:
        return 0
    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] + 31) + 97 < 96 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] + 31) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] + 31) + 97
    if not ceil32(return_data.size) + ext_call.return_data[0] + 96:
        if return_data.size:
            return 0
    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 96] + 31) + 97] = 0
    return mem[mem[64]], 0
}



}
