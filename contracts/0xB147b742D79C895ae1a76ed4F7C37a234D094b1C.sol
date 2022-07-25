contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 sub_fd3bf65d;

function sub_1c538999(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function checkWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_fd3bf65d(?) payable {
    return sub_fd3bf65d
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

function removeFromWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
    if sub_fd3bf65d < 1:
        revert with 'NH{q', 17
    sub_fd3bf65d--
    emit RemovedFromWhitelist(arg1);
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

function addWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1[address(arg1)]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The address is already whitelisted'
    stor1[address(arg1)] = 1
    if sub_fd3bf65d > -2:
        revert with 'NH{q', 17
    sub_fd3bf65d++
    emit AddressWhitelisted(arg1);
}

function sub_2f3f47f9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[mem[(32 * idx) + 140 len 20]] = 1
            if sub_fd3bf65d > -2:
                revert with 'NH{q', 17
            sub_fd3bf65d++
            emit AddressWhitelisted(mem[(32 * idx) + 140 len 20]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
