contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function store(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.harvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    else:
        return 0
}



}
