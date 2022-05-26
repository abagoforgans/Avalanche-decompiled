contract main {




// =====================  Runtime code  =====================


address owner;
address voterAddress;
mapping of address rotuerAddrTrackViaPresaleOwner;
mapping of address rotuerAddrTrackViaTokenAddr;

function RotuerAddrTrackViaTokenAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rotuerAddrTrackViaTokenAddr[arg1]
}

function voter() payable {
    return voterAddress
}

function owner() payable {
    return owner
}

function RotuerAddrTrackViaPresaleOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rotuerAddrTrackViaPresaleOwner[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createRouter(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    create contract with 0 wei
                    code: code.data[2254 len 9749], address(arg1), address(arg2), arg3, arg4, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    rotuerAddrTrackViaPresaleOwner[address(arg2)] = address(create.new_address)
    rotuerAddrTrackViaTokenAddr[address(arg1)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
