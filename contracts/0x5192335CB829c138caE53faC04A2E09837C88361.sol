contract main {




// =====================  Runtime code  =====================


const name = '', 0


uint8 stor1; offset 160
address owner;
address storeAddress;
array of address sub_2d4a2146;

function initialized() payable {
    return bool(stor1)
}

function sub_2d4a2146(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2d4a2146.length
    return sub_2d4a2146[arg1]
}

function totalUtilities() payable {
    return sub_2d4a2146.length
}

function owner() payable {
    return owner
}

function store() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function initialize() payable {
    require msg.sender == owner
    require not stor1
    stor1 = 1
}

function setStore(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    storeAddress = arg1
    emit 0x50739535: arg1
}

function registerUtility(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(arg1)
    call arg1.0x40a5737f with:
         gas gas_remaining wei
        args sub_2d4a2146.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2d4a2146.length++
    sub_2d4a2146[sub_2d4a2146.length] = arg1
    emit 0xa3576ea6: sub_2d4a2146.length, arg1
}



}
