contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_e48e65b5;

function owner() payable {
    return owner
}

function proxies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e48e65b5[arg1].field_0, sub_e48e65b5[arg1].field_256, sub_e48e65b5[arg1].field_512
}

function sub_e48e65b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e48e65b5[address(arg1)].field_0, sub_e48e65b5[address(arg1)].field_256, sub_e48e65b5[address(arg1)].field_512
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_28778d4a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'invalid address'
    sub_e48e65b5[address(arg1)].field_0 = address(arg1)
    sub_e48e65b5[address(arg1)].field_256 = address(arg2)
    sub_e48e65b5[address(arg1)].field_512 = arg3
}



}
