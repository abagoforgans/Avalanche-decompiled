contract main {




// =====================  Runtime code  =====================


#
#  - getPrice(address arg1)
#  - sub_71e5c903(?)
#  - getPrices(address[] arg1)
#
const sub_f96d0baa(?) = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of address stor1;

function _fallback() payable {
    revert
}

function sub_73cf25f8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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
