contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_df9aee68(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 unlockTime;
address stor2;
address stor3;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
address stor7;
uint256 stor8;
uint8 stor9;
uint256 stor9;

function unlockTime() {
    return unlockTime
}

function _fallback() payable {
    revert
}

function lockPool(uint256 arg1) {
    require calldata.size - 4 >= 32
}

function sub_cdd13f72(?) {
    require calldata.size - 4 >= 128
    stor2 = arg1
    stor3 = arg2
    uint256(stor9) = arg3 > 0 or Mask(248, 8, uint256(stor9))
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    if uint8(stor9):
        stor6 = address(stor5)
        stor7 = address(stor4)
        stor8 = arg3
    else:
        stor6 = address(stor4)
        stor7 = address(stor5)
        stor8 = arg4
    emit 0x9d9f74a5: Array(len=25, data='start swapping with dex A')
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), '1'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9d9f74a5: Array(len=19, data='Send profit to self')
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
