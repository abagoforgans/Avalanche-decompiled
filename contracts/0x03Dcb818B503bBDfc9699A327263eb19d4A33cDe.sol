contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address implementationAddress;
address owner;

function implementation() payable {
    return implementationAddress
}

function owner() payable {
    return owner
}

function sub_f8990fa6(?) payable {
    return bool(stor0)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_d75ca899(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingPool::_renounceImplCanBeChange: Implementation can not be changed'
    stor0 = 0
    return 1
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

function _setImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingPool::_setImplementation: Implementation can not be changed'
    implementationAddress = arg1
    return 1
}



}
