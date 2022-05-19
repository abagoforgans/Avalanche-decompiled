contract main {




// =====================  Runtime code  =====================


address addr;
address owner;

function addr() payable {
    return addr
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    addr = arg1
}

function call() payable {
    require msg.sender == owner
    require ext_code.size(addr)
    staticcall addr.excessReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
