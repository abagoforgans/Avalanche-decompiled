contract main {




// =====================  Runtime code  =====================


address owner;
address implementationAddress;
address sub_df20f47aAddress;
uint256 sub_fec146a2;

function owner() payable {
    return owner
}

function getImplementation() payable {
    return implementationAddress
}

function sub_df20f47a(?) payable {
    return sub_df20f47aAddress
}

function sub_fec146a2(?) payable {
    return sub_fec146a2
}

function checkStorage() payable {
    if sub_fec146a2 != 123456:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    implementationAddress = arg1
}

function _fallback() payable {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
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
