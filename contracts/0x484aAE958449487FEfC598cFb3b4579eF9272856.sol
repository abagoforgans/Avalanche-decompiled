contract main {




// =====================  Runtime code  =====================


address sub_f0dc471fAddress;

function sub_f0dc471f(?) payable {
    return sub_f0dc471fAddress
}

function _fallback() payable {
    revert
}

function setAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    sub_f0dc471fAddress = arg1
}

function getBack(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swap(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    call sub_f0dc471fAddress with:
         gas gas_remaining wei
        args arg1[all]
    if not return_data.size:
        require mem[96] >= 96
        emit 0xe165a299: bool(ext_call.success), mem[128 len 96]
    else:
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit 0xe165a299: bool(ext_call.success), mem[128], mem[160], mem[192]
}



}
