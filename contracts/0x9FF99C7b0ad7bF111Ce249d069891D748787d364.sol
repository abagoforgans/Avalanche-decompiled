contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_5180a3c9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1 = arg1
    return 0
}

function createRandom(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    require arg2
    require ext_code.size(stor1)
    call stor1.0x352f1325 with:
         gas gas_remaining wei
        args sha3(block.difficulty, block.timestamp, arg2) % arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
