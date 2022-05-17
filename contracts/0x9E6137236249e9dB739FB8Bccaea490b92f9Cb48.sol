contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function claim() payable {
    require ext_code.size(stor1)
    call stor1.cashoutAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require return_data.size >= 32
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if arg2.length < 3:
        revert with 0, 'You prefix is too short'
    require ext_code.size(stor1)
    call stor1.createNodeWithTokens(string arg1) with:
         gas gas_remaining wei
        args 'Soldier_4'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
