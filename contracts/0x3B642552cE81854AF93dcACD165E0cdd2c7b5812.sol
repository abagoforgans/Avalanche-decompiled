contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 completed;

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function completed(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return completed[arg1]
}

function sub_fb0000c0(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 5
    return completed[address(arg1)][address(arg3)][arg4][address(arg6)][arg7][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_dc10fb0a(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 5
    return sha3(address(arg1), address(arg3), arg4, address(arg6), arg7, arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function sub_3a076e9a(?) payable {
    require calldata.size - 4 >= 288
    require calldata.size - 4 >= 256
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'OperatorRole: caller does not have the Operator role'
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 5
    completed[address(arg1)][address(arg3)][arg4][address(arg6)][arg7][arg2] = arg9
}



}
