contract main {




// =====================  Runtime code  =====================


#
#  - mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
uint256 stor4;
mapping of uint256 totalSupply;
array of struct stor6;
array of struct stor7;
uint256 sub_390a5ba5;
uint256 totalSupply;
address stor10;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function totalSupply() payable {
    return totalSupply
}

function sub_390a5ba5(?) payable {
    return sub_390a5ba5
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function owner() payable {
    return owner
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
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

function sub_d8ac8105(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    stor10 = address(arg1)
    emit 0x871c815d: address(arg1), block.timestamp, msg.sender
    stor4 = 1
}

function sub_fe6c7454(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if sub_390a5ba5 > !arg1:
        revert with 0, 17
    sub_390a5ba5 += arg1
    emit 0x718ead51: arg1, block.timestamp, msg.sender
    stor4 = 1
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xb2aba44b: Array(len=arg1.length, data=arg1[all]), block.timestamp, msg.sender
    stor4 = 1
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = arg2
    mem[160] = 1
    mem[192] = arg3
    mem[224] = 0
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_390a5ba5:
            revert with 0, 'BoldPointBoxNFT: id does not exist'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if totalSupply > !mem[(32 * idx) + 192]:
                revert with 0, 17
            totalSupply += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if totalSupply < mem[(32 * idx) + 192]:
            revert with 0, 17
        totalSupply -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function openBox(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if arg1 >= sub_390a5ba5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BoldPointBoxNFT: id does not exist'
    if arg2 <= 0:
        revert with 0, 'BoldPointBoxNFT: wrong amount'
    if not stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BoldPointBoxNFT: zero boldPointItem address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = arg1
    mem[160] = 1
    mem[192] = arg2
    mem[224] = 0
    if not msg.sender:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_390a5ba5:
            revert with 0, 'BoldPointBoxNFT: id does not exist'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if totalSupply > !mem[(32 * idx) + 192]:
                revert with 0, 17
            totalSupply += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if totalSupply < mem[(32 * idx) + 192]:
            revert with 0, 17
        totalSupply -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if balanceOf[arg1][address(msg.sender)] < arg2:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(msg.sender)] -= arg2
    emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
    call stor10.0xcee7b302 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit OpenBox(arg2, block.timestamp, msg.sender, arg1);
    stor4 = 1
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[ceil32(ceil32(arg4.length)) + 129] = arg2
    mem[ceil32(ceil32(arg4.length)) + 161] = 1
    mem[ceil32(ceil32(arg4.length)) + 193] = arg3
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
        mem[32] = 5
        if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] >= sub_390a5ba5:
            revert with 0, 'BoldPointBoxNFT: id does not exist'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
            revert with 0, 17
        totalSupply += mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
                revert with 0, 17
            totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    stor4 = 1
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = ceil32(32 * arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var66001 = arg2.length
                var71001 = arg3.length
            else:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var70001 = arg2.length
                var75001 = arg3.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var70001 = arg2.length
                var75001 = arg3.length
            else:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var74001 = arg2.length
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var68001 = arg2.length
                var73001 = arg3.length
            else:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var72001 = arg2.length
                var77001 = arg3.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                var72001 = arg2.length
                var77001 = arg3.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if msg.sender == arg1:
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if arg1:
            if not arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if idx >= 1:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 5
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if not arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][arg2] > !arg4:
                revert with 0, 17
            balanceOf[arg3][arg2] += arg4
            emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
            if ext_code.size(arg2):
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                        revert with 0, 'BoldPointBoxNFT: id does not exist'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg1:
                    if arg2:
                        if balanceOf[arg3][address(arg1)] < arg4:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        balanceOf[arg3][address(arg1)] -= arg4
                        if balanceOf[arg3][arg2] > !arg4:
                            revert with 0, 17
                        balanceOf[arg3][arg2] += arg4
                        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                        if ext_code.size(arg2):
                            var58001 = ceil32(arg5.length)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        idx = 0
                        while idx < 1:
                            if idx >= 1:
                                revert with 0, 50
                            if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                                revert with 0, 17
                            totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if balanceOf[arg3][address(arg1)] < arg4:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        balanceOf[arg3][address(arg1)] -= arg4
                        if balanceOf[arg3][arg2] > !arg4:
                            revert with 0, 17
                        balanceOf[arg3][arg2] += arg4
                        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                        if ext_code.size(arg2):
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        idx = 0
                        while idx < 1:
                            if idx >= 1:
                                revert with 0, 50
                            if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                                revert with 0, 17
                            totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if idx >= 1:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 5
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                        revert with 0, 'BoldPointBoxNFT: id does not exist'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if not arg2:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if arg1:
            if not arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if idx >= 1:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 5
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if not arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][arg2] > !arg4:
                revert with 0, 17
            balanceOf[arg3][arg2] += arg4
            emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
            if ext_code.size(arg2):
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                        revert with 0, 'BoldPointBoxNFT: id does not exist'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg1:
                    if arg2:
                        if balanceOf[arg3][address(arg1)] < arg4:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        balanceOf[arg3][address(arg1)] -= arg4
                        if balanceOf[arg3][arg2] > !arg4:
                            revert with 0, 17
                        balanceOf[arg3][arg2] += arg4
                        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                        if ext_code.size(arg2):
                            var60001 = ceil32(arg5.length)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        idx = 0
                        while idx < 1:
                            if idx >= 1:
                                revert with 0, 50
                            if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                                revert with 0, 17
                            totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if balanceOf[arg3][address(arg1)] < arg4:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        balanceOf[arg3][address(arg1)] -= arg4
                        if balanceOf[arg3][arg2] > !arg4:
                            revert with 0, 17
                        balanceOf[arg3][arg2] += arg4
                        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                        if ext_code.size(arg2):
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        idx = 0
                        while idx < 1:
                            if idx >= 1:
                                revert with 0, 50
                            if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                                revert with 0, 17
                            totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if idx >= 1:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 5
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] >= sub_390a5ba5:
                        revert with 0, 'BoldPointBoxNFT: id does not exist'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if not arg2:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 0, 50
                        if totalSupply < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                            revert with 0, 17
                        totalSupply -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = ceil32(32 * arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len arg5.length] = arg5[all]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + arg5.length + 130] = 0
    if msg.sender == arg1:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        if arg1:
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] >= sub_390a5ba5:
                        revert with 0, 'BoldPointBoxNFT: id does not exist'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg1:
                    if arg2:
                        idx = 0
                        while idx < arg3.length:
                            if idx >= arg3.length:
                                revert with 0, 50
                            if idx >= arg4.length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                                revert with 0, 'ERC1155: insufficient balance for transfer'
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                            mem[0] = arg2
                            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                                revert with 0, 17
                            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                        var74001 = arg3.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                        var79001 = arg4.length
                        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                        if not ext_code.size(arg2):
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                        var88001 = arg3.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                        if ceil32(arg5.length) <= arg5.length:
                            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                            if ext_call.success:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            if return_data.size <= 3:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            mem[0 len 4] = ext_call.return_data[0 len 4]
                            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            if return_data.size < 68:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _23799 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _24017 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                            mem[mem[64] + 68 len ceil32(_24017)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_24017)]
                            if ceil32(_24017) <= _24017:
                                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_24017) + 32]
                            mem[mem[64] + _24017 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_24017) + _23799 + -mem[64] + 68
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _23914 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _24087 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_24087)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_24087)]
                        if ceil32(_24087) <= _24087:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_24087) + 32]
                        mem[mem[64] + _24087 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_24087) + _23914 + -mem[64] + 68
                    idx = 0
                    while idx < arg4.length:
                        if idx >= arg4.length:
                            revert with 0, 50
                        if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var77001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    var82001 = arg4.length
                    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                    if not ext_code.size(arg2):
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var91001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                    if ceil32(arg5.length) <= arg5.length:
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _26003 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _26217 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_26217)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26217)]
                        if ceil32(_26217) <= _26217:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26217) + 32]
                        mem[mem[64] + _26217 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_26217) + _26003 + -mem[64] + 68
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26112 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26307 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26307)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26307)]
                    if ceil32(_26307) <= _26307:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26307) + 32]
                    mem[mem[64] + _26307 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26307) + _26112 + -mem[64] + 68
                idx = 0
                while idx < arg4.length:
                    if idx >= arg4.length:
                        revert with 0, 50
                    if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var78001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    var83001 = arg4.length
                    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                    if not ext_code.size(arg2):
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var92001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                    if ceil32(arg5.length) <= arg5.length:
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _26005 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _26220 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_26220)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26220)]
                        if ceil32(_26220) <= _26220:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26220) + 32]
                        mem[mem[64] + _26220 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_26220) + _26005 + -mem[64] + 68
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26114 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26309 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26309)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26309)]
                    if ceil32(_26309) <= _26309:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26309) + 32]
                    mem[mem[64] + _26309 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26309) + _26114 + -mem[64] + 68
                idx = 0
                while idx < arg4.length:
                    if idx >= arg4.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var81001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var86001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27763 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27895 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27895)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27895)]
                    if ceil32(_27895) <= _27895:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27895) + 32]
                    mem[mem[64] + _27895 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27895) + _27763 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27830 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27967 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27967)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27967)]
                if ceil32(_27967) <= _27967:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27967) + 32]
                mem[mem[64] + _27967 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27967) + _27830 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                if arg2:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var77001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    var82001 = arg4.length
                    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                    if not ext_code.size(arg2):
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var91001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                    if ceil32(arg5.length) <= arg5.length:
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _26011 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _26227 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_26227)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26227)]
                        if ceil32(_26227) <= _26227:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26227) + 32]
                        mem[mem[64] + _26227 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_26227) + _26011 + -mem[64] + 68
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26120 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26314 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26314)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26314)]
                    if ceil32(_26314) <= _26314:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26314) + 32]
                    mem[mem[64] + _26314 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26314) + _26120 + -mem[64] + 68
                idx = 0
                while idx < arg4.length:
                    if idx >= arg4.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var80001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var85001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var94001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27765 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27898 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27898)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27898)]
                    if ceil32(_27898) <= _27898:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27898) + 32]
                    mem[mem[64] + _27898 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27898) + _27765 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27832 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27969 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27969)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27969)]
                if ceil32(_27969) <= _27969:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27969) + 32]
                mem[mem[64] + _27969 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27969) + _27832 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var81001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var86001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27767 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27901 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27901)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27901)]
                    if ceil32(_27901) <= _27901:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27901) + 32]
                    mem[mem[64] + _27901 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27901) + _27767 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27834 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27971 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27971)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27971)]
                if ceil32(_27971) <= _27971:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27971) + 32]
                mem[mem[64] + _27971 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27971) + _27834 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var84001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var89001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _28737 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _28785 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_28785)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28785)]
                if ceil32(_28785) <= _28785:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28785) + 32]
                mem[mem[64] + _28785 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_28785) + _28737 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28762 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28817 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28817)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28817)]
            if ceil32(_28817) <= _28817:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28817) + 32]
            mem[mem[64] + _28817 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28817) + _28762 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                if arg2:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var78001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    var83001 = arg4.length
                    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                    if not ext_code.size(arg2):
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var92001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                    if ceil32(arg5.length) <= arg5.length:
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _26026 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _26240 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_26240)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26240)]
                        if ceil32(_26240) <= _26240:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26240) + 32]
                        mem[mem[64] + _26240 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_26240) + _26026 + -mem[64] + 68
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26135 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26324 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26324)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26324)]
                    if ceil32(_26324) <= _26324:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26324) + 32]
                    mem[mem[64] + _26324 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26324) + _26135 + -mem[64] + 68
                idx = 0
                while idx < arg4.length:
                    if idx >= arg4.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var81001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var86001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27773 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27908 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27908)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27908)]
                    if ceil32(_27908) <= _27908:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27908) + 32]
                    mem[mem[64] + _27908 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27908) + _27773 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27840 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27976 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27976)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27976)]
                if ceil32(_27976) <= _27976:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27976) + 32]
                mem[mem[64] + _27976 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27976) + _27840 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var82001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var87001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27775 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27911 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27911)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27911)]
                    if ceil32(_27911) <= _27911:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27911) + 32]
                    mem[mem[64] + _27911 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27911) + _27775 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27842 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27978 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27978)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27978)]
                if ceil32(_27978) <= _27978:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27978) + 32]
                mem[mem[64] + _27978 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27978) + _27842 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var85001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var90001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _28739 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _28788 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_28788)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28788)]
                if ceil32(_28788) <= _28788:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28788) + 32]
                mem[mem[64] + _28788 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_28788) + _28739 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28764 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28819 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28819)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28819)]
            if ceil32(_28819) <= _28819:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28819) + 32]
            mem[mem[64] + _28819 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28819) + _28764 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if mem[(32 * idx) + 128] >= sub_390a5ba5:
                revert with 0, 'BoldPointBoxNFT: id does not exist'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1:
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var81001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var86001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _27781 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _27918 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_27918)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27918)]
                    if ceil32(_27918) <= _27918:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27918) + 32]
                    mem[mem[64] + _27918 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_27918) + _27781 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27848 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27983 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27983)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27983)]
                if ceil32(_27983) <= _27983:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27983) + 32]
                mem[mem[64] + _27983 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27983) + _27848 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var84001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var89001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _28741 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _28791 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_28791)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28791)]
                if ceil32(_28791) <= _28791:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28791) + 32]
                mem[mem[64] + _28791 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_28791) + _28741 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28766 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28821 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28821)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28821)]
            if ceil32(_28821) <= _28821:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28821) + 32]
            mem[mem[64] + _28821 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28821) + _28766 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var85001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var90001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _28743 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _28794 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_28794)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28794)]
                if ceil32(_28794) <= _28794:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28794) + 32]
                mem[mem[64] + _28794 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_28794) + _28743 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28768 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28823 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28823)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28823)]
            if ceil32(_28823) <= _28823:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28823) + 32]
            mem[mem[64] + _28823 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28823) + _28768 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var88001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _29049 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _29057 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_29057)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_29057)]
            if ceil32(_29057) <= _29057:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_29057) + 32]
            mem[mem[64] + _29057 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_29057) + _29049 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _29054 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _29063 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_29063)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_29063)]
        if ceil32(_29063) <= _29063:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_29063) + 32]
        mem[mem[64] + _29063 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_29063) + _29054 + -mem[64] + 68
    mem[0] = msg.sender
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1:
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_390a5ba5:
                    revert with 0, 'BoldPointBoxNFT: id does not exist'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1:
                if arg2:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var76001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    var81001 = arg4.length
                    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                    if not ext_code.size(arg2):
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                    var90001 = arg3.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                    if ceil32(arg5.length) <= arg5.length:
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _23856 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _24052 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_24052)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_24052)]
                        if ceil32(_24052) <= _24052:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_24052) + 32]
                        mem[mem[64] + _24052 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_24052) + _23856 + -mem[64] + 68
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _23966 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _24122 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_24122)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_24122)]
                    if ceil32(_24122) <= _24122:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_24122) + 32]
                    mem[mem[64] + _24122 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_24122) + _23966 + -mem[64] + 68
                idx = 0
                while idx < arg4.length:
                    if idx >= arg4.length:
                        revert with 0, 50
                    if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var79001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var84001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26057 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26262 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26262)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26262)]
                    if ceil32(_26262) <= _26262:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26262) + 32]
                    mem[mem[64] + _26262 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26262) + _26057 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _26165 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _26343 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_26343)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26343)]
                if ceil32(_26343) <= _26343:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26343) + 32]
                mem[mem[64] + _26343 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_26343) + _26165 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var80001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var85001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var94001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26059 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26265 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26265)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26265)]
                    if ceil32(_26265) <= _26265:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26265) + 32]
                    mem[mem[64] + _26265 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26265) + _26059 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _26167 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _26345 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_26345)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26345)]
                if ceil32(_26345) <= _26345:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26345) + 32]
                mem[mem[64] + _26345 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_26345) + _26167 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var83001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var88001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27796 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27931 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27931)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27931)]
                if ceil32(_27931) <= _27931:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27931) + 32]
                mem[mem[64] + _27931 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27931) + _27796 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27863 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _27993 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_27993)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27993)]
            if ceil32(_27993) <= _27993:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27993) + 32]
            mem[mem[64] + _27993 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_27993) + _27863 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 5
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if mem[(32 * idx) + 128] >= sub_390a5ba5:
                revert with 0, 'BoldPointBoxNFT: id does not exist'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1:
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var79001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var84001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26065 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26272 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26272)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26272)]
                    if ceil32(_26272) <= _26272:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26272) + 32]
                    mem[mem[64] + _26272 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26272) + _26065 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _26173 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _26350 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_26350)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26350)]
                if ceil32(_26350) <= _26350:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26350) + 32]
                mem[mem[64] + _26350 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_26350) + _26173 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var82001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var87001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27798 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27934 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27934)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27934)]
                if ceil32(_27934) <= _27934:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27934) + 32]
                mem[mem[64] + _27934 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27934) + _27798 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27865 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _27995 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_27995)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27995)]
            if ceil32(_27995) <= _27995:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27995) + 32]
            mem[mem[64] + _27995 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_27995) + _27865 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var83001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var88001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27800 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27937 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27937)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27937)]
                if ceil32(_27937) <= _27937:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27937) + 32]
                mem[mem[64] + _27937 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27937) + _27800 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27867 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _27997 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_27997)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27997)]
            if ceil32(_27997) <= _27997:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27997) + 32]
            mem[mem[64] + _27997 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_27997) + _27867 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var86001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var91001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28749 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28801 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28801)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28801)]
            if ceil32(_28801) <= _28801:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28801) + 32]
            mem[mem[64] + _28801 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28801) + _28749 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _28774 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _28828 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_28828)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28828)]
        if ceil32(_28828) <= _28828:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28828) + 32]
        mem[mem[64] + _28828 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_28828) + _28774 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg2:
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if mem[(32 * idx) + 128] >= sub_390a5ba5:
                revert with 0, 'BoldPointBoxNFT: id does not exist'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1:
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var80001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var85001 = arg4.length
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                var94001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _26080 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _26285 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_26285)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26285)]
                    if ceil32(_26285) <= _26285:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26285) + 32]
                    mem[mem[64] + _26285 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_26285) + _26080 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _26188 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _26360 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_26360)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_26360)]
                if ceil32(_26360) <= _26360:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_26360) + 32]
                mem[mem[64] + _26360 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_26360) + _26188 + -mem[64] + 68
            idx = 0
            while idx < arg4.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var83001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var88001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27806 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27944 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27944)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27944)]
                if ceil32(_27944) <= _27944:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27944) + 32]
                mem[mem[64] + _27944 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27944) + _27806 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27873 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28002 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28002)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28002)]
            if ceil32(_28002) <= _28002:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28002) + 32]
            mem[mem[64] + _28002 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28002) + _27873 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var84001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var89001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27808 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27947 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27947)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27947)]
                if ceil32(_27947) <= _27947:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27947) + 32]
                mem[mem[64] + _27947 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27947) + _27808 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27875 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28004 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28004)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28004)]
            if ceil32(_28004) <= _28004:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28004) + 32]
            mem[mem[64] + _28004 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28004) + _27875 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var87001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var92001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28751 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28804 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28804)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28804)]
            if ceil32(_28804) <= _28804:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28804) + 32]
            mem[mem[64] + _28804 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28804) + _28751 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _28776 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _28830 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_28830)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28830)]
        if ceil32(_28830) <= _28830:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28830) + 32]
        mem[mem[64] + _28830 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_28830) + _28776 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_390a5ba5:
            revert with 0, 'BoldPointBoxNFT: id does not exist'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1:
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var83001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var88001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _27814 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _27954 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_27954)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_27954)]
                if ceil32(_27954) <= _27954:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_27954) + 32]
                mem[mem[64] + _27954 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_27954) + _27814 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _27881 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28009 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28009)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28009)]
            if ceil32(_28009) <= _28009:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28009) + 32]
            mem[mem[64] + _28009 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28009) + _27881 + -mem[64] + 68
        idx = 0
        while idx < arg4.length:
            if idx >= arg4.length:
                revert with 0, 50
            if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var86001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var91001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28753 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28807 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28807)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28807)]
            if ceil32(_28807) <= _28807:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28807) + 32]
            mem[mem[64] + _28807 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28807) + _28753 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _28778 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _28832 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_28832)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28832)]
        if ceil32(_28832) <= _28832:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28832) + 32]
        mem[mem[64] + _28832 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_28832) + _28778 + -mem[64] + 68
    idx = 0
    while idx < arg4.length:
        if idx >= arg4.length:
            revert with 0, 50
        if totalSupply > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg2:
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var87001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var92001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _28755 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _28810 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_28810)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28810)]
            if ceil32(_28810) <= _28810:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28810) + 32]
            mem[mem[64] + _28810 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_28810) + _28755 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _28780 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _28834 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_28834)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_28834)]
        if ceil32(_28834) <= _28834:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_28834) + 32]
        mem[mem[64] + _28834 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_28834) + _28780 + -mem[64] + 68
    idx = 0
    while idx < arg4.length:
        if idx >= arg4.length:
            revert with 0, 50
        if totalSupply < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg4.length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        mem[0] = arg2
        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    var90001 = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _29051 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _29060 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_29060)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_29060)]
        if ceil32(_29060) <= _29060:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_29060) + 32]
        mem[mem[64] + _29060 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_29060) + _29051 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _29056 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _29065 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_29065)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_29065)]
    if ceil32(_29065) <= _29065:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_29065) + 32]
    mem[mem[64] + _29065 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_29065) + _29056 + -mem[64] + 68
}



}
