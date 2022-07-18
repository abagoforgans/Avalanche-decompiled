contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_2837d05c;

function sub_2837d05c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2837d05c[arg1]
}

function owner() payable {
    return owner
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

function sub_917b9f14(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_2837d05c[address(arg1)]:
        return address(arg1)
    return sub_2837d05c[address(arg1)]
}

function sub_8c95ff1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_2837d05c[msg.sender] == address(arg1):
        revert with 0, 'TokenRouter: no change'
    sub_2837d05c[msg.sender] = address(arg1)
    emit 0xb783e5ff: msg.sender, address(arg1)
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



}
