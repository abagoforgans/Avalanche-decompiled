contract main {




// =====================  Runtime code  =====================


#
#  - sub_84898ce5(?)
#  - sub_a2bdcca0(?)
#
address stor0;
address stor3;

function _fallback() payable {
  stop
}

function sub_2180a542(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall 'console.log'.log(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(arg1)
    return sha3(arg1), 64, 32, arg1
}

function approveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
