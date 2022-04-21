contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
uint256 stor3;
uint256 stor4;
address owner;
array of uint256 mutableMutantIds;
address stor7;
array of struct stor8;
mapping of uint8 stor9;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function isMutantMutable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function mutableMutantIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < mutableMutantIds.length
    return mutableMutantIds[arg1]
}

function owner() payable {
    return owner
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMutantAxApesAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
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

function burnMutation(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor7 != msg.sender:
        revert with 0, 'not mutant contract'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg1][address(arg2)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(arg2)]--
    emit TransferSingle(arg1, 1, msg.sender, arg2, 0);
}

function getMutableIds() payable {
    if mutableMutantIds.length > test266151307():
        revert with 0, 65
    if mutableMutantIds.length:
        mem[128 len 32 * mutableMutantIds.length] = call.data[calldata.size len 32 * mutableMutantIds.length]
    idx = 0
    while idx < mutableMutantIds.length:
        mem[0] = 6
        if idx >= mutableMutantIds.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = mutableMutantIds[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=mutableMutantIds.length, data=mem[128 len 32 * mutableMutantIds.length])
}

function addMutableIds(uint256 arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        if idx >= arg2.length:
            revert with 0, 50
        mutableMutantIds.length++
        mutableMutantIds[mutableMutantIds.length] = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        stor9[mem[(32 * idx) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setBaseURI(string arg1) payable {
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
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while (uint255(stor8.length) * 0.5) + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
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
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
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

function mintBatch(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 0
    if not owner:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if 1 == mem[(32 * idx) + 128]:
            if idx >= arg2.length:
                revert with 0, 50
            if stor3 > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 0, 17
            stor3 += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            if 2500 < stor3:
                revert with 0, 'mark 2 supply exceeded'
        else:
            if idx >= arg1.length:
                revert with 0, 50
            if 69 == mem[(32 * idx) + 128]:
                if idx >= arg2.length:
                    revert with 0, 50
                if stor4 > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                    revert with 0, 17
                stor4 += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                if 8 < stor4:
                    revert with 0, 'mega supply exceeded'
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = owner
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][stor5] > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][stor5] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 226 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + 226] = arg2.length
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + 258 len 32 * arg2.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg2.length]
    emit TransferBatch(Array(len=arg1.length, data=mem[128 len 32 * arg1.length], arg2.length, mem[ceil32(32 * arg1.length) + 129 len 32 * arg2.length]), (32 * arg1.length) + 96, msg.sender, 0, owner);
    if not ext_code.size(owner):
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 134] = msg.sender
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 166] = 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 198] = 160
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = arg1.length
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 326 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 230] = (32 * arg1.length) + 192
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + 326] = arg2.length
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + 358 len 32 * arg2.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg2.length]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 262] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 358] = 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 390 len 0] = None
    require ext_code.size(owner)
    call owner.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg1.length, mem[128 len 32 * arg1.length], arg2.length, mem[ceil32(32 * arg1.length) + 129 len 32 * arg2.length], 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
    if not ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _721 = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _725 = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 36] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 68 len ceil32(_725)] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ext_call.return_data[0] + 162 len ceil32(_725)]
    if ceil32(_725) <= _725:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_725) + 32]
    mem[mem[64] + _725 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_725) + _721 + -mem[64] + 68
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if uint255(stor8.length) * 0.5 <= 0:
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor8.length):
                        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor8.length):
                            if 31 < uint255(stor8.length) * 0.5:
                                mem[128] = uint256(stor8.field_0)
                                idx = 128
                                s = 0
                                while (uint255(stor8.length) * 0.5) + 96 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[128] = 256 * stor8.length.field_8
                    else:
                        if bool(stor8.length) == stor8.length.field_1 < 32:
                            revert with 0, 34
                        if stor8.length.field_1:
                            if 31 < stor8.length.field_1:
                                mem[128] = uint256(stor8.field_0)
                                idx = 128
                                s = 0
                                while stor8.length.field_1 + 96 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[128] = 256 * stor8.length.field_8
                    mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                        mem[128] = 256 * stor8.length.field_8
                else:
                    if bool(stor8.length) == stor8.length.field_1 < 32:
                        revert with 0, 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while stor8.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                        mem[128] = 256 * stor8.length.field_8
                mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
            if not arg1:
                mem[96] = 1
                mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor8.length):
                        mem[192] = Mask(248, 8, stor8.length)
                    else:
                        if bool(stor8.length) != 1:
                            mem[64] = 1
                            _872 = mem[160]
                            mem[33] = mem[160]
                            mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                            if ceil32(_872) > _872:
                                mem[_872 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_872) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor8.length) * 0.5:
                            mem[idx + 192] = stor8[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(uint255(stor8.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[(uint255(stor8.length) * 0.5) + 193] = 32
                    mem[(uint255(stor8.length) * 0.5) + 225] = mem[160]
                    mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(mem[160]) > mem[160]:
                        mem[(uint255(stor8.length) * 0.5) + mem[160] + 257] = 0
                    return Array(len=mem[160], data=mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])])
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[192] = Mask(248, 8, stor8.length)
                else:
                    if bool(stor8.length) != 1:
                        mem[64] = 1
                        _874 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_874) > _874:
                            mem[_874 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_874) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 192] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[stor8.length.field_1 + 193] = 32
                mem[stor8.length.field_1 + 225] = mem[160]
                mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor8.length.field_1 + mem[160] + 257] = 0
                return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1879 = mem[64]
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor8.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                        _2023 = mem[96]
                        mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(_2023) <= _2023:
                            _2839 = mem[64]
                            mem[64] = _2023 + _1879 + (uint255(stor8.length) * 0.5) + 32
                            mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 32] = 32
                            _3015 = mem[_2839]
                            mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 64] = mem[_2839]
                            mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3015)] = mem[_2839 + 32 len ceil32(_3015)]
                            if ceil32(_3015) > _3015:
                                mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + _3015 + 96] = 0
                            return 32, mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3015) + 32]
                        mem[_1879 + (uint255(stor8.length) * 0.5) + _2023 + 32] = 0
                        _2888 = mem[64]
                        mem[64] = _2023 + _1879 + (uint255(stor8.length) * 0.5) + 32
                        mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 32] = 32
                        _3047 = mem[_2888]
                        mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 64] = mem[_2888]
                        mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3047)] = mem[_2888 + 32 len ceil32(_3047)]
                        if ceil32(_3047) > _3047:
                            mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + _3047 + 96] = 0
                        return 32, mem[_2023 + _1879 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3047) + 32]
                    if bool(stor8.length) != 1:
                        _2047 = mem[96]
                        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(_2047) <= _2047:
                            _2840 = mem[64]
                            mem[64] = _2047
                            mem[_2047] = 32
                            _3016 = mem[_2840]
                            mem[_2047 + 32] = mem[_2840]
                            mem[_2047 + 64 len ceil32(_3016)] = mem[_2840 + 32 len ceil32(_3016)]
                            if ceil32(_3016) > _3016:
                                mem[_2047 + _3016 + 64] = 0
                            return 32, mem[_2047 + 32 len ceil32(_3016) + 32]
                        mem[_2047] = 0
                        _2891 = mem[64]
                        mem[64] = _2047
                        mem[_2047] = 32
                        _3048 = mem[_2891]
                        mem[_2047 + 32] = mem[_2891]
                        mem[_2047 + 64 len ceil32(_3048)] = mem[_2891 + 32 len ceil32(_3048)]
                        if ceil32(_3048) > _3048:
                            mem[_2047 + _3048 + 64] = 0
                        return 32, mem[_2047 + 32 len ceil32(_3048) + 32]
                    mem[0] = 8
                    idx = 0
                    s = 0
                    while idx < uint255(stor8.length) * 0.5:
                        mem[idx + _1879 + 32] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _2823 = mem[96]
                    mem[_1879 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2823) <= _2823:
                        _3545 = mem[64]
                        mem[64] = _2823 + _1879 + (uint255(stor8.length) * 0.5) + 32
                        mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 32] = 32
                        _3735 = mem[_3545]
                        mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 64] = mem[_3545]
                        mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3735)] = mem[_3545 + 32 len ceil32(_3735)]
                        if ceil32(_3735) > _3735:
                            mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + _3735 + 96] = 0
                        return 32, mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3735) + 32]
                    mem[_1879 + (uint255(stor8.length) * 0.5) + _2823 + 32] = 0
                    _3626 = mem[64]
                    mem[64] = _2823 + _1879 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3751 = mem[_3626]
                    mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 64] = mem[_3626]
                    mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3751)] = mem[_3626 + 32 len ceil32(_3751)]
                    if ceil32(_3751) > _3751:
                        mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + _3751 + 96] = 0
                    return 32, mem[_2823 + _1879 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3751) + 32]
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                    _2048 = mem[96]
                    mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _2841 = mem[64]
                        mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                        mem[mem[96] + _1879 + stor8.length.field_1 + 32] = 32
                        _3017 = mem[_2841]
                        mem[_2048 + _1879 + stor8.length.field_1 + 64] = mem[_2841]
                        mem[_2048 + _1879 + stor8.length.field_1 + 96 len ceil32(_3017)] = mem[_2841 + 32 len ceil32(_3017)]
                        if ceil32(_3017) > _3017:
                            mem[_2048 + _1879 + stor8.length.field_1 + _3017 + 96] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3017) + _2048 + _1879 + stor8.length.field_1 + -mem[64] + 96
                    mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
                    _2893 = mem[64]
                    mem[64] = _2048 + _1879 + stor8.length.field_1 + 32
                    mem[_2048 + _1879 + stor8.length.field_1 + 32] = 32
                    _3049 = mem[_2893]
                    mem[_2048 + _1879 + stor8.length.field_1 + 64] = mem[_2893]
                    mem[_2048 + _1879 + stor8.length.field_1 + 96 len ceil32(_3049)] = mem[_2893 + 32 len ceil32(_3049)]
                    if ceil32(_3049) > _3049:
                        mem[_2048 + _1879 + stor8.length.field_1 + _3049 + 96] = 0
                    return 32, mem[_2048 + _1879 + stor8.length.field_1 + 64 len ceil32(_3049) + 32]
                if bool(stor8.length) != 1:
                    _2071 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2071) <= _2071:
                        _2842 = mem[64]
                        mem[64] = _2071
                        mem[_2071] = 32
                        _3018 = mem[_2842]
                        mem[_2071 + 32] = mem[_2842]
                        mem[_2071 + 64 len ceil32(_3018)] = mem[_2842 + 32 len ceil32(_3018)]
                        if ceil32(_3018) > _3018:
                            mem[_2071 + _3018 + 64] = 0
                        return 32, mem[_2071 + 32 len ceil32(_3018) + 32]
                    mem[_2071] = 0
                    _2896 = mem[64]
                    mem[64] = _2071
                    mem[_2071] = 32
                    _3050 = mem[_2896]
                    mem[_2071 + 32] = mem[_2896]
                    mem[_2071 + 64 len ceil32(_3050)] = mem[_2896 + 32 len ceil32(_3050)]
                    if ceil32(_3050) > _3050:
                        mem[_2071 + _3050 + 64] = 0
                    return 32, mem[_2071 + 32 len ceil32(_3050) + 32]
                mem[0] = 8
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + _1879 + 32] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2824 = mem[96]
                mem[_1879 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2824) <= _2824:
                    _3550 = mem[64]
                    mem[64] = _2824 + _1879 + stor8.length.field_1 + 32
                    mem[_2824 + _1879 + stor8.length.field_1 + 32] = 32
                    _3736 = mem[_3550]
                    mem[_2824 + _1879 + stor8.length.field_1 + 64] = mem[_3550]
                    mem[_2824 + _1879 + stor8.length.field_1 + 96 len ceil32(_3736)] = mem[_3550 + 32 len ceil32(_3736)]
                    if ceil32(_3736) > _3736:
                        mem[_2824 + _1879 + stor8.length.field_1 + _3736 + 96] = 0
                    return 32, mem[_2824 + _1879 + stor8.length.field_1 + 64 len ceil32(_3736) + 32]
                mem[_1879 + stor8.length.field_1 + _2824 + 32] = 0
                _3632 = mem[64]
                mem[64] = _2824 + _1879 + stor8.length.field_1 + 32
                mem[_2824 + _1879 + stor8.length.field_1 + 32] = 32
                _3752 = mem[_3632]
                mem[_2824 + _1879 + stor8.length.field_1 + 64] = mem[_3632]
                mem[_2824 + _1879 + stor8.length.field_1 + 96 len ceil32(_3752)] = mem[_3632 + 32 len ceil32(_3752)]
                if ceil32(_3752) > _3752:
                    mem[_2824 + _1879 + stor8.length.field_1 + _3752 + 96] = 0
                return 32, mem[_2824 + _1879 + stor8.length.field_1 + 64 len ceil32(_3752) + 32]
            mem[128 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1880 = mem[64]
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                    _2025 = mem[96]
                    mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2025) <= _2025:
                        _2843 = mem[64]
                        mem[64] = _2025 + _1880 + (uint255(stor8.length) * 0.5) + 32
                        mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 32] = 32
                        _3019 = mem[_2843]
                        mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 64] = mem[_2843]
                        mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3019)] = mem[_2843 + 32 len ceil32(_3019)]
                        if ceil32(_3019) > _3019:
                            mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + _3019 + 96] = 0
                        return 32, mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3019) + 32]
                    mem[_1880 + (uint255(stor8.length) * 0.5) + _2025 + 32] = 0
                    _2898 = mem[64]
                    mem[64] = _2025 + _1880 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3051 = mem[_2898]
                    mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 64] = mem[_2898]
                    mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3051)] = mem[_2898 + 32 len ceil32(_3051)]
                    if ceil32(_3051) > _3051:
                        mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + _3051 + 96] = 0
                    return 32, mem[_2025 + _1880 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3051) + 32]
                if bool(stor8.length) != 1:
                    _2049 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2049) <= _2049:
                        _2844 = mem[64]
                        mem[64] = _2049
                        mem[_2049] = 32
                        _3020 = mem[_2844]
                        mem[_2049 + 32] = mem[_2844]
                        mem[_2049 + 64 len ceil32(_3020)] = mem[_2844 + 32 len ceil32(_3020)]
                        if ceil32(_3020) > _3020:
                            mem[_2049 + _3020 + 64] = 0
                        return 32, mem[_2049 + 32 len ceil32(_3020) + 32]
                    mem[_2049] = 0
                    _2901 = mem[64]
                    mem[64] = _2049
                    mem[_2049] = 32
                    _3052 = mem[_2901]
                    mem[_2049 + 32] = mem[_2901]
                    mem[_2049 + 64 len ceil32(_3052)] = mem[_2901 + 32 len ceil32(_3052)]
                    if ceil32(_3052) > _3052:
                        mem[_2049 + _3052 + 64] = 0
                    return 32, mem[_2049 + 32 len ceil32(_3052) + 32]
                mem[0] = 8
                idx = 0
                s = 0
                while idx < uint255(stor8.length) * 0.5:
                    mem[idx + _1880 + 32] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2825 = mem[96]
                mem[_1880 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2825) <= _2825:
                    _3555 = mem[64]
                    mem[64] = _2825 + _1880 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3737 = mem[_3555]
                    mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 64] = mem[_3555]
                    mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3737)] = mem[_3555 + 32 len ceil32(_3737)]
                    if ceil32(_3737) > _3737:
                        mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + _3737 + 96] = 0
                    return 32, mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3737) + 32]
                mem[_1880 + (uint255(stor8.length) * 0.5) + _2825 + 32] = 0
                _3638 = mem[64]
                mem[64] = _2825 + _1880 + (uint255(stor8.length) * 0.5) + 32
                mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3753 = mem[_3638]
                mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 64] = mem[_3638]
                mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3753)] = mem[_3638 + 32 len ceil32(_3753)]
                if ceil32(_3753) > _3753:
                    mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + _3753 + 96] = 0
                return 32, mem[_2825 + _1880 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3753) + 32]
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2050 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2845 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                    mem[mem[96] + _1880 + stor8.length.field_1 + 32] = 32
                    _3021 = mem[_2845]
                    mem[_2050 + _1880 + stor8.length.field_1 + 64] = mem[_2845]
                    mem[_2050 + _1880 + stor8.length.field_1 + 96 len ceil32(_3021)] = mem[_2845 + 32 len ceil32(_3021)]
                    if ceil32(_3021) > _3021:
                        mem[_2050 + _1880 + stor8.length.field_1 + _3021 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_3021) + _2050 + _1880 + stor8.length.field_1 + -mem[64] + 96
                mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
                _2903 = mem[64]
                mem[64] = _2050 + _1880 + stor8.length.field_1 + 32
                mem[_2050 + _1880 + stor8.length.field_1 + 32] = 32
                _3053 = mem[_2903]
                mem[_2050 + _1880 + stor8.length.field_1 + 64] = mem[_2903]
                mem[_2050 + _1880 + stor8.length.field_1 + 96 len ceil32(_3053)] = mem[_2903 + 32 len ceil32(_3053)]
                if ceil32(_3053) > _3053:
                    mem[_2050 + _1880 + stor8.length.field_1 + _3053 + 96] = 0
                return 32, mem[_2050 + _1880 + stor8.length.field_1 + 64 len ceil32(_3053) + 32]
            if bool(stor8.length) != 1:
                _2073 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2073) <= _2073:
                    _2846 = mem[64]
                    mem[64] = _2073
                    mem[_2073] = 32
                    _3022 = mem[_2846]
                    mem[_2073 + 32] = mem[_2846]
                    mem[_2073 + 64 len ceil32(_3022)] = mem[_2846 + 32 len ceil32(_3022)]
                    if ceil32(_3022) > _3022:
                        mem[_2073 + _3022 + 64] = 0
                    return 32, mem[_2073 + 32 len ceil32(_3022) + 32]
                mem[_2073] = 0
                _2906 = mem[64]
                mem[64] = _2073
                mem[_2073] = 32
                _3054 = mem[_2906]
                mem[_2073 + 32] = mem[_2906]
                mem[_2073 + 64 len ceil32(_3054)] = mem[_2906 + 32 len ceil32(_3054)]
                if ceil32(_3054) > _3054:
                    mem[_2073 + _3054 + 64] = 0
                return 32, mem[_2073 + 32 len ceil32(_3054) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _1880 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2826 = mem[96]
            mem[_1880 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2826) <= _2826:
                _3560 = mem[64]
                mem[64] = _2826 + _1880 + stor8.length.field_1 + 32
                mem[_2826 + _1880 + stor8.length.field_1 + 32] = 32
                _3738 = mem[_3560]
                mem[_2826 + _1880 + stor8.length.field_1 + 64] = mem[_3560]
                mem[_2826 + _1880 + stor8.length.field_1 + 96 len ceil32(_3738)] = mem[_3560 + 32 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_2826 + _1880 + stor8.length.field_1 + _3738 + 96] = 0
                return 32, mem[_2826 + _1880 + stor8.length.field_1 + 64 len ceil32(_3738) + 32]
            mem[_1880 + stor8.length.field_1 + _2826 + 32] = 0
            _3644 = mem[64]
            mem[64] = _2826 + _1880 + stor8.length.field_1 + 32
            mem[_2826 + _1880 + stor8.length.field_1 + 32] = 32
            _3754 = mem[_3644]
            mem[_2826 + _1880 + stor8.length.field_1 + 64] = mem[_3644]
            mem[_2826 + _1880 + stor8.length.field_1 + 96 len ceil32(_3754)] = mem[_3644 + 32 len ceil32(_3754)]
            if ceil32(_3754) > _3754:
                mem[_2826 + _1880 + stor8.length.field_1 + _3754 + 96] = 0
            return 32, mem[_2826 + _1880 + stor8.length.field_1 + 64 len ceil32(_3754) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1 <= 0:
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                        mem[128] = 256 * stor8.length.field_8
                else:
                    if bool(stor8.length) == stor8.length.field_1 < 32:
                        revert with 0, 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while stor8.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                        mem[128] = 256 * stor8.length.field_8
                mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8.length):
                    if 31 < uint255(stor8.length) * 0.5:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor8.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                    mem[128] = 256 * stor8.length.field_8
            else:
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if stor8.length.field_1:
                    if 31 < stor8.length.field_1:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while stor8.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                    mem[128] = 256 * stor8.length.field_8
            mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
            return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[192] = Mask(248, 8, stor8.length)
                else:
                    if bool(stor8.length) != 1:
                        mem[64] = 1
                        _880 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_880) > _880:
                            mem[_880 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_880) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor8.length) * 0.5:
                        mem[idx + 192] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor8.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor8.length) * 0.5) + 193] = 32
                mem[(uint255(stor8.length) * 0.5) + 225] = mem[160]
                mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[(uint255(stor8.length) * 0.5) + mem[160] + 257] = 0
                return Array(len=mem[160], data=mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])])
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[192] = Mask(248, 8, stor8.length)
            else:
                if bool(stor8.length) != 1:
                    mem[64] = 1
                    _882 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_882) > _882:
                        mem[_882 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_882) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + 192] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor8.length.field_1 + 193] = 32
            mem[stor8.length.field_1 + 225] = mem[160]
            mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor8.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1881 = mem[64]
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                    _2029 = mem[96]
                    mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2029) <= _2029:
                        _2851 = mem[64]
                        mem[64] = _2029 + _1881 + (uint255(stor8.length) * 0.5) + 32
                        mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 32] = 32
                        _3023 = mem[_2851]
                        mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 64] = mem[_2851]
                        mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3023)] = mem[_2851 + 32 len ceil32(_3023)]
                        if ceil32(_3023) > _3023:
                            mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + _3023 + 96] = 0
                        return 32, mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3023) + 32]
                    mem[_1881 + (uint255(stor8.length) * 0.5) + _2029 + 32] = 0
                    _2912 = mem[64]
                    mem[64] = _2029 + _1881 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3055 = mem[_2912]
                    mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 64] = mem[_2912]
                    mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3055)] = mem[_2912 + 32 len ceil32(_3055)]
                    if ceil32(_3055) > _3055:
                        mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + _3055 + 96] = 0
                    return 32, mem[_2029 + _1881 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3055) + 32]
                if bool(stor8.length) != 1:
                    _2053 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2053) <= _2053:
                        _2852 = mem[64]
                        mem[64] = _2053
                        mem[_2053] = 32
                        _3024 = mem[_2852]
                        mem[_2053 + 32] = mem[_2852]
                        mem[_2053 + 64 len ceil32(_3024)] = mem[_2852 + 32 len ceil32(_3024)]
                        if ceil32(_3024) > _3024:
                            mem[_2053 + _3024 + 64] = 0
                        return 32, mem[_2053 + 32 len ceil32(_3024) + 32]
                    mem[_2053] = 0
                    _2915 = mem[64]
                    mem[64] = _2053
                    mem[_2053] = 32
                    _3056 = mem[_2915]
                    mem[_2053 + 32] = mem[_2915]
                    mem[_2053 + 64 len ceil32(_3056)] = mem[_2915 + 32 len ceil32(_3056)]
                    if ceil32(_3056) > _3056:
                        mem[_2053 + _3056 + 64] = 0
                    return 32, mem[_2053 + 32 len ceil32(_3056) + 32]
                mem[0] = 8
                idx = 0
                s = 0
                while idx < uint255(stor8.length) * 0.5:
                    mem[idx + _1881 + 32] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2827 = mem[96]
                mem[_1881 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2827) <= _2827:
                    _3565 = mem[64]
                    mem[64] = _2827 + _1881 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3739 = mem[_3565]
                    mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 64] = mem[_3565]
                    mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3739)] = mem[_3565 + 32 len ceil32(_3739)]
                    if ceil32(_3739) > _3739:
                        mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + _3739 + 96] = 0
                    return 32, mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3739) + 32]
                mem[_1881 + (uint255(stor8.length) * 0.5) + _2827 + 32] = 0
                _3650 = mem[64]
                mem[64] = _2827 + _1881 + (uint255(stor8.length) * 0.5) + 32
                mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3755 = mem[_3650]
                mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 64] = mem[_3650]
                mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3755)] = mem[_3650 + 32 len ceil32(_3755)]
                if ceil32(_3755) > _3755:
                    mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + _3755 + 96] = 0
                return 32, mem[_2827 + _1881 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3755) + 32]
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2054 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2853 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                    mem[mem[96] + _1881 + stor8.length.field_1 + 32] = 32
                    _3025 = mem[_2853]
                    mem[_2054 + _1881 + stor8.length.field_1 + 64] = mem[_2853]
                    mem[_2054 + _1881 + stor8.length.field_1 + 96 len ceil32(_3025)] = mem[_2853 + 32 len ceil32(_3025)]
                    if ceil32(_3025) > _3025:
                        mem[_2054 + _1881 + stor8.length.field_1 + _3025 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_3025) + _2054 + _1881 + stor8.length.field_1 + -mem[64] + 96
                mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
                _2917 = mem[64]
                mem[64] = _2054 + _1881 + stor8.length.field_1 + 32
                mem[_2054 + _1881 + stor8.length.field_1 + 32] = 32
                _3057 = mem[_2917]
                mem[_2054 + _1881 + stor8.length.field_1 + 64] = mem[_2917]
                mem[_2054 + _1881 + stor8.length.field_1 + 96 len ceil32(_3057)] = mem[_2917 + 32 len ceil32(_3057)]
                if ceil32(_3057) > _3057:
                    mem[_2054 + _1881 + stor8.length.field_1 + _3057 + 96] = 0
                return 32, mem[_2054 + _1881 + stor8.length.field_1 + 64 len ceil32(_3057) + 32]
            if bool(stor8.length) != 1:
                _2075 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2075) <= _2075:
                    _2854 = mem[64]
                    mem[64] = _2075
                    mem[_2075] = 32
                    _3026 = mem[_2854]
                    mem[_2075 + 32] = mem[_2854]
                    mem[_2075 + 64 len ceil32(_3026)] = mem[_2854 + 32 len ceil32(_3026)]
                    if ceil32(_3026) > _3026:
                        mem[_2075 + _3026 + 64] = 0
                    return 32, mem[_2075 + 32 len ceil32(_3026) + 32]
                mem[_2075] = 0
                _2920 = mem[64]
                mem[64] = _2075
                mem[_2075] = 32
                _3058 = mem[_2920]
                mem[_2075 + 32] = mem[_2920]
                mem[_2075 + 64 len ceil32(_3058)] = mem[_2920 + 32 len ceil32(_3058)]
                if ceil32(_3058) > _3058:
                    mem[_2075 + _3058 + 64] = 0
                return 32, mem[_2075 + 32 len ceil32(_3058) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _1881 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2828 = mem[96]
            mem[_1881 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2828) <= _2828:
                _3570 = mem[64]
                mem[64] = _2828 + _1881 + stor8.length.field_1 + 32
                mem[_2828 + _1881 + stor8.length.field_1 + 32] = 32
                _3740 = mem[_3570]
                mem[_2828 + _1881 + stor8.length.field_1 + 64] = mem[_3570]
                mem[_2828 + _1881 + stor8.length.field_1 + 96 len ceil32(_3740)] = mem[_3570 + 32 len ceil32(_3740)]
                if ceil32(_3740) > _3740:
                    mem[_2828 + _1881 + stor8.length.field_1 + _3740 + 96] = 0
                return 32, mem[_2828 + _1881 + stor8.length.field_1 + 64 len ceil32(_3740) + 32]
            mem[_1881 + stor8.length.field_1 + _2828 + 32] = 0
            _3656 = mem[64]
            mem[64] = _2828 + _1881 + stor8.length.field_1 + 32
            mem[_2828 + _1881 + stor8.length.field_1 + 32] = 32
            _3756 = mem[_3656]
            mem[_2828 + _1881 + stor8.length.field_1 + 64] = mem[_3656]
            mem[_2828 + _1881 + stor8.length.field_1 + 96 len ceil32(_3756)] = mem[_3656 + 32 len ceil32(_3756)]
            if ceil32(_3756) > _3756:
                mem[_2828 + _1881 + stor8.length.field_1 + _3756 + 96] = 0
            return 32, mem[_2828 + _1881 + stor8.length.field_1 + 64 len ceil32(_3756) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1882 = mem[64]
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2031 = mem[96]
                mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2031) <= _2031:
                    _2855 = mem[64]
                    mem[64] = _2031 + _1882 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3027 = mem[_2855]
                    mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 64] = mem[_2855]
                    mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3027)] = mem[_2855 + 32 len ceil32(_3027)]
                    if ceil32(_3027) > _3027:
                        mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + _3027 + 96] = 0
                    return 32, mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3027) + 32]
                mem[_1882 + (uint255(stor8.length) * 0.5) + _2031 + 32] = 0
                _2922 = mem[64]
                mem[64] = _2031 + _1882 + (uint255(stor8.length) * 0.5) + 32
                mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3059 = mem[_2922]
                mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 64] = mem[_2922]
                mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3059)] = mem[_2922 + 32 len ceil32(_3059)]
                if ceil32(_3059) > _3059:
                    mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + _3059 + 96] = 0
                return 32, mem[_2031 + _1882 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3059) + 32]
            if bool(stor8.length) != 1:
                _2055 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2055) <= _2055:
                    _2856 = mem[64]
                    mem[64] = _2055
                    mem[_2055] = 32
                    _3028 = mem[_2856]
                    mem[_2055 + 32] = mem[_2856]
                    mem[_2055 + 64 len ceil32(_3028)] = mem[_2856 + 32 len ceil32(_3028)]
                    if ceil32(_3028) > _3028:
                        mem[_2055 + _3028 + 64] = 0
                    return 32, mem[_2055 + 32 len ceil32(_3028) + 32]
                mem[_2055] = 0
                _2925 = mem[64]
                mem[64] = _2055
                mem[_2055] = 32
                _3060 = mem[_2925]
                mem[_2055 + 32] = mem[_2925]
                mem[_2055 + 64 len ceil32(_3060)] = mem[_2925 + 32 len ceil32(_3060)]
                if ceil32(_3060) > _3060:
                    mem[_2055 + _3060 + 64] = 0
                return 32, mem[_2055 + 32 len ceil32(_3060) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < uint255(stor8.length) * 0.5:
                mem[idx + _1882 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2829 = mem[96]
            mem[_1882 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2829) <= _2829:
                _3575 = mem[64]
                mem[64] = _2829 + _1882 + (uint255(stor8.length) * 0.5) + 32
                mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3741 = mem[_3575]
                mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 64] = mem[_3575]
                mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3741)] = mem[_3575 + 32 len ceil32(_3741)]
                if ceil32(_3741) > _3741:
                    mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + _3741 + 96] = 0
                return 32, mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3741) + 32]
            mem[_1882 + (uint255(stor8.length) * 0.5) + _2829 + 32] = 0
            _3662 = mem[64]
            mem[64] = _2829 + _1882 + (uint255(stor8.length) * 0.5) + 32
            mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 32] = 32
            _3757 = mem[_3662]
            mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 64] = mem[_3662]
            mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3757)] = mem[_3662 + 32 len ceil32(_3757)]
            if ceil32(_3757) > _3757:
                mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + _3757 + 96] = 0
            return 32, mem[_2829 + _1882 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3757) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _2056 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2857 = mem[64]
                mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                mem[mem[96] + _1882 + stor8.length.field_1 + 32] = 32
                _3029 = mem[_2857]
                mem[_2056 + _1882 + stor8.length.field_1 + 64] = mem[_2857]
                mem[_2056 + _1882 + stor8.length.field_1 + 96 len ceil32(_3029)] = mem[_2857 + 32 len ceil32(_3029)]
                if ceil32(_3029) > _3029:
                    mem[_2056 + _1882 + stor8.length.field_1 + _3029 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_3029) + _2056 + _1882 + stor8.length.field_1 + -mem[64] + 96
            mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
            _2927 = mem[64]
            mem[64] = _2056 + _1882 + stor8.length.field_1 + 32
            mem[_2056 + _1882 + stor8.length.field_1 + 32] = 32
            _3061 = mem[_2927]
            mem[_2056 + _1882 + stor8.length.field_1 + 64] = mem[_2927]
            mem[_2056 + _1882 + stor8.length.field_1 + 96 len ceil32(_3061)] = mem[_2927 + 32 len ceil32(_3061)]
            if ceil32(_3061) > _3061:
                mem[_2056 + _1882 + stor8.length.field_1 + _3061 + 96] = 0
            return 32, mem[_2056 + _1882 + stor8.length.field_1 + 64 len ceil32(_3061) + 32]
        if bool(stor8.length) != 1:
            _2077 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2077) <= _2077:
                _2858 = mem[64]
                mem[64] = _2077
                mem[_2077] = 32
                _3030 = mem[_2858]
                mem[_2077 + 32] = mem[_2858]
                mem[_2077 + 64 len ceil32(_3030)] = mem[_2858 + 32 len ceil32(_3030)]
                if ceil32(_3030) > _3030:
                    mem[_2077 + _3030 + 64] = 0
                return 32, mem[_2077 + 32 len ceil32(_3030) + 32]
            mem[_2077] = 0
            _2930 = mem[64]
            mem[64] = _2077
            mem[_2077] = 32
            _3062 = mem[_2930]
            mem[_2077 + 32] = mem[_2930]
            mem[_2077 + 64 len ceil32(_3062)] = mem[_2930 + 32 len ceil32(_3062)]
            if ceil32(_3062) > _3062:
                mem[_2077 + _3062 + 64] = 0
            return 32, mem[_2077 + 32 len ceil32(_3062) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _1882 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2830 = mem[96]
        mem[_1882 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2830) <= _2830:
            _3580 = mem[64]
            mem[64] = _2830 + _1882 + stor8.length.field_1 + 32
            mem[_2830 + _1882 + stor8.length.field_1 + 32] = 32
            _3742 = mem[_3580]
            mem[_2830 + _1882 + stor8.length.field_1 + 64] = mem[_3580]
            mem[_2830 + _1882 + stor8.length.field_1 + 96 len ceil32(_3742)] = mem[_3580 + 32 len ceil32(_3742)]
            if ceil32(_3742) > _3742:
                mem[_2830 + _1882 + stor8.length.field_1 + _3742 + 96] = 0
            return 32, mem[_2830 + _1882 + stor8.length.field_1 + 64 len ceil32(_3742) + 32]
        mem[_1882 + stor8.length.field_1 + _2830 + 32] = 0
        _3668 = mem[64]
        mem[64] = _2830 + _1882 + stor8.length.field_1 + 32
        mem[_2830 + _1882 + stor8.length.field_1 + 32] = 32
        _3758 = mem[_3668]
        mem[_2830 + _1882 + stor8.length.field_1 + 64] = mem[_3668]
        mem[_2830 + _1882 + stor8.length.field_1 + 96 len ceil32(_3758)] = mem[_3668 + 32 len ceil32(_3758)]
        if ceil32(_3758) > _3758:
            mem[_2830 + _1882 + stor8.length.field_1 + _3758 + 96] = 0
        return 32, mem[_2830 + _1882 + stor8.length.field_1 + 64 len ceil32(_3758) + 32]
    if arg1 != 69:
        revert with 0, 'invalid mutation id'
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor8.length) * 0.5 <= 0:
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                        mem[128] = 256 * stor8.length.field_8
                else:
                    if bool(stor8.length) == stor8.length.field_1 < 32:
                        revert with 0, 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[128] = uint256(stor8.field_0)
                            idx = 128
                            s = 0
                            while stor8.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                        mem[128] = 256 * stor8.length.field_8
                mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8.length):
                    if 31 < uint255(stor8.length) * 0.5:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor8.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                    mem[128] = 256 * stor8.length.field_8
            else:
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if stor8.length.field_1:
                    if 31 < stor8.length.field_1:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while stor8.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                    mem[128] = 256 * stor8.length.field_8
            mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
            return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[192] = Mask(248, 8, stor8.length)
                else:
                    if bool(stor8.length) != 1:
                        mem[64] = 1
                        _888 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_888) > _888:
                            mem[_888 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_888) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor8.length) * 0.5:
                        mem[idx + 192] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor8.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor8.length) * 0.5) + 193] = 32
                mem[(uint255(stor8.length) * 0.5) + 225] = mem[160]
                mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[(uint255(stor8.length) * 0.5) + mem[160] + 257] = 0
                return Array(len=mem[160], data=mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])])
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[192] = Mask(248, 8, stor8.length)
            else:
                if bool(stor8.length) != 1:
                    mem[64] = 1
                    _890 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_890) > _890:
                        mem[_890 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_890) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + 192] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor8.length.field_1 + 193] = 32
            mem[stor8.length.field_1 + 225] = mem[160]
            mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor8.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1883 = mem[64]
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                    _2035 = mem[96]
                    mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2035) <= _2035:
                        _2863 = mem[64]
                        mem[64] = _2035 + _1883 + (uint255(stor8.length) * 0.5) + 32
                        mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 32] = 32
                        _3031 = mem[_2863]
                        mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 64] = mem[_2863]
                        mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3031)] = mem[_2863 + 32 len ceil32(_3031)]
                        if ceil32(_3031) > _3031:
                            mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + _3031 + 96] = 0
                        return 32, mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3031) + 32]
                    mem[_1883 + (uint255(stor8.length) * 0.5) + _2035 + 32] = 0
                    _2936 = mem[64]
                    mem[64] = _2035 + _1883 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3063 = mem[_2936]
                    mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 64] = mem[_2936]
                    mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3063)] = mem[_2936 + 32 len ceil32(_3063)]
                    if ceil32(_3063) > _3063:
                        mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + _3063 + 96] = 0
                    return 32, mem[_2035 + _1883 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3063) + 32]
                if bool(stor8.length) != 1:
                    _2059 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_2059) <= _2059:
                        _2864 = mem[64]
                        mem[64] = _2059
                        mem[_2059] = 32
                        _3032 = mem[_2864]
                        mem[_2059 + 32] = mem[_2864]
                        mem[_2059 + 64 len ceil32(_3032)] = mem[_2864 + 32 len ceil32(_3032)]
                        if ceil32(_3032) > _3032:
                            mem[_2059 + _3032 + 64] = 0
                        return 32, mem[_2059 + 32 len ceil32(_3032) + 32]
                    mem[_2059] = 0
                    _2939 = mem[64]
                    mem[64] = _2059
                    mem[_2059] = 32
                    _3064 = mem[_2939]
                    mem[_2059 + 32] = mem[_2939]
                    mem[_2059 + 64 len ceil32(_3064)] = mem[_2939 + 32 len ceil32(_3064)]
                    if ceil32(_3064) > _3064:
                        mem[_2059 + _3064 + 64] = 0
                    return 32, mem[_2059 + 32 len ceil32(_3064) + 32]
                mem[0] = 8
                idx = 0
                s = 0
                while idx < uint255(stor8.length) * 0.5:
                    mem[idx + _1883 + 32] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2831 = mem[96]
                mem[_1883 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2831) <= _2831:
                    _3585 = mem[64]
                    mem[64] = _2831 + _1883 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3743 = mem[_3585]
                    mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 64] = mem[_3585]
                    mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3743)] = mem[_3585 + 32 len ceil32(_3743)]
                    if ceil32(_3743) > _3743:
                        mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + _3743 + 96] = 0
                    return 32, mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3743) + 32]
                mem[_1883 + (uint255(stor8.length) * 0.5) + _2831 + 32] = 0
                _3674 = mem[64]
                mem[64] = _2831 + _1883 + (uint255(stor8.length) * 0.5) + 32
                mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3759 = mem[_3674]
                mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 64] = mem[_3674]
                mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3759)] = mem[_3674 + 32 len ceil32(_3759)]
                if ceil32(_3759) > _3759:
                    mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + _3759 + 96] = 0
                return 32, mem[_2831 + _1883 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3759) + 32]
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2060 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2865 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                    mem[mem[96] + _1883 + stor8.length.field_1 + 32] = 32
                    _3033 = mem[_2865]
                    mem[_2060 + _1883 + stor8.length.field_1 + 64] = mem[_2865]
                    mem[_2060 + _1883 + stor8.length.field_1 + 96 len ceil32(_3033)] = mem[_2865 + 32 len ceil32(_3033)]
                    if ceil32(_3033) > _3033:
                        mem[_2060 + _1883 + stor8.length.field_1 + _3033 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_3033) + _2060 + _1883 + stor8.length.field_1 + -mem[64] + 96
                mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
                _2941 = mem[64]
                mem[64] = _2060 + _1883 + stor8.length.field_1 + 32
                mem[_2060 + _1883 + stor8.length.field_1 + 32] = 32
                _3065 = mem[_2941]
                mem[_2060 + _1883 + stor8.length.field_1 + 64] = mem[_2941]
                mem[_2060 + _1883 + stor8.length.field_1 + 96 len ceil32(_3065)] = mem[_2941 + 32 len ceil32(_3065)]
                if ceil32(_3065) > _3065:
                    mem[_2060 + _1883 + stor8.length.field_1 + _3065 + 96] = 0
                return 32, mem[_2060 + _1883 + stor8.length.field_1 + 64 len ceil32(_3065) + 32]
            if bool(stor8.length) != 1:
                _2079 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2079) <= _2079:
                    _2866 = mem[64]
                    mem[64] = _2079
                    mem[_2079] = 32
                    _3034 = mem[_2866]
                    mem[_2079 + 32] = mem[_2866]
                    mem[_2079 + 64 len ceil32(_3034)] = mem[_2866 + 32 len ceil32(_3034)]
                    if ceil32(_3034) > _3034:
                        mem[_2079 + _3034 + 64] = 0
                    return 32, mem[_2079 + 32 len ceil32(_3034) + 32]
                mem[_2079] = 0
                _2944 = mem[64]
                mem[64] = _2079
                mem[_2079] = 32
                _3066 = mem[_2944]
                mem[_2079 + 32] = mem[_2944]
                mem[_2079 + 64 len ceil32(_3066)] = mem[_2944 + 32 len ceil32(_3066)]
                if ceil32(_3066) > _3066:
                    mem[_2079 + _3066 + 64] = 0
                return 32, mem[_2079 + 32 len ceil32(_3066) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _1883 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2832 = mem[96]
            mem[_1883 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2832) <= _2832:
                _3590 = mem[64]
                mem[64] = _2832 + _1883 + stor8.length.field_1 + 32
                mem[_2832 + _1883 + stor8.length.field_1 + 32] = 32
                _3744 = mem[_3590]
                mem[_2832 + _1883 + stor8.length.field_1 + 64] = mem[_3590]
                mem[_2832 + _1883 + stor8.length.field_1 + 96 len ceil32(_3744)] = mem[_3590 + 32 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_2832 + _1883 + stor8.length.field_1 + _3744 + 96] = 0
                return 32, mem[_2832 + _1883 + stor8.length.field_1 + 64 len ceil32(_3744) + 32]
            mem[_1883 + stor8.length.field_1 + _2832 + 32] = 0
            _3680 = mem[64]
            mem[64] = _2832 + _1883 + stor8.length.field_1 + 32
            mem[_2832 + _1883 + stor8.length.field_1 + 32] = 32
            _3760 = mem[_3680]
            mem[_2832 + _1883 + stor8.length.field_1 + 64] = mem[_3680]
            mem[_2832 + _1883 + stor8.length.field_1 + 96 len ceil32(_3760)] = mem[_3680 + 32 len ceil32(_3760)]
            if ceil32(_3760) > _3760:
                mem[_2832 + _1883 + stor8.length.field_1 + _3760 + 96] = 0
            return 32, mem[_2832 + _1883 + stor8.length.field_1 + 64 len ceil32(_3760) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1884 = mem[64]
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2037 = mem[96]
                mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2037) <= _2037:
                    _2867 = mem[64]
                    mem[64] = _2037 + _1884 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3035 = mem[_2867]
                    mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 64] = mem[_2867]
                    mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3035)] = mem[_2867 + 32 len ceil32(_3035)]
                    if ceil32(_3035) > _3035:
                        mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + _3035 + 96] = 0
                    return 32, mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3035) + 32]
                mem[_1884 + (uint255(stor8.length) * 0.5) + _2037 + 32] = 0
                _2946 = mem[64]
                mem[64] = _2037 + _1884 + (uint255(stor8.length) * 0.5) + 32
                mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3067 = mem[_2946]
                mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 64] = mem[_2946]
                mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3067)] = mem[_2946 + 32 len ceil32(_3067)]
                if ceil32(_3067) > _3067:
                    mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + _3067 + 96] = 0
                return 32, mem[_2037 + _1884 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3067) + 32]
            if bool(stor8.length) != 1:
                _2061 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2061) <= _2061:
                    _2868 = mem[64]
                    mem[64] = _2061
                    mem[_2061] = 32
                    _3036 = mem[_2868]
                    mem[_2061 + 32] = mem[_2868]
                    mem[_2061 + 64 len ceil32(_3036)] = mem[_2868 + 32 len ceil32(_3036)]
                    if ceil32(_3036) > _3036:
                        mem[_2061 + _3036 + 64] = 0
                    return 32, mem[_2061 + 32 len ceil32(_3036) + 32]
                mem[_2061] = 0
                _2949 = mem[64]
                mem[64] = _2061
                mem[_2061] = 32
                _3068 = mem[_2949]
                mem[_2061 + 32] = mem[_2949]
                mem[_2061 + 64 len ceil32(_3068)] = mem[_2949 + 32 len ceil32(_3068)]
                if ceil32(_3068) > _3068:
                    mem[_2061 + _3068 + 64] = 0
                return 32, mem[_2061 + 32 len ceil32(_3068) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < uint255(stor8.length) * 0.5:
                mem[idx + _1884 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2833 = mem[96]
            mem[_1884 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2833) <= _2833:
                _3595 = mem[64]
                mem[64] = _2833 + _1884 + (uint255(stor8.length) * 0.5) + 32
                mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3745 = mem[_3595]
                mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 64] = mem[_3595]
                mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3745)] = mem[_3595 + 32 len ceil32(_3745)]
                if ceil32(_3745) > _3745:
                    mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + _3745 + 96] = 0
                return 32, mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3745) + 32]
            mem[_1884 + (uint255(stor8.length) * 0.5) + _2833 + 32] = 0
            _3686 = mem[64]
            mem[64] = _2833 + _1884 + (uint255(stor8.length) * 0.5) + 32
            mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 32] = 32
            _3761 = mem[_3686]
            mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 64] = mem[_3686]
            mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3761)] = mem[_3686 + 32 len ceil32(_3761)]
            if ceil32(_3761) > _3761:
                mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + _3761 + 96] = 0
            return 32, mem[_2833 + _1884 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3761) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _2062 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2869 = mem[64]
                mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                mem[mem[96] + _1884 + stor8.length.field_1 + 32] = 32
                _3037 = mem[_2869]
                mem[_2062 + _1884 + stor8.length.field_1 + 64] = mem[_2869]
                mem[_2062 + _1884 + stor8.length.field_1 + 96 len ceil32(_3037)] = mem[_2869 + 32 len ceil32(_3037)]
                if ceil32(_3037) > _3037:
                    mem[_2062 + _1884 + stor8.length.field_1 + _3037 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_3037) + _2062 + _1884 + stor8.length.field_1 + -mem[64] + 96
            mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
            _2951 = mem[64]
            mem[64] = _2062 + _1884 + stor8.length.field_1 + 32
            mem[_2062 + _1884 + stor8.length.field_1 + 32] = 32
            _3069 = mem[_2951]
            mem[_2062 + _1884 + stor8.length.field_1 + 64] = mem[_2951]
            mem[_2062 + _1884 + stor8.length.field_1 + 96 len ceil32(_3069)] = mem[_2951 + 32 len ceil32(_3069)]
            if ceil32(_3069) > _3069:
                mem[_2062 + _1884 + stor8.length.field_1 + _3069 + 96] = 0
            return 32, mem[_2062 + _1884 + stor8.length.field_1 + 64 len ceil32(_3069) + 32]
        if bool(stor8.length) != 1:
            _2081 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2081) <= _2081:
                _2870 = mem[64]
                mem[64] = _2081
                mem[_2081] = 32
                _3038 = mem[_2870]
                mem[_2081 + 32] = mem[_2870]
                mem[_2081 + 64 len ceil32(_3038)] = mem[_2870 + 32 len ceil32(_3038)]
                if ceil32(_3038) > _3038:
                    mem[_2081 + _3038 + 64] = 0
                return 32, mem[_2081 + 32 len ceil32(_3038) + 32]
            mem[_2081] = 0
            _2954 = mem[64]
            mem[64] = _2081
            mem[_2081] = 32
            _3070 = mem[_2954]
            mem[_2081 + 32] = mem[_2954]
            mem[_2081 + 64 len ceil32(_3070)] = mem[_2954 + 32 len ceil32(_3070)]
            if ceil32(_3070) > _3070:
                mem[_2081 + _3070 + 64] = 0
            return 32, mem[_2081 + 32 len ceil32(_3070) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _1884 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2834 = mem[96]
        mem[_1884 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2834) <= _2834:
            _3600 = mem[64]
            mem[64] = _2834 + _1884 + stor8.length.field_1 + 32
            mem[_2834 + _1884 + stor8.length.field_1 + 32] = 32
            _3746 = mem[_3600]
            mem[_2834 + _1884 + stor8.length.field_1 + 64] = mem[_3600]
            mem[_2834 + _1884 + stor8.length.field_1 + 96 len ceil32(_3746)] = mem[_3600 + 32 len ceil32(_3746)]
            if ceil32(_3746) > _3746:
                mem[_2834 + _1884 + stor8.length.field_1 + _3746 + 96] = 0
            return 32, mem[_2834 + _1884 + stor8.length.field_1 + 64 len ceil32(_3746) + 32]
        mem[_1884 + stor8.length.field_1 + _2834 + 32] = 0
        _3692 = mem[64]
        mem[64] = _2834 + _1884 + stor8.length.field_1 + 32
        mem[_2834 + _1884 + stor8.length.field_1 + 32] = 32
        _3762 = mem[_3692]
        mem[_2834 + _1884 + stor8.length.field_1 + 64] = mem[_3692]
        mem[_2834 + _1884 + stor8.length.field_1 + 96 len ceil32(_3762)] = mem[_3692 + 32 len ceil32(_3762)]
        if ceil32(_3762) > _3762:
            mem[_2834 + _1884 + stor8.length.field_1 + _3762 + 96] = 0
        return 32, mem[_2834 + _1884 + stor8.length.field_1 + 64 len ceil32(_3762) + 32]
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if stor8.length.field_1 <= 0:
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8.length):
                    if 31 < uint255(stor8.length) * 0.5:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor8.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                    mem[128] = 256 * stor8.length.field_8
            else:
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if stor8.length.field_1:
                    if 31 < stor8.length.field_1:
                        mem[128] = uint256(stor8.field_0)
                        idx = 128
                        s = 0
                        while stor8.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                    mem[128] = 256 * stor8.length.field_8
            mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
            if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[192] = Mask(248, 8, stor8.length)
            else:
                if bool(stor8.length) != 1:
                    mem[64] = 1
                    _896 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_896) > _896:
                        mem[_896 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_896) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < uint255(stor8.length) * 0.5:
                    mem[idx + 192] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor8.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor8.length) * 0.5) + 193] = 32
            mem[(uint255(stor8.length) * 0.5) + 225] = mem[160]
            mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[(uint255(stor8.length) * 0.5) + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[(uint255(stor8.length) * 0.5) + 257 len ceil32(mem[160])])
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[192] = Mask(248, 8, stor8.length)
        else:
            if bool(stor8.length) != 1:
                mem[64] = 1
                _898 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_898) > _898:
                    mem[_898 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_898) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + 192] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor8.length.field_1 + 193] = 32
        mem[stor8.length.field_1 + 225] = mem[160]
        mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor8.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1885 = mem[64]
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _2041 = mem[96]
                mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2041) <= _2041:
                    _2875 = mem[64]
                    mem[64] = _2041 + _1885 + (uint255(stor8.length) * 0.5) + 32
                    mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 32] = 32
                    _3039 = mem[_2875]
                    mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 64] = mem[_2875]
                    mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3039)] = mem[_2875 + 32 len ceil32(_3039)]
                    if ceil32(_3039) > _3039:
                        mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + _3039 + 96] = 0
                    return 32, mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3039) + 32]
                mem[_1885 + (uint255(stor8.length) * 0.5) + _2041 + 32] = 0
                _2960 = mem[64]
                mem[64] = _2041 + _1885 + (uint255(stor8.length) * 0.5) + 32
                mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3071 = mem[_2960]
                mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 64] = mem[_2960]
                mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3071)] = mem[_2960 + 32 len ceil32(_3071)]
                if ceil32(_3071) > _3071:
                    mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + _3071 + 96] = 0
                return 32, mem[_2041 + _1885 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3071) + 32]
            if bool(stor8.length) != 1:
                _2065 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2065) <= _2065:
                    _2876 = mem[64]
                    mem[64] = _2065
                    mem[_2065] = 32
                    _3040 = mem[_2876]
                    mem[_2065 + 32] = mem[_2876]
                    mem[_2065 + 64 len ceil32(_3040)] = mem[_2876 + 32 len ceil32(_3040)]
                    if ceil32(_3040) > _3040:
                        mem[_2065 + _3040 + 64] = 0
                    return 32, mem[_2065 + 32 len ceil32(_3040) + 32]
                mem[_2065] = 0
                _2963 = mem[64]
                mem[64] = _2065
                mem[_2065] = 32
                _3072 = mem[_2963]
                mem[_2065 + 32] = mem[_2963]
                mem[_2065 + 64 len ceil32(_3072)] = mem[_2963 + 32 len ceil32(_3072)]
                if ceil32(_3072) > _3072:
                    mem[_2065 + _3072 + 64] = 0
                return 32, mem[_2065 + 32 len ceil32(_3072) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < uint255(stor8.length) * 0.5:
                mem[idx + _1885 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2835 = mem[96]
            mem[_1885 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2835) <= _2835:
                _3605 = mem[64]
                mem[64] = _2835 + _1885 + (uint255(stor8.length) * 0.5) + 32
                mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3747 = mem[_3605]
                mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 64] = mem[_3605]
                mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3747)] = mem[_3605 + 32 len ceil32(_3747)]
                if ceil32(_3747) > _3747:
                    mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + _3747 + 96] = 0
                return 32, mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3747) + 32]
            mem[_1885 + (uint255(stor8.length) * 0.5) + _2835 + 32] = 0
            _3698 = mem[64]
            mem[64] = _2835 + _1885 + (uint255(stor8.length) * 0.5) + 32
            mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 32] = 32
            _3763 = mem[_3698]
            mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 64] = mem[_3698]
            mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3763)] = mem[_3698 + 32 len ceil32(_3763)]
            if ceil32(_3763) > _3763:
                mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + _3763 + 96] = 0
            return 32, mem[_2835 + _1885 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3763) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _2066 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2877 = mem[64]
                mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                mem[mem[96] + _1885 + stor8.length.field_1 + 32] = 32
                _3041 = mem[_2877]
                mem[_2066 + _1885 + stor8.length.field_1 + 64] = mem[_2877]
                mem[_2066 + _1885 + stor8.length.field_1 + 96 len ceil32(_3041)] = mem[_2877 + 32 len ceil32(_3041)]
                if ceil32(_3041) > _3041:
                    mem[_2066 + _1885 + stor8.length.field_1 + _3041 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_3041) + _2066 + _1885 + stor8.length.field_1 + -mem[64] + 96
            mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
            _2965 = mem[64]
            mem[64] = _2066 + _1885 + stor8.length.field_1 + 32
            mem[_2066 + _1885 + stor8.length.field_1 + 32] = 32
            _3073 = mem[_2965]
            mem[_2066 + _1885 + stor8.length.field_1 + 64] = mem[_2965]
            mem[_2066 + _1885 + stor8.length.field_1 + 96 len ceil32(_3073)] = mem[_2965 + 32 len ceil32(_3073)]
            if ceil32(_3073) > _3073:
                mem[_2066 + _1885 + stor8.length.field_1 + _3073 + 96] = 0
            return 32, mem[_2066 + _1885 + stor8.length.field_1 + 64 len ceil32(_3073) + 32]
        if bool(stor8.length) != 1:
            _2083 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2083) <= _2083:
                _2878 = mem[64]
                mem[64] = _2083
                mem[_2083] = 32
                _3042 = mem[_2878]
                mem[_2083 + 32] = mem[_2878]
                mem[_2083 + 64 len ceil32(_3042)] = mem[_2878 + 32 len ceil32(_3042)]
                if ceil32(_3042) > _3042:
                    mem[_2083 + _3042 + 64] = 0
                return 32, mem[_2083 + 32 len ceil32(_3042) + 32]
            mem[_2083] = 0
            _2968 = mem[64]
            mem[64] = _2083
            mem[_2083] = 32
            _3074 = mem[_2968]
            mem[_2083 + 32] = mem[_2968]
            mem[_2083 + 64 len ceil32(_3074)] = mem[_2968 + 32 len ceil32(_3074)]
            if ceil32(_3074) > _3074:
                mem[_2083 + _3074 + 64] = 0
            return 32, mem[_2083 + 32 len ceil32(_3074) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _1885 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2836 = mem[96]
        mem[_1885 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2836) <= _2836:
            _3610 = mem[64]
            mem[64] = _2836 + _1885 + stor8.length.field_1 + 32
            mem[_2836 + _1885 + stor8.length.field_1 + 32] = 32
            _3748 = mem[_3610]
            mem[_2836 + _1885 + stor8.length.field_1 + 64] = mem[_3610]
            mem[_2836 + _1885 + stor8.length.field_1 + 96 len ceil32(_3748)] = mem[_3610 + 32 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_2836 + _1885 + stor8.length.field_1 + _3748 + 96] = 0
            return 32, mem[_2836 + _1885 + stor8.length.field_1 + 64 len ceil32(_3748) + 32]
        mem[_1885 + stor8.length.field_1 + _2836 + 32] = 0
        _3704 = mem[64]
        mem[64] = _2836 + _1885 + stor8.length.field_1 + 32
        mem[_2836 + _1885 + stor8.length.field_1 + 32] = 32
        _3764 = mem[_3704]
        mem[_2836 + _1885 + stor8.length.field_1 + 64] = mem[_3704]
        mem[_2836 + _1885 + stor8.length.field_1 + 96 len ceil32(_3764)] = mem[_3704 + 32 len ceil32(_3764)]
        if ceil32(_3764) > _3764:
            mem[_2836 + _1885 + stor8.length.field_1 + _3764 + 96] = 0
        return 32, mem[_2836 + _1885 + stor8.length.field_1 + 64 len ceil32(_3764) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1886 = mem[64]
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _2043 = mem[96]
            mem[mem[64] + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2043) <= _2043:
                _2879 = mem[64]
                mem[64] = _2043 + _1886 + (uint255(stor8.length) * 0.5) + 32
                mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 32] = 32
                _3043 = mem[_2879]
                mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 64] = mem[_2879]
                mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3043)] = mem[_2879 + 32 len ceil32(_3043)]
                if ceil32(_3043) > _3043:
                    mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + _3043 + 96] = 0
                return 32, mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3043) + 32]
            mem[_1886 + (uint255(stor8.length) * 0.5) + _2043 + 32] = 0
            _2970 = mem[64]
            mem[64] = _2043 + _1886 + (uint255(stor8.length) * 0.5) + 32
            mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 32] = 32
            _3075 = mem[_2970]
            mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 64] = mem[_2970]
            mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3075)] = mem[_2970 + 32 len ceil32(_3075)]
            if ceil32(_3075) > _3075:
                mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + _3075 + 96] = 0
            return 32, mem[_2043 + _1886 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3075) + 32]
        if bool(stor8.length) != 1:
            _2067 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2067) <= _2067:
                _2880 = mem[64]
                mem[64] = _2067
                mem[_2067] = 32
                _3044 = mem[_2880]
                mem[_2067 + 32] = mem[_2880]
                mem[_2067 + 64 len ceil32(_3044)] = mem[_2880 + 32 len ceil32(_3044)]
                if ceil32(_3044) > _3044:
                    mem[_2067 + _3044 + 64] = 0
                return 32, mem[_2067 + 32 len ceil32(_3044) + 32]
            mem[_2067] = 0
            _2973 = mem[64]
            mem[64] = _2067
            mem[_2067] = 32
            _3076 = mem[_2973]
            mem[_2067 + 32] = mem[_2973]
            mem[_2067 + 64 len ceil32(_3076)] = mem[_2973 + 32 len ceil32(_3076)]
            if ceil32(_3076) > _3076:
                mem[_2067 + _3076 + 64] = 0
            return 32, mem[_2067 + 32 len ceil32(_3076) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < uint255(stor8.length) * 0.5:
            mem[idx + _1886 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2837 = mem[96]
        mem[_1886 + (uint255(stor8.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2837) <= _2837:
            _3615 = mem[64]
            mem[64] = _2837 + _1886 + (uint255(stor8.length) * 0.5) + 32
            mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 32] = 32
            _3749 = mem[_3615]
            mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 64] = mem[_3615]
            mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3749)] = mem[_3615 + 32 len ceil32(_3749)]
            if ceil32(_3749) > _3749:
                mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + _3749 + 96] = 0
            return 32, mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3749) + 32]
        mem[_1886 + (uint255(stor8.length) * 0.5) + _2837 + 32] = 0
        _3710 = mem[64]
        mem[64] = _2837 + _1886 + (uint255(stor8.length) * 0.5) + 32
        mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 32] = 32
        _3765 = mem[_3710]
        mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 64] = mem[_3710]
        mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 96 len ceil32(_3765)] = mem[_3710 + 32 len ceil32(_3765)]
        if ceil32(_3765) > _3765:
            mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + _3765 + 96] = 0
        return 32, mem[_2837 + _1886 + (uint255(stor8.length) * 0.5) + 64 len ceil32(_3765) + 32]
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor8.length):
        mem[mem[64] + 32] = Mask(248, 8, stor8.length)
        _2068 = mem[96]
        mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _2881 = mem[64]
            mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
            mem[mem[96] + _1886 + stor8.length.field_1 + 32] = 32
            _3045 = mem[_2881]
            mem[_2068 + _1886 + stor8.length.field_1 + 64] = mem[_2881]
            mem[_2068 + _1886 + stor8.length.field_1 + 96 len ceil32(_3045)] = mem[_2881 + 32 len ceil32(_3045)]
            if ceil32(_3045) > _3045:
                mem[_2068 + _1886 + stor8.length.field_1 + _3045 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_3045) + _2068 + _1886 + stor8.length.field_1 + -mem[64] + 96
        mem[mem[64] + stor8.length.field_1 + mem[96] + 32] = 0
        _2975 = mem[64]
        mem[64] = _2068 + _1886 + stor8.length.field_1 + 32
        mem[_2068 + _1886 + stor8.length.field_1 + 32] = 32
        _3077 = mem[_2975]
        mem[_2068 + _1886 + stor8.length.field_1 + 64] = mem[_2975]
        mem[_2068 + _1886 + stor8.length.field_1 + 96 len ceil32(_3077)] = mem[_2975 + 32 len ceil32(_3077)]
        if ceil32(_3077) > _3077:
            mem[_2068 + _1886 + stor8.length.field_1 + _3077 + 96] = 0
        return 32, mem[_2068 + _1886 + stor8.length.field_1 + 64 len ceil32(_3077) + 32]
    if bool(stor8.length) != 1:
        _2085 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2085) <= _2085:
            _2882 = mem[64]
            mem[64] = _2085
            mem[_2085] = 32
            _3046 = mem[_2882]
            mem[_2085 + 32] = mem[_2882]
            mem[_2085 + 64 len ceil32(_3046)] = mem[_2882 + 32 len ceil32(_3046)]
            if ceil32(_3046) > _3046:
                mem[_2085 + _3046 + 64] = 0
            return 32, mem[_2085 + 32 len ceil32(_3046) + 32]
        mem[_2085] = 0
        _2978 = mem[64]
        mem[64] = _2085
        mem[_2085] = 32
        _3078 = mem[_2978]
        mem[_2085 + 32] = mem[_2978]
        mem[_2085 + 64 len ceil32(_3078)] = mem[_2978 + 32 len ceil32(_3078)]
        if ceil32(_3078) > _3078:
            mem[_2085 + _3078 + 64] = 0
        return 32, mem[_2085 + 32 len ceil32(_3078) + 32]
    mem[0] = 8
    idx = 0
    s = 0
    while idx < stor8.length.field_1:
        mem[idx + _1886 + 32] = stor8[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _2838 = mem[96]
    mem[_1886 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_2838) <= _2838:
        _3620 = mem[64]
        mem[64] = _2838 + _1886 + stor8.length.field_1 + 32
        mem[_2838 + _1886 + stor8.length.field_1 + 32] = 32
        _3750 = mem[_3620]
        mem[_2838 + _1886 + stor8.length.field_1 + 64] = mem[_3620]
        mem[_2838 + _1886 + stor8.length.field_1 + 96 len ceil32(_3750)] = mem[_3620 + 32 len ceil32(_3750)]
        if ceil32(_3750) > _3750:
            mem[_2838 + _1886 + stor8.length.field_1 + _3750 + 96] = 0
        return 32, mem[_2838 + _1886 + stor8.length.field_1 + 64 len ceil32(_3750) + 32]
    mem[_1886 + stor8.length.field_1 + _2838 + 32] = 0
    _3716 = mem[64]
    mem[64] = _2838 + _1886 + stor8.length.field_1 + 32
    mem[_2838 + _1886 + stor8.length.field_1 + 32] = 32
    _3766 = mem[_3716]
    mem[_2838 + _1886 + stor8.length.field_1 + 64] = mem[_3716]
    mem[_2838 + _1886 + stor8.length.field_1 + 96 len ceil32(_3766)] = mem[_3716 + 32 len ceil32(_3766)]
    if ceil32(_3766) > _3766:
        mem[_2838 + _1886 + stor8.length.field_1 + _3766 + 96] = 0
    return 32, mem[_2838 + _1886 + stor8.length.field_1 + 64 len ceil32(_3766) + 32]
}



}
