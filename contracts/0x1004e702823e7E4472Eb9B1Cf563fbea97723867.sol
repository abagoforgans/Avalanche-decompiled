contract main {




// =====================  Runtime code  =====================


mapping of address deployed;
mapping of uint8 stor1;

function deployed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deployed[arg1]
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_73f22328(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, 'Unauthorized'
    stor1[address(arg1)] = 1
}

function sub_a2151367(?) payable {
    if deployed[msg.sender]:
        revert with 0, 'Address already deployed'
    if not stor1[msg.sender]:
        revert with 0, 'Not whitelisted'
    create contract with 0 wei
                    code: code.data[703 len 2640], address(msg.sender)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    deployed[msg.sender] = address(create.new_address)
}



}
