contract main {




// =====================  Runtime code  =====================


mapping of address functionImplementation;

function getFunctionImplementation(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return functionImplementation[Mask(32, 224, arg1)]
}

function _fallback() payable {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    if not functionImplementation[Mask(32, 224, mem[128])]:
        revert with 0, 'METHOD_NOT_IMPLEMENTED'
    delegate functionImplementation[Mask(32, 224, mem[128])] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with call.data[0 len calldata.size]
        return call.data[0 len calldata.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
