contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_201e417c;
mapping of uint256 sub_7b4717a4;

function sub_201e417c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_201e417c[arg1]
}

function sub_7b4717a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_7b4717a4[arg1][arg2]
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d9294b14(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_201e417c[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_201e417c[address(arg1)] += arg2
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

function sub_da10c2a3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_201e417c[address(arg2)] and arg3 > -1 / sub_201e417c[address(arg2)]:
        revert with 'NH{q', 17
    sub_7b4717a4[address(arg1)][address(arg2)] = sub_201e417c[address(arg2)] * arg3 / 10^18
}

function sub_3931c224(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_201e417c[address(arg2)] and arg3 > -1 / sub_201e417c[address(arg2)]:
        revert with 'NH{q', 17
    if sub_7b4717a4[address(arg1)][address(arg2)] < sub_201e417c[address(arg2)] * arg3 / 10^18:
        revert with 'NH{q', 17
    sub_7b4717a4[address(arg1)][address(arg2)] -= sub_201e417c[address(arg2)] * arg3 / 10^18
}

function sub_06b985de(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_201e417c[address(arg2)] and arg3 > -1 / sub_201e417c[address(arg2)]:
        revert with 'NH{q', 17
    if sub_7b4717a4[address(arg1)][address(arg2)] > -(sub_201e417c[address(arg2)] * arg3 / 10^18) - 1:
        revert with 'NH{q', 17
    sub_7b4717a4[address(arg1)][address(arg2)] += sub_201e417c[address(arg2)] * arg3 / 10^18
}



}
