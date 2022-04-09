contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e32ed89(?)
#
address owner;
array of address factories;
mapping of address sub_67970540;

function factories(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < factories.length
    return factories[arg1]
}

function sub_67970540(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_67970540[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 and 1000 > -1 / arg2 * arg1:
        revert with 'NH{q', 17
    if arg3 < arg1:
        revert with 'NH{q', 17
    if arg3 - arg1 and 997 > -1 / arg3 - arg1:
        revert with 'NH{q', 17
    if not (997 * arg3) - (997 * arg1):
        revert with 'NH{q', 18
    if 1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1) > -2:
        revert with 'NH{q', 17
    return ((1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1)) + 1)
}

function sub_6566afad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == owner
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        revert with 0, 'is not factory!'
    if sub_67970540[address(arg1)]:
        revert with 0, 'already added'
    factories.length++
    factories[factories.length] = address(arg1)
    sub_67970540[address(arg1)] = address(arg2)
}



}
