contract main {




// =====================  Runtime code  =====================


address sub_cc7e5aa2Address;
address lendingPoolAddr;
uint256 stor1;
uint256 stor2;

function lendingPoolAddr() {
    return address(lendingPoolAddr)
}

function sub_cc7e5aa2(?) {
    return sub_cc7e5aa2Address
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HealthChecker does not accept payments'
}

function sub_ebff89a3(?) {
    require ext_code.size(sub_cc7e5aa2Address)
    call sub_cc7e5aa2Address.getLendingPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
}

function sub_7fbddbd9(?) {
    require ext_code.size(address(lendingPoolAddr))
    call address(lendingPoolAddr).getUserAccountData(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    stor2 = ext_call.return_data[160]
    return stor2
}

function sub_9b5ca068(?) {
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[1579 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(lendingPoolAddr))
        call address(lendingPoolAddr).getUserAccountData(address arg1) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)])
        mem[(32 * ('cd', 4).length) + 128 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        stor2 = ext_call.return_data[160]
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = stor2
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}



}
