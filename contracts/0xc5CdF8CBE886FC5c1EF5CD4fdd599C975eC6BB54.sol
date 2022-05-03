contract main {




// =====================  Runtime code  =====================


array of address listAt;
mapping of uint8 stor1;

function listCount() payable {
    return listAt.length
}

function ours(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function listAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listAt.length:
        revert with 0, 'Index exceeds list length'
    return listAt[arg1]
}

function _fallback() payable {
    revert
}

function createList() payable {
    create contract with 0 wei
                    code: code.data[1357 len 8761], address(msg.sender)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    listAt.length++
    listAt[listAt.length] = address(create.new_address)
    stor1[address(create.new_address)] = 1
    emit ListCreated(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
