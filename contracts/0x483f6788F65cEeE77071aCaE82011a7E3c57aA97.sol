contract main {




// =====================  Runtime code  =====================


mapping of address stor90909012999857140622417080374671856515688564136957639390032885430481714942748;

function _fallback() payable {
    if not calldata.size:
    if not storC8FC[call.func_hash]:
        revert with 0, 'Diamond: Function does not exist'
    delegate storC8FC[call.func_hash] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
