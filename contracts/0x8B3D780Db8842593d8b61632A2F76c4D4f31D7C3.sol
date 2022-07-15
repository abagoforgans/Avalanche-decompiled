contract main {




// =====================  Runtime code  =====================


#
#  - sub_0a6b78ff(?)
#
address owner;
mapping of address sub_8cc774ec;
mapping of uint8 stor2;
address feeAddress;

function sub_1016954e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function feeAddress() payable {
    return feeAddress
}

function sub_8cc774ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_8cc774ec[arg1][arg2]
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExchangeFactory: INVAlID_FEE_ADDRESS'
    if feeAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExchangeFactory: INVAlID_FEE_ADDRESS'
    feeAddress = arg1
    emit SetFeeAddress(arg1);
}



}
