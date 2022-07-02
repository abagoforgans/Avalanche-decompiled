contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_ad845afa(?) {
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}

function sub_99970e2c(?) {
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[0])
}

function sub_30c96253(?) {
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor3)
    staticcall stor3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[0])
}

function sub_e786d75f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 2 * arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = 2 * arg1.length
    if uint255(arg1.length):
        mem[(32 * arg1.length) + 160 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length - 1:
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[(98 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[(32 * arg1.length) + 128]
        mem[(64 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
        mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[(98 * arg1.length) + 160] = 32
    mem[(98 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(98 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}



}
