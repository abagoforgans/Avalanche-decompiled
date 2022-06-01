contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
uint8 stor3;
mapping of uint256 totalSupply;
address owner;
array of struct stor6;
array of struct stor7;
uint256 stor8;
address stor9;
mapping of struct stor11;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function paused() payable {
    return bool(stor3)
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3:
        revert with 0, 'Pausable: paused'
    stor3 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3:
        revert with 0, 'Pausable: not paused'
    stor3 = 0
    emit Unpaused(msg.sender);
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if stor3:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
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
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function sub_91cb5b7a(?) payable {
    require calldata.size - 4 >= 224
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'open window must be before close window'
    if arg1 <= 0:
        revert with 0, 'window cannot be 0'
    if arg2 <= 0:
        revert with 0, 'window cannot be 0'
    stor11[arg6].field_0 = arg1
    stor11[arg6].field_256 = arg2
    stor11[arg6].field_512 = arg3
    if stor11[arg6].field_768:
        if stor11[arg6].field_768 == uint255(stor11[arg6].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor11[arg6][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor11[arg6].field_768 = 0
            idx = 0
            while (uint255(stor11[arg6].field_768) * 0.5) + 31 / 32 > idx:
                stor11[arg6][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[arg6].field_768 == stor11[arg6].field_769 < 32:
            revert with 0, 34
        if arg4.length:
            stor11[arg6][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor11[arg6].field_768 = 0
            idx = 0
            while stor11[arg6].field_769 + 31 / 32 > idx:
                stor11[arg6][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    stor11[arg6].field_1024 = address(arg5)
    stor11[arg6].field_1280 = arg7
}

function sub_03e8128e(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'open window must be before close window'
    if arg1 <= 0:
        revert with 0, 'window cannot be 0'
    if arg2 <= 0:
        revert with 0, 'window cannot be 0'
    stor11[stor8].field_0 = arg1
    stor11[stor8].field_256 = arg2
    stor11[stor8].field_512 = arg3
    if stor11[stor8].field_768:
        if stor11[stor8].field_768 == uint255(stor11[stor8].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor11[stor8][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor11[stor8].field_768 = 0
            idx = 0
            while (uint255(stor11[stor8].field_768) * 0.5) + 31 / 32 > idx:
                stor11[stor8][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor8].field_768 == stor11[stor8].field_769 < 32:
            revert with 0, 34
        if arg4.length:
            stor11[stor8][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor11[stor8].field_768 = 0
            idx = 0
            while stor11[stor8].field_769 + 31 / 32 > idx:
                stor11[stor8][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    stor11[stor8].field_1024 = address(arg5)
    stor11[stor8].field_1280 = arg6
    stor8++
}

function adminMint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > stor11[arg1].field_1280:
        revert with 0, 'Max supply reached'
    if stor11[arg1].field_1280 < arg2:
        revert with 0, 17
    stor11[arg1].field_1280 -= arg2
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[160] = arg1
    mem[192] = 1
    mem[224] = arg2
    if stor3:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 160]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 160]] > !mem[(32 * idx) + 224]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 160]] += mem[(32 * idx) + 224]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 160]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 160]] < mem[(32 * idx) + 224]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 160]] -= mem[(32 * idx) + 224]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg1][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit TransferSingle(arg1, arg2, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit Claimed(arg1, arg2, msg.sender);
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
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if stor3:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
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
        require ext_code.size(arg2)
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

function NFTs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor11[arg1].field_768:
        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_768:
            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_768):
                if 31 >= uint255(stor11[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor11[arg1].field_776
                else:
                    mem[128] = stor11[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                revert with 0, 34
            if stor11[arg1].field_769:
                if 31 >= stor11[arg1].field_769:
                    mem[128] = 256 * stor11[arg1].field_776
                else:
                    mem[128] = stor11[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor11[arg1].field_0, 
               stor11[arg1].field_256,
               stor11[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor11[arg1].field_768), data=mem[128 len ceil32(uint255(stor11[arg1].field_768) * 0.5)]),
               stor11[arg1].field_1024,
               stor11[arg1].field_1280
    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
        revert with 0, 34
    if stor11[arg1].field_768:
        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_768):
            if 31 >= uint255(stor11[arg1].field_768) * 0.5:
                mem[128] = 256 * stor11[arg1].field_776
            else:
                mem[128] = stor11[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
            revert with 0, 34
        if stor11[arg1].field_769:
            if 31 >= stor11[arg1].field_769:
                mem[128] = 256 * stor11[arg1].field_776
            else:
                mem[128] = stor11[arg1][3].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor11[arg1].field_0, 
           stor11[arg1].field_256,
           stor11[arg1].field_512,
           Array(len=stor11[arg1].field_768, data=mem[128 len ceil32(stor11[arg1].field_769)]),
           stor11[arg1].field_1024,
           stor11[arg1].field_1280
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
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
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
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function name_() payable {
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
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
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
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
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
            mem[(uint255(stor7.length) * 0.5) + ceil32(uint255(stor7.length) * 0.5) + 192] = 0
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
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol_() payable {
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
            mem[(uint255(stor7.length) * 0.5) + ceil32(uint255(stor7.length) * 0.5) + 192] = 0
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
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function purchase(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3:
        revert with 0, 'Purchasing is paused'
    if not stor11[arg1].field_0:
        revert with 0, 'That NFT does not exist'
    if block.timestamp <= stor11[arg1].field_0:
        revert with 0, 'Claim: time window closed'
    if block.timestamp >= stor11[arg1].field_256:
        revert with 0, 'Claim: time window closed'
    if arg2 > stor11[arg1].field_1280:
        revert with 0, 'Max supply reached'
    require ext_code.size(stor11[arg1].field_1024)
    staticcall stor11[arg1].field_1024.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor11[arg1].field_512 and arg2 > -1 / stor11[arg1].field_512:
        revert with 0, 17
    if ext_call.return_data[0] < stor11[arg1].field_512 * arg2:
        revert with 0, 'not enough funds approved'
    if stor11[arg1].field_512 and arg2 > -1 / stor11[arg1].field_512:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = stor9
    mem[ceil32(return_data.size) + 164] = stor11[arg1].field_512 * arg2
    require ext_code.size(stor11[arg1].field_1024)
    call stor11[arg1].field_1024.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor9, stor11[arg1].field_512 * arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor11[arg1].field_1280 < arg2:
        revert with 0, 17
    stor11[arg1].field_1280 -= arg2
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[(2 * ceil32(return_data.size)) + 160] = arg1
    mem[(2 * ceil32(return_data.size)) + 192] = 1
    mem[(2 * ceil32(return_data.size)) + 224] = arg2
    if stor3:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] < mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] -= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg1][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit TransferSingle(arg1, arg2, msg.sender, 0, msg.sender);
    if not ext_code.size(msg.sender):
        emit Claimed(arg1, arg2, msg.sender);
    mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    mem[(2 * ceil32(return_data.size)) + 324] = arg1
    mem[(2 * ceil32(return_data.size)) + 356] = arg2
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 420] = 0
    mem[(2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, arg1, arg2, 160, 0
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        mem[(4 * ceil32(return_data.size)) + 256] = arg1
        mem[(4 * ceil32(return_data.size)) + 288] = arg2
        emit Claimed(uint256 arg1, address arg2, uint256 arg3):
                     mem[(4 * ceil32(return_data.size)) + 256 len (5 * ceil32(return_data.size)) + 64],
                     msg.sender,
    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 40
    mem[(4 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
    mem[(4 * ceil32(return_data.size)) + 356] = 'd tokens' << 192
    revert with memory
      from (4 * ceil32(return_data.size)) + 256
       len (5 * ceil32(return_data.size)) + 132
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
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg2.length) + 129
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if stor3:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        if arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
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
            var62001 = arg2.length
            var67001 = arg3.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
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
                mem[32] = 4
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
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if stor3:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        if not arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
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
                mem[32] = 4
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
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
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
            var64001 = arg2.length
            var69001 = arg3.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11[arg1].field_0:
        revert with 0, 'That NFT does not exist'
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor2.length) * 0.5
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor2.length):
                mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1187 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1187) > _1187:
                                    mem[_1187 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1187) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                            mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1251 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(_1251) > _1251:
                                mem[_1251 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1251) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1191 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1191) > _1191:
                                    mem[_1191 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1191) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                            mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1253 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(_1253) > _1253:
                                mem[_1253 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1253) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= uint255(stor2.length) * 0.5:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _1195 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_1195) > _1195:
                                        mem[_1195 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1195) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1257 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1257) > _1257:
                                    mem[_1257 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1257) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _1199 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_1199) > _1199:
                                        mem[_1199 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1199) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1259 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1259) > _1259:
                                    mem[_1259 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1259) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _2327 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_2327) > _2327:
                                        mem[_2327 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2327) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2367 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_2367) > _2367:
                                    mem[_2367 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2367) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _2331 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_2331) > _2331:
                                        mem[_2331 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2331) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2369 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_2369) > _2369:
                                    mem[_2369 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2369) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if not stor2.length.field_1:
                mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1203 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1203) > _1203:
                                    mem[_1203 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1203) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                            mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1261 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(_1261) > _1261:
                                mem[_1261 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1261) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1207 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1207) > _1207:
                                    mem[_1207 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1207) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                            mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1263 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(_1263) > _1263:
                                mem[_1263 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1263) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _1211 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_1211) > _1211:
                                        mem[_1211 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1211) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1267 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1267) > _1267:
                                    mem[_1267 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1267) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _1215 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_1215) > _1215:
                                        mem[_1215 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1215) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1269 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_1269) > _1269:
                                    mem[_1269 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1269) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _2335 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_2335) > _2335:
                                        mem[_2335 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2335) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2387 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_2387) > _2387:
                                    mem[_2387 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2387) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 160] = 0
                        if stor11[arg1].field_768:
                            if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not stor11[arg1].field_768:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                            else:
                                if stor11[arg1].field_768 != 1:
                                    mem[64] = 0
                                    _2339 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                    if ceil32(_2339) > _2339:
                                        mem[_2339 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2339) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor11[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                            if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
                                mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
                        if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2389 = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
                                if ceil32(_2389) > _2389:
                                    mem[_2389 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2389) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor11[arg1].field_769:
                                mem[idx + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + stor11[arg1].field_769 + 160] = 32
        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + stor11[arg1].field_769 + 192] = mem[ceil32(uint255(stor2.length) * 0.5) + 128]
        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + stor11[arg1].field_769 + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])] = mem[ceil32(uint255(stor2.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128]) > mem[ceil32(uint255(stor2.length) * 0.5) + 128]:
            mem[mem[ceil32(uint255(stor2.length) * 0.5) + 128] + ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + stor11[arg1].field_769 + 224] = 0
        return Array(len=mem[ceil32(uint255(stor2.length) * 0.5) + 128], data=mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + stor11[arg1].field_769 + 224 len ceil32(mem[ceil32(uint255(stor2.length) * 0.5) + 128])]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor2.length):
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if stor11[arg1].field_768:
                    if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1219 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1219) > _1219:
                                mem[_1219 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1219) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor11[arg1].field_768) * 0.5:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor11[arg1].field_768:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                else:
                    if stor11[arg1].field_768 != 1:
                        mem[64] = 0
                        _1271 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1271) > _1271:
                            mem[_1271 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1271) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor11[arg1].field_769:
                        mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                if stor11[arg1].field_768:
                    if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1223 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1223) > _1223:
                                mem[_1223 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1223) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor11[arg1].field_768) * 0.5:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor11[arg1].field_768:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                else:
                    if stor11[arg1].field_768 != 1:
                        mem[64] = 0
                        _1273 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1273) > _1273:
                            mem[_1273 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1273) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor11[arg1].field_769:
                        mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= uint255(stor2.length) * 0.5:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1227 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1227) > _1227:
                                    mem[_1227 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1227) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1277 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1277) > _1277:
                                mem[_1277 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1277) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1231 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1231) > _1231:
                                    mem[_1231 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1231) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1279 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1279) > _1279:
                                mem[_1279 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1279) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2343 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2343) > _2343:
                                    mem[_2343 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2343) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _2407 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2407) > _2407:
                                mem[_2407 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2407) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2347 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2347) > _2347:
                                    mem[_2347 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2347) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _2409 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2409) > _2409:
                                mem[_2409 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2409) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if not stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if stor11[arg1].field_768:
                    if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1235 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1235) > _1235:
                                mem[_1235 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1235) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor11[arg1].field_768) * 0.5:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor11[arg1].field_768:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                else:
                    if stor11[arg1].field_768 != 1:
                        mem[64] = 0
                        _1281 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1281) > _1281:
                            mem[_1281 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1281) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor11[arg1].field_769:
                        mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                if stor11[arg1].field_768:
                    if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1239 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1239) > _1239:
                                mem[_1239 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1239) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor11[arg1].field_768) * 0.5:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor11[arg1].field_768:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                else:
                    if stor11[arg1].field_768 != 1:
                        mem[64] = 0
                        _1283 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1283) > _1283:
                            mem[_1283 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1283) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor11[arg1].field_769:
                        mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1243 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1243) > _1243:
                                    mem[_1243 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1243) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1287 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1287) > _1287:
                                mem[_1287 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1287) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _1247 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1247) > _1247:
                                    mem[_1247 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1247) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _1289 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1289) > _1289:
                                mem[_1289 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1289) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2351 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2351) > _2351:
                                    mem[_2351 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2351) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _2427 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2427) > _2427:
                                mem[_2427 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2427) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 160] = 0
                    if stor11[arg1].field_768:
                        if stor11[arg1].field_768 == uint255(stor11[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor11[arg1].field_768:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                        else:
                            if stor11[arg1].field_768 != 1:
                                mem[64] = 0
                                _2355 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2355) > _2355:
                                    mem[_2355 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2355) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor11[arg1].field_768) * 0.5:
                                mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + (uint255(stor11[arg1].field_768) * 0.5) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor11[arg1].field_768 == stor11[arg1].field_769 < 32:
                        revert with 0, 34
                    if not stor11[arg1].field_768:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor11[arg1].field_768)
                    else:
                        if stor11[arg1].field_768 != 1:
                            mem[64] = 0
                            _2429 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2429) > _2429:
                                mem[_2429 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2429) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_769:
                            mem[idx + ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = stor11[arg1][s + 3].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor11[arg1].field_769 + 160] = 32
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor11[arg1].field_769 + 192] = mem[ceil32(stor2.length.field_1) + 128]
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor11[arg1].field_769 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
        mem[mem[ceil32(stor2.length.field_1) + 128] + ceil32(stor2.length.field_1) + stor2.length.field_1 + stor11[arg1].field_769 + 224] = 0
    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor11[arg1].field_769 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
}



}
