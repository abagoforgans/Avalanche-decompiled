contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor5;

function _fallback() payable {
    revert
}

function step2() payable {
    if 0x764bfdb1293edb1e7a529e7eb543913af4fe473c != msg.sender:
        revert with 0, 'Deploy addr'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 3:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    call stor1.0x9dc29fac with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0] - 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, 30000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor5)
    staticcall stor5.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 980 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10^18:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0] - 10^18, 0x455b9a4d359d8828cde962664479052527b062b7, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args 0x455b9a4d359d8828cde962664479052527b062b7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10^18:
        revert with 0, 'less'
}



}
