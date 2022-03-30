contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 addressesProviderIdBy;
array of struct stor2;

function owner() payable {
    return owner
}

function getAddressesProviderIdByAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return addressesProviderIdBy[address(arg1)]
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

function unregisterAddressesProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if addressesProviderIdBy[address(arg1)] <= 0:
        revert with 0, '41'
    addressesProviderIdBy[address(arg1)] = 0
    emit AddressesProviderUnregistered(arg1);
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

function registerAddressesProvider(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, '72'
    addressesProviderIdBy[address(arg1)] = arg2
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        emit AddressesProviderRegistered(arg1);
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    emit AddressesProviderRegistered(arg1);
}

function getAddressesProvidersList() payable {
    if not stor2.length:
        require stor2.length <= test266151307()
        mem[(32 * stor2.length) + 128] = stor2.length
        if stor2.length:
            mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            require idx < stor2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            if addressesProviderIdBy[mem[(32 * idx) + 140 len 20]] > 0:
                require idx < stor2.length
                require idx < stor2.length
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[(64 * stor2.length) + 160] = 32
        mem[(64 * stor2.length) + 192] = stor2.length
        mem[(64 * stor2.length) + 224 len floor32(stor2.length)] = mem[(32 * stor2.length) + 160 len floor32(stor2.length)]
        return memory
          from (64 * stor2.length) + 160
           len (161 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor2.length <= test266151307()
    mem[(32 * stor2.length) + 128] = stor2.length
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            require idx < stor2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            if addressesProviderIdBy[mem[(32 * idx) + 140 len 20]] > 0:
                require idx < stor2.length
                require idx < stor2.length
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[(64 * stor2.length) + 160] = 32
        mem[(64 * stor2.length) + 192] = stor2.length
        mem[(64 * stor2.length) + 224 len floor32(stor2.length)] = mem[(32 * stor2.length) + 160 len floor32(stor2.length)]
    else:
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            require idx < stor2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            if addressesProviderIdBy[mem[(32 * idx) + 140 len 20]] > 0:
                require idx < stor2.length
                require idx < stor2.length
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[(64 * stor2.length) + 160] = 32
        mem[(64 * stor2.length) + 192] = stor2.length
        mem[(64 * stor2.length) + 224 len floor32(stor2.length)] = mem[(32 * stor2.length) + 160 len floor32(stor2.length)]
        var17001 = floor32(stor2.length)
    return Array(len=stor2.length, data=mem[(64 * stor2.length) + 224 len 32 * stor2.length])
}



}
