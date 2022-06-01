contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function sub_674a67f8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_77bca0ca(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function sub_85548e25(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_d9828174(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
}

function sub_bc4fccd1(?) payable {
    require calldata.size - 4 >= 64
    if stor1[address(msg.sender)]:
        stor2[address(arg1)] = uint8(arg2)
        emit 0xb1f39a8c: address(arg1), arg2
}

function sub_044a3c33(?) payable {
    require calldata.size - 4 >= 32
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    stor2[address(arg1)] = 1
    emit 0xd378d792: msg.sender, arg1
}



}
