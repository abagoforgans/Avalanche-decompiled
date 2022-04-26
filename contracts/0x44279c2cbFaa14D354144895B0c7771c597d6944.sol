contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, string arg2, address arg3, uint256 arg4, address arg5, uint256 arg6, bytes arg7)
#
address controllerAddress;

function controller() payable {
    return controllerAddress
}

function removeModule() payable {
  stop
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be controller-enabled SetToken'
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be pending initialization'
    require ext_code.size(arg1)
    staticcall arg1.manager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the SetToken manager'
    require ext_code.size(arg1)
    call arg1.initializeModule() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
