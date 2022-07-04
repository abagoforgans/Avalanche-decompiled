contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function destroySmartContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_f2045ac4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.skim(address arg1) with:
         gas gas_remaining wei
        args 0x7dc0587f3360f427c469e81c5f50d39f0f18f7ce
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
