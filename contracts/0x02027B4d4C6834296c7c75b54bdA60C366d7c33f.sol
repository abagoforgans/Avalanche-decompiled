contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;

function pendingAdmin() payable {
    return pendingAdminAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function _setPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function sub_5dffff50(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.0xe9c714f2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _acceptAdmin() payable {
    if pendingAdminAddress != msg.sender:
        return 1
    if not msg.sender:
        return 1
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, pendingAdminAddress);
    return 0
}

function sub_0a102c4a(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xb71d1a0c with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6abdc18e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xb71d1a0c with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_68b81791(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c792061646d696e2063616e207365742061637469766520636f6c6c61746572616c20636170,
                    mem[205 len 23]
    mem[96] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.getAllMarkets() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 0x1585f0d900000000000000000000000000000000000000000000000000000000
    mem[(32 * _9) + ceil32(return_data.size) + 132] = 64
    mem[(32 * _9) + ceil32(return_data.size) + 196] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 228 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    mem[(32 * mem[ceil32(return_data.size) + 96]) + (32 * _9) + ceil32(return_data.size) + 228] = arg2.length
    require ext_code.size(arg1)
    call arg1.0x1585f0d9 with:
         gas gas_remaining wei
        args Array(len=mem[ceil32(return_data.size) + 96], data=mem[(32 * _9) + ceil32(return_data.size) + 228 len (32 * mem[ceil32(return_data.size) + 96]) + 32], call.data[arg2 + 36 len floor32(arg2.length)]), (32 * mem[ceil32(return_data.size) + 96]) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e15fe5af(?) payable {
    require calldata.size - 4 >= 288
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin can add market'
    mem[ceil32(arg4.length) + 292] = 0
    require ext_code.size(arg1)
    call arg1.0xbe2f17e with:
         gas gas_remaining wei
        args 0, 0, arg3, 160, address(arg5), ceil32(arg4.length) + 192, arg4.length, arg4[all], 0, mem[arg4.length + 324 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xc229b0d0 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0])._setReserveFactor(uint256 rg1) with:
         gas gas_remaining wei
        args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xf6f50139 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1._setCollateralFactor(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1._setLiquidationIncentive(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
