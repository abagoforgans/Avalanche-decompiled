contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_83feba58;
uint256 sub_338aa758;
uint256 sub_b295289b;
address sub_254d6fe5Address;
address sub_5332090cAddress;
uint256 sub_78a9e9ed;

function sub_254d6fe5(?) payable {
    return sub_254d6fe5Address
}

function sub_338aa758(?) payable {
    return sub_338aa758
}

function sub_5332090c(?) payable {
    return sub_5332090cAddress
}

function sub_78a9e9ed(?) payable {
    return sub_78a9e9ed
}

function sub_83feba58(?) payable {
    return sub_83feba58
}

function owner() payable {
    return owner
}

function sub_b295289b(?) payable {
    return sub_b295289b
}

function _fallback() payable {
    revert
}

function sub_41b656ab(?) payable {
    if sub_338aa758:
        return sub_5332090cAddress, sub_83feba58
    return sub_254d6fe5Address, sub_83feba58
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_61709d5e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_83feba58 = arg2
    sub_338aa758 = arg1
    sub_b295289b = block.number
}

function sub_0877c285(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_254d6fe5Address = address(arg1)
    sub_5332090cAddress = address(arg2)
    sub_78a9e9ed = block.number
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
