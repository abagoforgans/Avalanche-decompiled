contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of uint256 uint;
mapping of uint256 int;
mapping of address address;
mapping of struct stor6;

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return address[arg1]
}

function getBool(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function getUint(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint[arg1]
}

function getInt(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return int[arg1]
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

function deleteInt(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    int[arg1] = 0
    emit 0xfeae7f59: arg1
}

function deleteUint(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint[arg1] = 0
    emit 0xfeae7f59: arg1
}

function deleteBool(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1] = 0
    emit 0xfeae7f59: arg1
}

function deleteAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address[arg1] = 0
    emit 0xfeae7f59: arg1
}

function setInt(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    int[arg1] = arg2
    emit 0xfeae7f59: arg1
}

function setUint(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint[arg1] = arg2
    emit 0xfeae7f59: arg1
}

function setBool(bytes32 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1] = uint8(arg2)
    emit 0xfeae7f59: arg1
}

function setAddress(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address[arg1] = arg2
    emit 0xfeae7f59: arg1
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

function deleteBytes(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == uint255(stor1[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        stor1[arg1].field_0 = 0
        if 31 < uint255(stor1[arg1].field_0) * 0.5:
            idx = 0
            while (uint255(stor1[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        stor1[arg1].field_0 = 0
        if 31 < stor1[arg1].field_1:
            idx = 0
            while stor1[arg1].field_1 + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xfeae7f59: arg1
}

function deleteString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        stor6[arg1].field_0 = 0
        if 31 < uint255(stor6[arg1].field_0) * 0.5:
            idx = 0
            while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        stor6[arg1].field_0 = 0
        if 31 < stor6[arg1].field_1:
            idx = 0
            while stor6[arg1].field_1 + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xfeae7f59: arg1
}

function setBytes(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == uint255(stor1[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor1[arg1].field_0 = 0
            idx = 0
            while (uint255(stor1[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor1[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor1[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if not arg2.length:
            stor1[arg1].field_0 = 0
            idx = 0
            while stor1[arg1].field_1 + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor1[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor1[arg1].field_1 + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xfeae7f59: arg1
}

function setString(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor6[arg1].field_0 = 0
            idx = 0
            while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor6[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor6[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if not arg2.length:
            stor6[arg1].field_0 = 0
            idx = 0
            while stor6[arg1].field_1 + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor6[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor6[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor6[arg1].field_1 + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xfeae7f59: arg1
}

function getBytes(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == uint255(stor1[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor1[arg1].field_0:
            if stor1[arg1].field_0 == uint255(stor1[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1[arg1].field_0):
                if 31 < uint255(stor1[arg1].field_0) * 0.5:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_0), data=mem[128 len ceil32(uint255(stor1[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor1[arg1].field_8
        else:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 0, 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_0), data=mem[128 len ceil32(uint255(stor1[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor1[arg1].field_8
        mem[ceil32(uint255(stor1[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor1[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor1[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor1[arg1].field_0) * 0.5) > uint255(stor1[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor1[arg1].field_0) * 0.5) + (uint255(stor1[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1].field_0), data=mem[128 len ceil32(uint255(stor1[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor1[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor1[arg1].field_0) * 0.5)]), 
    if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
        revert with 0, 34
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == uint255(stor1[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1[arg1].field_0):
            if 31 < uint255(stor1[arg1].field_0) * 0.5:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor1[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
    if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
        mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
    return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
}

function getString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor6[arg1].field_0) * 0.5) > uint255(stor6[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + (uint255(stor6[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 0, 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if 31 < uint255(stor6[arg1].field_0) * 0.5:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 192 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 192] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 192 len 2 * ceil32(stor6[arg1].field_1)]), 
}



}
