contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b5ff232(?)
#  - sub_a06f0acb(?)
#  - sub_e608da4b(?)
#  - sub_e665bd3b(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_55007401(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor1 = address(arg1)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function withdrawAll() payable {
    require msg.sender == stor0
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}



}
