contract main {




// =====================  Runtime code  =====================


address comptrollerAddress;

function comptroller() payable {
    return comptrollerAddress
}

function _fallback() payable {
    revert
}

function claimReward(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.nonce() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimReward(uint8 arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(arg2)
    staticcall arg2.nonce() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0x744532ae with:
         gas gas_remaining wei
        args 0, 0, address(arg2), 96, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).nonce() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    mem[292 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 292] = 0
    mem[floor32(arg2.length) + 292] = arg3.length
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0x8805714b with:
         gas gas_remaining wei
        args 0, 0, 160, floor32(arg2.length) + 192, arg4, arg5, arg2.length, mem[292 len floor32(arg2.length) + 32], call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
