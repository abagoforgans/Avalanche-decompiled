contract main {




// =====================  Runtime code  =====================


#
#  - sub_33c4e91d(?)
#
address stor0;
mapping of uint8 stor1;

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function add_user(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'MySwap: Not owner'
    stor1[address(arg1)] = 1
}

function remove_user(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'MySwap: Not owner'
    stor1[address(arg1)] = 0
}



}
