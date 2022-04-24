contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address latestAugustus;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct latestVersion;
uint256 augustusCount;

function getLatestVersion() payable {
    return latestVersion[0 len latestVersion.length].field_0
}

function getAugustusCount() payable {
    return augustusCount
}

function isAugustusBanned(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function getLatestAugustus() payable {
    mem[128] = uint256(latestVersion.field_0)
    idx = 128
    s = 0
    while latestVersion.length + 96 > idx:
        mem[idx + 32] = latestVersion[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return latestAugustus[mem[128 len stor4.length]]
}

function getAugustusByVersion(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return latestAugustus[arg1[all]]
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

function isValidAugustus(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)]:
        return bool(stor2[address(arg1)])
    return not bool(stor3[address(arg1)])
}

function banAugustus(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
    emit AugustusBanned(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAugustus(string arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'Invalid augustus address'
    if latestAugustus[arg1[all]]:
        revert with 0, 'Version already exists'
    if stor2[address(arg2)]:
        revert with 0, 'Augustus already exists'
    latestAugustus[arg1[all]] = arg2
    stor2[address(arg2)] = 1
    augustusCount++
    if arg3:
        if not arg1.length:
            latestVersion.length = 0
            idx = 0
            while latestVersion.length + 31 / 32 > idx:
                latestVersion[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            latestVersion.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                latestVersion[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while latestVersion.length + 31 / 32 > idx:
                latestVersion[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit AugustusAdded(Array(len=arg1.length, data=arg1[all]), arg3, arg2);
}



}
