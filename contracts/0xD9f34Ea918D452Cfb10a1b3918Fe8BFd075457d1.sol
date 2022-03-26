contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct blacklist;

function blacklistAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blacklist.length
    return blacklist[arg1].field_0
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

function addAddressToBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        return 0
    blacklist.length++
    blacklist[blacklist.length].field_0 = arg1
    stor1[address(arg1)] = 1
    emit BlacklistedAddressAdded(arg1);
    return 1
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

function removeAddressFromBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    idx = 0
    while idx < blacklist.length:
        mem[0] = 2
        if arg1 == blacklist[idx].field_0:
            require idx < blacklist.length
            mem[0] = 2
            blacklist[idx].field_0 = 0
        idx = idx + 1
        continue 
    emit BlacklistedAddressRemoved(arg1);
    return 1
}

function getBlacklist() payable {
    if not blacklist.length:
        mem[(32 * blacklist.length) + 128] = 32
        mem[(32 * blacklist.length) + 160] = blacklist.length
        mem[(32 * blacklist.length) + 192 len floor32(blacklist.length)] = mem[128 len floor32(blacklist.length)]
        return memory
          from (32 * blacklist.length) + 128
           len (96 * blacklist.length) + 64
    mem[128] = address(blacklist.field_0)
    idx = 128
    s = 0
    while (32 * blacklist.length) + 96 > idx:
        mem[idx + 32] = blacklist[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * blacklist.length) + 192 len floor32(blacklist.length)] = mem[128 len floor32(blacklist.length)]
    return Array(len=blacklist.length, data=mem[128 len floor32(blacklist.length)], mem[(32 * blacklist.length) + floor32(blacklist.length) + 192 len (32 * blacklist.length) - floor32(blacklist.length)]), 
}

function addAddressesToBlacklist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        blacklist.length++
        blacklist[blacklist.length].field_0 = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit BlacklistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromBlacklist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 0
        s = 0
        while s < blacklist.length:
            mem[0] = 2
            if mem[(32 * idx) + 140 len 20] == blacklist[s].field_0:
                require s < blacklist.length
                mem[0] = 2
                blacklist[s].field_0 = 0
            s = s + 1
            continue 
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit BlacklistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}



}
