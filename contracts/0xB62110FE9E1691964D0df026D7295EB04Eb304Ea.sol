contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function transferFees() payable {
    if stor0 != msg.sender:
        revert with 0, 'invalid caller'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6fee75aa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(address(arg1))
    call address(arg1).0xf5ce3bc0 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor2 > !ext_call.return_data[0]:
        revert with 0, 17
    stor2 += ext_call.return_data[0]
}



}
