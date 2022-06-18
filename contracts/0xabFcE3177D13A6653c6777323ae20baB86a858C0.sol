contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct iV;
mapping of uint256 stor2;
address updaterAddress;

function owner() payable {
    return owner
}

function getIV(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return iV[address(arg1)].field_0, iV[address(arg1)].field_256, iV[address(arg1)].field_512, iV[address(arg1)].field_768
}

function updater() payable {
    return updaterAddress
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

function setUpdater(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    updaterAddress = arg1
    emit UpdaterSet(msg.sender, arg1);
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

function updateIV(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if updaterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IVProvider: sender must be an updater'
    stor2[address(arg1)]++
    iV[address(arg1)].field_0 = stor2[address(arg1)] + 1
    iV[address(arg1)].field_256 = block.timestamp
    iV[address(arg1)].field_512 = arg2
    iV[address(arg1)].field_768 = arg3
    emit UpdatedIV(stor2[address(arg1)] + 1, block.timestamp, arg2, arg3, arg1);
}



}
