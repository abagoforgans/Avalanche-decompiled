contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint256 totalSupply;
address owner;
array of uint256 stor5;
array of struct stor6;
array of struct stor7;
address treasuryWalletAddress;
address stor9;
mapping of uint8 stor10;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function owner() payable {
    return owner
}

function sub_8ea40588(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (totalSupply[arg1] > 0)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_adce0561(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
}

function sub_26ef7612(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[arg1] = 1
    emit 0x464a2fbd: arg1
}

function setTreasuryWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryWalletAddress = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 300 > -1 / arg2:
        revert with 'NH{q', 17
    return treasuryWalletAddress, 300 * arg2 / 10000
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
    if Mask(32, 224, arg1) == *U Z:
        return True
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_3b0ec042(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor9 != msg.sender:
        revert with 0, 'Invalid burner address'
    if not stor10[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only light crystals are supported'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = arg1
    mem[160] = 1
    mem[192] = 1
    mem[224] = 0
    if not address(arg2):
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + 192] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if balanceOf[arg1][address(arg2)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(arg2)]--
    emit TransferSingle(arg1, 1, msg.sender, address(arg2), 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function updateBaseUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[ceil32(ceil32(arg1.length)) + 97] = Mask(248, 8, stor5.length)
            emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len stor5.length.field_1]));
        else:
            if bool(stor5.length) != 1:
                emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len -ceil32(ceil32(arg1.length)) - 97]));
            else:
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + idx + 97] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len stor5.length.field_1]));
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[ceil32(ceil32(arg1.length)) + 97] = Mask(248, 8, stor5.length)
            emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len stor5.length.field_1]));
        else:
            if bool(stor5.length) != 1:
                emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len -ceil32(ceil32(arg1.length)) - 97]));
            else:
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + idx + 97] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit SetBaseURI(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len stor5.length.field_1]));
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > -mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
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

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
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

function mintBatch(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = 0
    if not owner:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg1.length) + 129] - 1:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if owner:
        idx = 0
        while idx < arg1.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = owner
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][stor4] > -mem[(32 * idx) + floor32(arg1.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][stor4] += mem[(32 * idx) + floor32(arg1.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg1.length) + floor32(arg2.length) + 130] = 64
        mem[floor32(arg1.length) + floor32(arg2.length) + 194] = arg1.length
        mem[floor32(arg1.length) + floor32(arg2.length) + 226 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        mem[floor32(arg1.length) + floor32(arg2.length) + 162] = (32 * arg1.length) + 96
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 226] = arg2.length
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 258 len 32 * arg2.length] = mem[floor32(arg1.length) + 129 len 32 * arg2.length]
        emit TransferBatch(Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 226 len (32 * arg1.length) + (32 * arg2.length) + 32]), (32 * arg1.length) + 96, msg.sender, 0, owner);
        if ext_code.size(owner) <= 0:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg1.length) + floor32(arg2.length) + 134] = msg.sender
        mem[floor32(arg1.length) + floor32(arg2.length) + 166] = 0
        mem[floor32(arg1.length) + floor32(arg2.length) + 198] = 160
        mem[floor32(arg1.length) + floor32(arg2.length) + 294] = arg1.length
        mem[floor32(arg1.length) + floor32(arg2.length) + 326 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        mem[floor32(arg1.length) + floor32(arg2.length) + 230] = (32 * arg1.length) + 192
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 326] = arg2.length
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 358 len 32 * arg2.length] = mem[floor32(arg1.length) + 129 len 32 * arg2.length]
        mem[floor32(arg1.length) + floor32(arg2.length) + 262] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 358] = 0
        mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 390 len 0] = None
        require ext_code.size(owner)
        call owner.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg1.length, mem[floor32(arg1.length) + floor32(arg2.length) + 326 len (32 * arg1.length) + (32 * arg2.length) + 32], 0
        mem[floor32(arg1.length) + floor32(arg2.length) + 130] = ext_call.return_data[0]
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
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
            revert with 'NH{q', 65
        mem[64] = floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
        if not floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130:
            mem[floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1423 = floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
        mem[floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1435 = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 36] = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 68 len ceil32(_1435)] = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 162 len ceil32(_1435)]
        if ceil32(_1435) <= _1435:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1435) + 32]
        mem[mem[64] + _1435 + 68] = 0
        revert with memory
          from mem[64]
           len _1423 + ceil32(_1435) + -mem[64] + 68
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = owner
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][stor4] > -mem[(32 * idx) + floor32(arg1.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][stor4] += mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg1.length) + floor32(arg2.length) + 130] = 64
    mem[floor32(arg1.length) + floor32(arg2.length) + 194] = arg1.length
    mem[floor32(arg1.length) + floor32(arg2.length) + 226 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    mem[floor32(arg1.length) + floor32(arg2.length) + 162] = (32 * arg1.length) + 96
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 226] = arg2.length
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 258 len 32 * arg2.length] = mem[floor32(arg1.length) + 129 len 32 * arg2.length]
    emit TransferBatch(Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 226 len (32 * arg1.length) + (32 * arg2.length) + 32]), (32 * arg1.length) + 96, msg.sender, 0, owner);
    if ext_code.size(owner) <= 0:
    mem[floor32(arg1.length) + floor32(arg2.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + floor32(arg2.length) + 134] = msg.sender
    mem[floor32(arg1.length) + floor32(arg2.length) + 166] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + 198] = 160
    mem[floor32(arg1.length) + floor32(arg2.length) + 294] = arg1.length
    mem[floor32(arg1.length) + floor32(arg2.length) + 326 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    mem[floor32(arg1.length) + floor32(arg2.length) + 230] = (32 * arg1.length) + 192
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 326] = arg2.length
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 358 len 32 * arg2.length] = mem[floor32(arg1.length) + 129 len 32 * arg2.length]
    mem[floor32(arg1.length) + floor32(arg2.length) + 262] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 358] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + (32 * arg2.length) + 390 len 0] = None
    require ext_code.size(owner)
    call owner.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg1.length, mem[floor32(arg1.length) + floor32(arg2.length) + 326 len (32 * arg1.length) + (32 * arg2.length) + 32], 0
    mem[floor32(arg1.length) + floor32(arg2.length) + 130] = ext_call.return_data[0]
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
    mem[floor32(arg1.length) + floor32(arg2.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
    if not floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130:
        mem[floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1524 = floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131
    mem[floor32(arg1.length) + floor32(arg2.length) + floor32(ext_call.return_data[0] + mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1530 = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 36] = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 68 len ceil32(_1530)] = mem[floor32(arg1.length) + floor32(arg2.length) + ext_call.return_data[0] + 162 len ceil32(_1530)]
    if ceil32(_1530) <= _1530:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1530) + 32]
    mem[mem[64] + _1530 + 68] = 0
    revert with memory
      from mem[64]
       len _1524 + ceil32(_1530) + -mem[64] + 68
}

function sub_f473b32c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10[cd[36]]:
        revert with 0, 'TheSpotPFP: Invalid drop type'
    if cd[68] and ('cd', 4).length > -1 / cd[68]:
        revert with 'NH{q', 17
    if not owner:
        revert with 0, 'ERC1155: balance query for the zero address'
    mem[0] = owner
    mem[32] = sha3(cd[36], 0)
    if balanceOf[cd[36]][stor4] < cd[68] * ('cd', 4).length:
        revert with 0, 'TheSpotPFP: Not enough to airdrop'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1243 = mem[(32 * idx) + 128]
        _1244 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1244] = 0
        if owner == msg.sender:
            if not address(_1243):
                revert with 0, 'ERC1155: transfer to the zero address'
            _1249 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_1249]:
                revert with 'NH{q', 50
            mem[_1249 + 32] = cd[36]
            mem[_1249 + 64] = 1
            mem[64] = _1249 + 128
            mem[_1249 + 96] = cd[68]
            if owner:
                if address(_1243):
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1249 + 128] = cd[36]
                    mem[_1249 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1249 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1249 + 132] = msg.sender
                        mem[_1249 + 164] = owner
                        mem[_1249 + 196] = cd[36]
                        mem[_1249 + 228] = cd[68]
                        mem[_1249 + 260] = 160
                        mem[_1249 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1249 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, 0
                        mem[_1249 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1249 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _1849 = mem[_1249]
                    s = 0
                    while s < _1849:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1249]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1249 + 32]
                        mem[32] = 3
                        if totalSupply[mem[0]] < mem[(32 * s) + _1249 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1249 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _1849 = mem[_1249]
                        s = s + 1
                        continue 
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1249 + 128] = cd[36]
                    mem[_1249 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1249 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1249 + 132] = msg.sender
                        mem[_1249 + 164] = owner
                        mem[_1249 + 196] = cd[36]
                        mem[_1249 + 228] = cd[68]
                        mem[_1249 + 260] = 160
                        _2061 = mem[_1244]
                        mem[_1249 + 292] = mem[_1244]
                        s = 0
                        while s < _2061:
                            mem[_1249 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2061) > _2061:
                            mem[_1249 + _2061 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1249 + 292 len ceil32(_2061) + 32]
                        mem[_1249 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1249 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _1850 = mem[_1249]
                s = 0
                while s < _1850:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_1249]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _1249 + 32]
                    mem[32] = 3
                    if totalSupply[mem[0]] > -mem[(32 * s) + _1249 + 96] - 1:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] += mem[(32 * s) + _1249 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    _1850 = mem[_1249]
                    s = s + 1
                    continue 
                if address(_1243):
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1249 + 128] = cd[36]
                    mem[_1249 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1249 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1249 + 132] = msg.sender
                        mem[_1249 + 164] = owner
                        mem[_1249 + 196] = cd[36]
                        mem[_1249 + 228] = cd[68]
                        mem[_1249 + 260] = 160
                        _2066 = mem[_1244]
                        mem[_1249 + 292] = mem[_1244]
                        s = 0
                        while s < _2066:
                            mem[_1249 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2066) > _2066:
                            mem[_1249 + _2066 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1249 + 292 len ceil32(_2066) + 32]
                        mem[_1249 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1249 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _2413 = mem[_1249]
                    s = 0
                    while s < _2413:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1249]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1249 + 32]
                        mem[32] = 3
                        if totalSupply[mem[0]] < mem[(32 * s) + _1249 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1249 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _2413 = mem[_1249]
                        s = s + 1
                        continue 
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1249 + 128] = cd[36]
                    mem[_1249 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1249 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1249 + 132] = msg.sender
                        mem[_1249 + 164] = owner
                        mem[_1249 + 196] = cd[36]
                        mem[_1249 + 228] = cd[68]
                        mem[_1249 + 260] = 160
                        _2679 = mem[_1244]
                        mem[_1249 + 292] = mem[_1244]
                        s = 0
                        while s < _2679:
                            mem[_1249 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2679) > _2679:
                            mem[_1249 + _2679 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1249 + 292 len ceil32(_2679) + 32]
                        mem[_1249 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1249 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[0] = msg.sender
            mem[32] = sha3(owner, 1)
            if not stor1[stor4][address(msg.sender)]:
                revert with 0, 'ERC1155: caller is not owner nor approved'
            if not address(_1243):
                revert with 0, 'ERC1155: transfer to the zero address'
            _1253 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_1253]:
                revert with 'NH{q', 50
            mem[_1253 + 32] = cd[36]
            mem[_1253 + 64] = 1
            mem[64] = _1253 + 128
            mem[_1253 + 96] = cd[68]
            if owner:
                if address(_1243):
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1253 + 128] = cd[36]
                    mem[_1253 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1253 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1253 + 132] = msg.sender
                        mem[_1253 + 164] = owner
                        mem[_1253 + 196] = cd[36]
                        mem[_1253 + 228] = cd[68]
                        mem[_1253 + 260] = 160
                        mem[_1253 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1253 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, 0
                        mem[_1253 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1253 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _1851 = mem[_1253]
                    s = 0
                    while s < _1851:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1253]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1253 + 32]
                        mem[32] = 3
                        if totalSupply[mem[0]] < mem[(32 * s) + _1253 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1253 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _1851 = mem[_1253]
                        s = s + 1
                        continue 
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1253 + 128] = cd[36]
                    mem[_1253 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1253 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1253 + 132] = msg.sender
                        mem[_1253 + 164] = owner
                        mem[_1253 + 196] = cd[36]
                        mem[_1253 + 228] = cd[68]
                        mem[_1253 + 260] = 160
                        _2064 = mem[_1244]
                        mem[_1253 + 292] = mem[_1244]
                        s = 0
                        while s < _2064:
                            mem[_1253 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2064) > _2064:
                            mem[_1253 + _2064 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1253 + 292 len ceil32(_2064) + 32]
                        mem[_1253 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1253 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _1852 = mem[_1253]
                s = 0
                while s < _1852:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_1253]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _1253 + 32]
                    mem[32] = 3
                    if totalSupply[mem[0]] > -mem[(32 * s) + _1253 + 96] - 1:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] += mem[(32 * s) + _1253 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    _1852 = mem[_1253]
                    s = s + 1
                    continue 
                if address(_1243):
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1253 + 128] = cd[36]
                    mem[_1253 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1253 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1253 + 132] = msg.sender
                        mem[_1253 + 164] = owner
                        mem[_1253 + 196] = cd[36]
                        mem[_1253 + 228] = cd[68]
                        mem[_1253 + 260] = 160
                        _2068 = mem[_1244]
                        mem[_1253 + 292] = mem[_1244]
                        s = 0
                        while s < _2068:
                            mem[_1253 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2068) > _2068:
                            mem[_1253 + _2068 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1253 + 292 len ceil32(_2068) + 32]
                        mem[_1253 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1253 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _2414 = mem[_1253]
                    s = 0
                    while s < _2414:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1253]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1253 + 32]
                        mem[32] = 3
                        if totalSupply[mem[0]] < mem[(32 * s) + _1253 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1253 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _2414 = mem[_1253]
                        s = s + 1
                        continue 
                    if balanceOf[cd[36]][stor4] < cd[68]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[36]][stor4] -= cd[68]
                    mem[0] = address(_1243)
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(_1243)] > -cd[68] - 1:
                        revert with 'NH{q', 17
                    balanceOf[cd[36]][address(_1243)] += cd[68]
                    mem[_1253 + 128] = cd[36]
                    mem[_1253 + 160] = cd[68]
                    emit TransferSingle(cd[36], cd[68], msg.sender, owner, address(_1243));
                    if ext_code.size(address(_1243)) > 0:
                        mem[_1253 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_1253 + 132] = msg.sender
                        mem[_1253 + 164] = owner
                        mem[_1253 + 196] = cd[36]
                        mem[_1253 + 228] = cd[68]
                        mem[_1253 + 260] = 160
                        _2684 = mem[_1244]
                        mem[_1253 + 292] = mem[_1244]
                        s = 0
                        while s < _2684:
                            mem[_1253 + s + 324] = mem[_1244 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2684) > _2684:
                            mem[_1253 + _2684 + 324] = 0
                        require ext_code.size(address(_1243))
                        call address(_1243).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, owner, cd[36], cd[68], 160, mem[_1253 + 292 len ceil32(_2684) + 32]
                        mem[_1253 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _1253 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    if not stor10[arg1]:
        revert with 0, 'TheSpotDrops: Invalid drop type'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor5.length):
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor5.length):
                    mem[192] = Mask(248, 8, stor5.length)
                else:
                    if bool(stor5.length) != 1:
                        mem[64] = 6
                        _261 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_261) > _261:
                            mem[_261 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_261) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor5.length.field_1:
                        mem[idx + 192] = stor5[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor5.length.field_1 + 192] = '0'
                mem[stor5.length.field_1 + 193] = '.json'
                mem[stor5.length.field_1 + 198] = 32
                mem[stor5.length.field_1 + 230] = mem[160]
                mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor5.length.field_1 + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[192] = Mask(248, 8, stor5.length)
            else:
                if bool(stor5.length) != 1:
                    mem[64] = 6
                    _263 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_263) > _263:
                        mem[_263 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_263) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[idx + 192] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor5.length.field_1 + 192] = '0'
            mem[stor5.length.field_1 + 193] = '.json'
            mem[stor5.length.field_1 + 198] = 32
            mem[stor5.length.field_1 + 230] = mem[160]
            mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor5.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _732 = mem[64]
            if bool(stor5.length):
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor5.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                    _792 = mem[96]
                    mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_732 + stor5.length.field_1 + _792 + 32] = '.json'
                    if ceil32(_792) <= _792:
                        _1212 = mem[64]
                        mem[64] = _732 + stor5.length.field_1 + _792 + 37
                        mem[_732 + stor5.length.field_1 + _792 + 37] = 32
                        _1284 = mem[_1212]
                        mem[_732 + stor5.length.field_1 + _792 + 69] = mem[_1212]
                        mem[_732 + stor5.length.field_1 + _792 + 101 len ceil32(_1284)] = mem[_1212 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_732 + stor5.length.field_1 + _792 + _1284 + 101] = 0
                        return 32, mem[_732 + stor5.length.field_1 + _792 + 69 len ceil32(_1284) + 32]
                    _1236 = mem[64]
                    mem[64] = _732 + stor5.length.field_1 + _792 + 37
                    mem[_732 + stor5.length.field_1 + _792 + 37] = 32
                    _1300 = mem[_1236]
                    mem[_732 + stor5.length.field_1 + _792 + 69] = mem[_1236]
                    mem[_732 + stor5.length.field_1 + _792 + 101 len ceil32(_1300)] = mem[_1236 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_732 + stor5.length.field_1 + _792 + _1300 + 101] = 0
                    return 32, mem[_732 + stor5.length.field_1 + _792 + 69 len ceil32(_1300) + 32]
                if bool(stor5.length) != 1:
                    _800 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_800] = '.json'
                    if ceil32(_800) <= _800:
                        _1214 = mem[64]
                        mem[64] = _800 + 5
                        mem[_800 + 5] = 32
                        _1285 = mem[_1214]
                        mem[_800 + 37] = mem[_1214]
                        mem[_800 + 69 len ceil32(_1285)] = mem[_1214 + 32 len ceil32(_1285)]
                        if ceil32(_1285) > _1285:
                            mem[_800 + _1285 + 69] = 0
                        return 32, mem[_800 + 37 len ceil32(_1285) + 32]
                    _1237 = mem[64]
                    mem[64] = _800 + 5
                    mem[_800 + 5] = 32
                    _1301 = mem[_1237]
                    mem[_800 + 37] = mem[_1237]
                    mem[_800 + 69 len ceil32(_1301)] = mem[_1237 + 32 len ceil32(_1301)]
                    if ceil32(_1301) > _1301:
                        mem[_800 + _1301 + 69] = 0
                    return 32, mem[_800 + 37 len ceil32(_1301) + 32]
                mem[0] = 5
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[_732 + idx + 32] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1188 = mem[96]
                mem[_732 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + stor5.length.field_1 + _1188 + 32] = '.json'
                if ceil32(_1188) <= _1188:
                    _1612 = mem[64]
                    mem[64] = _732 + stor5.length.field_1 + _1188 + 37
                    mem[_732 + stor5.length.field_1 + _1188 + 37] = 32
                    _1644 = mem[_1612]
                    mem[_732 + stor5.length.field_1 + _1188 + 69] = mem[_1612]
                    mem[_732 + stor5.length.field_1 + _1188 + 101 len ceil32(_1644)] = mem[_1612 + 32 len ceil32(_1644)]
                    if ceil32(_1644) > _1644:
                        mem[_732 + stor5.length.field_1 + _1188 + _1644 + 101] = 0
                    return 32, mem[_732 + stor5.length.field_1 + _1188 + 69 len ceil32(_1644) + 32]
                _1620 = mem[64]
                mem[64] = _732 + stor5.length.field_1 + _1188 + 37
                mem[_732 + stor5.length.field_1 + _1188 + 37] = 32
                _1652 = mem[_1620]
                mem[_732 + stor5.length.field_1 + _1188 + 69] = mem[_1620]
                mem[_732 + stor5.length.field_1 + _1188 + 101 len ceil32(_1652)] = mem[_1620 + 32 len ceil32(_1652)]
                if ceil32(_1652) > _1652:
                    mem[_732 + stor5.length.field_1 + _1188 + _1652 + 101] = 0
                return 32, mem[_732 + stor5.length.field_1 + _1188 + 69 len ceil32(_1652) + 32]
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _801 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + stor5.length.field_1 + _801 + 32] = '.json'
                if ceil32(_801) <= _801:
                    _1215 = mem[64]
                    mem[64] = _732 + stor5.length.field_1 + _801 + 37
                    mem[_732 + stor5.length.field_1 + _801 + 37] = 32
                    _1286 = mem[_1215]
                    mem[_732 + stor5.length.field_1 + _801 + 69] = mem[_1215]
                    mem[_732 + stor5.length.field_1 + _801 + 101 len ceil32(_1286)] = mem[_1215 + 32 len ceil32(_1286)]
                    if ceil32(_1286) > _1286:
                        mem[_732 + stor5.length.field_1 + _801 + _1286 + 101] = 0
                    return 32, mem[_732 + stor5.length.field_1 + _801 + 69 len ceil32(_1286) + 32]
                _1238 = mem[64]
                mem[64] = _732 + stor5.length.field_1 + _801 + 37
                mem[_732 + stor5.length.field_1 + _801 + 37] = 32
                _1302 = mem[_1238]
                mem[_732 + stor5.length.field_1 + _801 + 69] = mem[_1238]
                mem[_732 + stor5.length.field_1 + _801 + 101 len ceil32(_1302)] = mem[_1238 + 32 len ceil32(_1302)]
                if ceil32(_1302) > _1302:
                    mem[_732 + stor5.length.field_1 + _801 + _1302 + 101] = 0
                return 32, mem[_732 + stor5.length.field_1 + _801 + 69 len ceil32(_1302) + 32]
            if bool(stor5.length) != 1:
                _812 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_812] = '.json'
                if ceil32(_812) <= _812:
                    _1217 = mem[64]
                    mem[64] = _812 + 5
                    mem[_812 + 5] = 32
                    _1287 = mem[_1217]
                    mem[_812 + 37] = mem[_1217]
                    mem[_812 + 69 len ceil32(_1287)] = mem[_1217 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_812 + _1287 + 69] = 0
                    return 32, mem[_812 + 37 len ceil32(_1287) + 32]
                _1239 = mem[64]
                mem[64] = _812 + 5
                mem[_812 + 5] = 32
                _1303 = mem[_1239]
                mem[_812 + 37] = mem[_1239]
                mem[_812 + 69 len ceil32(_1303)] = mem[_1239 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_812 + _1303 + 69] = 0
                return 32, mem[_812 + 37 len ceil32(_1303) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_732 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + stor5.length.field_1 + _1189 + 32] = '.json'
            if ceil32(_1189) <= _1189:
                _1613 = mem[64]
                mem[64] = _732 + stor5.length.field_1 + _1189 + 37
                mem[_732 + stor5.length.field_1 + _1189 + 37] = 32
                _1645 = mem[_1613]
                mem[_732 + stor5.length.field_1 + _1189 + 69] = mem[_1613]
                mem[_732 + stor5.length.field_1 + _1189 + 101 len ceil32(_1645)] = mem[_1613 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_732 + stor5.length.field_1 + _1189 + _1645 + 101] = 0
                return 32, mem[_732 + stor5.length.field_1 + _1189 + 69 len ceil32(_1645) + 32]
            _1621 = mem[64]
            mem[64] = _732 + stor5.length.field_1 + _1189 + 37
            mem[_732 + stor5.length.field_1 + _1189 + 37] = 32
            _1653 = mem[_1621]
            mem[_732 + stor5.length.field_1 + _1189 + 69] = mem[_1621]
            mem[_732 + stor5.length.field_1 + _1189 + 101 len ceil32(_1653)] = mem[_1621 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_732 + stor5.length.field_1 + _1189 + _1653 + 101] = 0
            return 32, mem[_732 + stor5.length.field_1 + _1189 + 69 len ceil32(_1653) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _793 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_733 + stor5.length.field_1 + _793 + 32] = '.json'
                if ceil32(_793) <= _793:
                    _1218 = mem[64]
                    mem[64] = _733 + stor5.length.field_1 + _793 + 37
                    mem[_733 + stor5.length.field_1 + _793 + 37] = 32
                    _1288 = mem[_1218]
                    mem[_733 + stor5.length.field_1 + _793 + 69] = mem[_1218]
                    mem[_733 + stor5.length.field_1 + _793 + 101 len ceil32(_1288)] = mem[_1218 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_733 + stor5.length.field_1 + _793 + _1288 + 101] = 0
                    return 32, mem[_733 + stor5.length.field_1 + _793 + 69 len ceil32(_1288) + 32]
                _1240 = mem[64]
                mem[64] = _733 + stor5.length.field_1 + _793 + 37
                mem[_733 + stor5.length.field_1 + _793 + 37] = 32
                _1304 = mem[_1240]
                mem[_733 + stor5.length.field_1 + _793 + 69] = mem[_1240]
                mem[_733 + stor5.length.field_1 + _793 + 101 len ceil32(_1304)] = mem[_1240 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_733 + stor5.length.field_1 + _793 + _1304 + 101] = 0
                return 32, mem[_733 + stor5.length.field_1 + _793 + 69 len ceil32(_1304) + 32]
            if bool(stor5.length) != 1:
                _802 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_802] = '.json'
                if ceil32(_802) <= _802:
                    _1220 = mem[64]
                    mem[64] = _802 + 5
                    mem[_802 + 5] = 32
                    _1289 = mem[_1220]
                    mem[_802 + 37] = mem[_1220]
                    mem[_802 + 69 len ceil32(_1289)] = mem[_1220 + 32 len ceil32(_1289)]
                    if ceil32(_1289) > _1289:
                        mem[_802 + _1289 + 69] = 0
                    return 32, mem[_802 + 37 len ceil32(_1289) + 32]
                _1241 = mem[64]
                mem[64] = _802 + 5
                mem[_802 + 5] = 32
                _1305 = mem[_1241]
                mem[_802 + 37] = mem[_1241]
                mem[_802 + 69 len ceil32(_1305)] = mem[_1241 + 32 len ceil32(_1305)]
                if ceil32(_1305) > _1305:
                    mem[_802 + _1305 + 69] = 0
                return 32, mem[_802 + 37 len ceil32(_1305) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_733 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1190 = mem[96]
            mem[_733 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + stor5.length.field_1 + _1190 + 32] = '.json'
            if ceil32(_1190) <= _1190:
                _1614 = mem[64]
                mem[64] = _733 + stor5.length.field_1 + _1190 + 37
                mem[_733 + stor5.length.field_1 + _1190 + 37] = 32
                _1646 = mem[_1614]
                mem[_733 + stor5.length.field_1 + _1190 + 69] = mem[_1614]
                mem[_733 + stor5.length.field_1 + _1190 + 101 len ceil32(_1646)] = mem[_1614 + 32 len ceil32(_1646)]
                if ceil32(_1646) > _1646:
                    mem[_733 + stor5.length.field_1 + _1190 + _1646 + 101] = 0
                return 32, mem[_733 + stor5.length.field_1 + _1190 + 69 len ceil32(_1646) + 32]
            _1622 = mem[64]
            mem[64] = _733 + stor5.length.field_1 + _1190 + 37
            mem[_733 + stor5.length.field_1 + _1190 + 37] = 32
            _1654 = mem[_1622]
            mem[_733 + stor5.length.field_1 + _1190 + 69] = mem[_1622]
            mem[_733 + stor5.length.field_1 + _1190 + 101 len ceil32(_1654)] = mem[_1622 + 32 len ceil32(_1654)]
            if ceil32(_1654) > _1654:
                mem[_733 + stor5.length.field_1 + _1190 + _1654 + 101] = 0
            return 32, mem[_733 + stor5.length.field_1 + _1190 + 69 len ceil32(_1654) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _803 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + stor5.length.field_1 + _803 + 32] = '.json'
            if ceil32(_803) <= _803:
                _1221 = mem[64]
                mem[64] = _733 + stor5.length.field_1 + _803 + 37
                mem[_733 + stor5.length.field_1 + _803 + 37] = 32
                _1290 = mem[_1221]
                mem[_733 + stor5.length.field_1 + _803 + 69] = mem[_1221]
                mem[_733 + stor5.length.field_1 + _803 + 101 len ceil32(_1290)] = mem[_1221 + 32 len ceil32(_1290)]
                if ceil32(_1290) > _1290:
                    mem[_733 + stor5.length.field_1 + _803 + _1290 + 101] = 0
                return 32, mem[_733 + stor5.length.field_1 + _803 + 69 len ceil32(_1290) + 32]
            _1242 = mem[64]
            mem[64] = _733 + stor5.length.field_1 + _803 + 37
            mem[_733 + stor5.length.field_1 + _803 + 37] = 32
            _1306 = mem[_1242]
            mem[_733 + stor5.length.field_1 + _803 + 69] = mem[_1242]
            mem[_733 + stor5.length.field_1 + _803 + 101 len ceil32(_1306)] = mem[_1242 + 32 len ceil32(_1306)]
            if ceil32(_1306) > _1306:
                mem[_733 + stor5.length.field_1 + _803 + _1306 + 101] = 0
            return 32, mem[_733 + stor5.length.field_1 + _803 + 69 len ceil32(_1306) + 32]
        if bool(stor5.length) != 1:
            _813 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_813] = '.json'
            if ceil32(_813) <= _813:
                _1223 = mem[64]
                mem[64] = _813 + 5
                mem[_813 + 5] = 32
                _1291 = mem[_1223]
                mem[_813 + 37] = mem[_1223]
                mem[_813 + 69 len ceil32(_1291)] = mem[_1223 + 32 len ceil32(_1291)]
                if ceil32(_1291) > _1291:
                    mem[_813 + _1291 + 69] = 0
                return 32, mem[_813 + 37 len ceil32(_1291) + 32]
            _1243 = mem[64]
            mem[64] = _813 + 5
            mem[_813 + 5] = 32
            _1307 = mem[_1243]
            mem[_813 + 37] = mem[_1243]
            mem[_813 + 69 len ceil32(_1307)] = mem[_1243 + 32 len ceil32(_1307)]
            if ceil32(_1307) > _1307:
                mem[_813 + _1307 + 69] = 0
            return 32, mem[_813 + 37 len ceil32(_1307) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_733 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1191 = mem[96]
        mem[_733 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor5.length.field_1 + _1191 + 32] = '.json'
        if ceil32(_1191) <= _1191:
            _1615 = mem[64]
            mem[64] = _733 + stor5.length.field_1 + _1191 + 37
            mem[_733 + stor5.length.field_1 + _1191 + 37] = 32
            _1647 = mem[_1615]
            mem[_733 + stor5.length.field_1 + _1191 + 69] = mem[_1615]
            mem[_733 + stor5.length.field_1 + _1191 + 101 len ceil32(_1647)] = mem[_1615 + 32 len ceil32(_1647)]
            if ceil32(_1647) > _1647:
                mem[_733 + stor5.length.field_1 + _1191 + _1647 + 101] = 0
            return 32, mem[_733 + stor5.length.field_1 + _1191 + 69 len ceil32(_1647) + 32]
        _1623 = mem[64]
        mem[64] = _733 + stor5.length.field_1 + _1191 + 37
        mem[_733 + stor5.length.field_1 + _1191 + 37] = 32
        _1655 = mem[_1623]
        mem[_733 + stor5.length.field_1 + _1191 + 69] = mem[_1623]
        mem[_733 + stor5.length.field_1 + _1191 + 101 len ceil32(_1655)] = mem[_1623 + 32 len ceil32(_1655)]
        if ceil32(_1655) > _1655:
            mem[_733 + stor5.length.field_1 + _1191 + _1655 + 101] = 0
        return 32, mem[_733 + stor5.length.field_1 + _1191 + 69 len ceil32(_1655) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if stor5.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[192] = Mask(248, 8, stor5.length)
            else:
                if bool(stor5.length) != 1:
                    mem[64] = 6
                    _265 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_265) > _265:
                        mem[_265 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_265) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[idx + 192] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor5.length.field_1 + 192] = '0'
            mem[stor5.length.field_1 + 193] = '.json'
            mem[stor5.length.field_1 + 198] = 32
            mem[stor5.length.field_1 + 230] = mem[160]
            mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor5.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[192] = Mask(248, 8, stor5.length)
        else:
            if bool(stor5.length) != 1:
                mem[64] = 6
                _267 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_267) > _267:
                    mem[_267 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_267) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[idx + 192] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor5.length.field_1 + 192] = '0'
        mem[stor5.length.field_1 + 193] = '.json'
        mem[stor5.length.field_1 + 198] = 32
        mem[stor5.length.field_1 + 230] = mem[160]
        mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor5.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _734 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _796 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_734 + stor5.length.field_1 + _796 + 32] = '.json'
                if ceil32(_796) <= _796:
                    _1224 = mem[64]
                    mem[64] = _734 + stor5.length.field_1 + _796 + 37
                    mem[_734 + stor5.length.field_1 + _796 + 37] = 32
                    _1292 = mem[_1224]
                    mem[_734 + stor5.length.field_1 + _796 + 69] = mem[_1224]
                    mem[_734 + stor5.length.field_1 + _796 + 101 len ceil32(_1292)] = mem[_1224 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_734 + stor5.length.field_1 + _796 + _1292 + 101] = 0
                    return 32, mem[_734 + stor5.length.field_1 + _796 + 69 len ceil32(_1292) + 32]
                _1244 = mem[64]
                mem[64] = _734 + stor5.length.field_1 + _796 + 37
                mem[_734 + stor5.length.field_1 + _796 + 37] = 32
                _1308 = mem[_1244]
                mem[_734 + stor5.length.field_1 + _796 + 69] = mem[_1244]
                mem[_734 + stor5.length.field_1 + _796 + 101 len ceil32(_1308)] = mem[_1244 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_734 + stor5.length.field_1 + _796 + _1308 + 101] = 0
                return 32, mem[_734 + stor5.length.field_1 + _796 + 69 len ceil32(_1308) + 32]
            if bool(stor5.length) != 1:
                _806 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_806] = '.json'
                if ceil32(_806) <= _806:
                    _1226 = mem[64]
                    mem[64] = _806 + 5
                    mem[_806 + 5] = 32
                    _1293 = mem[_1226]
                    mem[_806 + 37] = mem[_1226]
                    mem[_806 + 69 len ceil32(_1293)] = mem[_1226 + 32 len ceil32(_1293)]
                    if ceil32(_1293) > _1293:
                        mem[_806 + _1293 + 69] = 0
                    return 32, mem[_806 + 37 len ceil32(_1293) + 32]
                _1245 = mem[64]
                mem[64] = _806 + 5
                mem[_806 + 5] = 32
                _1309 = mem[_1245]
                mem[_806 + 37] = mem[_1245]
                mem[_806 + 69 len ceil32(_1309)] = mem[_1245 + 32 len ceil32(_1309)]
                if ceil32(_1309) > _1309:
                    mem[_806 + _1309 + 69] = 0
                return 32, mem[_806 + 37 len ceil32(_1309) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_734 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1192 = mem[96]
            mem[_734 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + stor5.length.field_1 + _1192 + 32] = '.json'
            if ceil32(_1192) <= _1192:
                _1616 = mem[64]
                mem[64] = _734 + stor5.length.field_1 + _1192 + 37
                mem[_734 + stor5.length.field_1 + _1192 + 37] = 32
                _1648 = mem[_1616]
                mem[_734 + stor5.length.field_1 + _1192 + 69] = mem[_1616]
                mem[_734 + stor5.length.field_1 + _1192 + 101 len ceil32(_1648)] = mem[_1616 + 32 len ceil32(_1648)]
                if ceil32(_1648) > _1648:
                    mem[_734 + stor5.length.field_1 + _1192 + _1648 + 101] = 0
                return 32, mem[_734 + stor5.length.field_1 + _1192 + 69 len ceil32(_1648) + 32]
            _1624 = mem[64]
            mem[64] = _734 + stor5.length.field_1 + _1192 + 37
            mem[_734 + stor5.length.field_1 + _1192 + 37] = 32
            _1656 = mem[_1624]
            mem[_734 + stor5.length.field_1 + _1192 + 69] = mem[_1624]
            mem[_734 + stor5.length.field_1 + _1192 + 101 len ceil32(_1656)] = mem[_1624 + 32 len ceil32(_1656)]
            if ceil32(_1656) > _1656:
                mem[_734 + stor5.length.field_1 + _1192 + _1656 + 101] = 0
            return 32, mem[_734 + stor5.length.field_1 + _1192 + 69 len ceil32(_1656) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _807 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + stor5.length.field_1 + _807 + 32] = '.json'
            if ceil32(_807) <= _807:
                _1227 = mem[64]
                mem[64] = _734 + stor5.length.field_1 + _807 + 37
                mem[_734 + stor5.length.field_1 + _807 + 37] = 32
                _1294 = mem[_1227]
                mem[_734 + stor5.length.field_1 + _807 + 69] = mem[_1227]
                mem[_734 + stor5.length.field_1 + _807 + 101 len ceil32(_1294)] = mem[_1227 + 32 len ceil32(_1294)]
                if ceil32(_1294) > _1294:
                    mem[_734 + stor5.length.field_1 + _807 + _1294 + 101] = 0
                return 32, mem[_734 + stor5.length.field_1 + _807 + 69 len ceil32(_1294) + 32]
            _1246 = mem[64]
            mem[64] = _734 + stor5.length.field_1 + _807 + 37
            mem[_734 + stor5.length.field_1 + _807 + 37] = 32
            _1310 = mem[_1246]
            mem[_734 + stor5.length.field_1 + _807 + 69] = mem[_1246]
            mem[_734 + stor5.length.field_1 + _807 + 101 len ceil32(_1310)] = mem[_1246 + 32 len ceil32(_1310)]
            if ceil32(_1310) > _1310:
                mem[_734 + stor5.length.field_1 + _807 + _1310 + 101] = 0
            return 32, mem[_734 + stor5.length.field_1 + _807 + 69 len ceil32(_1310) + 32]
        if bool(stor5.length) != 1:
            _814 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_814] = '.json'
            if ceil32(_814) <= _814:
                _1229 = mem[64]
                mem[64] = _814 + 5
                mem[_814 + 5] = 32
                _1295 = mem[_1229]
                mem[_814 + 37] = mem[_1229]
                mem[_814 + 69 len ceil32(_1295)] = mem[_1229 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_814 + _1295 + 69] = 0
                return 32, mem[_814 + 37 len ceil32(_1295) + 32]
            _1247 = mem[64]
            mem[64] = _814 + 5
            mem[_814 + 5] = 32
            _1311 = mem[_1247]
            mem[_814 + 37] = mem[_1247]
            mem[_814 + 69 len ceil32(_1311)] = mem[_1247 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_814 + _1311 + 69] = 0
            return 32, mem[_814 + 37 len ceil32(_1311) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_734 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + stor5.length.field_1 + _1193 + 32] = '.json'
        if ceil32(_1193) <= _1193:
            _1617 = mem[64]
            mem[64] = _734 + stor5.length.field_1 + _1193 + 37
            mem[_734 + stor5.length.field_1 + _1193 + 37] = 32
            _1649 = mem[_1617]
            mem[_734 + stor5.length.field_1 + _1193 + 69] = mem[_1617]
            mem[_734 + stor5.length.field_1 + _1193 + 101 len ceil32(_1649)] = mem[_1617 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_734 + stor5.length.field_1 + _1193 + _1649 + 101] = 0
            return 32, mem[_734 + stor5.length.field_1 + _1193 + 69 len ceil32(_1649) + 32]
        _1625 = mem[64]
        mem[64] = _734 + stor5.length.field_1 + _1193 + 37
        mem[_734 + stor5.length.field_1 + _1193 + 37] = 32
        _1657 = mem[_1625]
        mem[_734 + stor5.length.field_1 + _1193 + 69] = mem[_1625]
        mem[_734 + stor5.length.field_1 + _1193 + 101 len ceil32(_1657)] = mem[_1625 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_734 + stor5.length.field_1 + _1193 + _1657 + 101] = 0
        return 32, mem[_734 + stor5.length.field_1 + _1193 + 69 len ceil32(_1657) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _735 = mem[64]
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _797 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_735 + stor5.length.field_1 + _797 + 32] = '.json'
            if ceil32(_797) <= _797:
                _1230 = mem[64]
                mem[64] = _735 + stor5.length.field_1 + _797 + 37
                mem[_735 + stor5.length.field_1 + _797 + 37] = 32
                _1296 = mem[_1230]
                mem[_735 + stor5.length.field_1 + _797 + 69] = mem[_1230]
                mem[_735 + stor5.length.field_1 + _797 + 101 len ceil32(_1296)] = mem[_1230 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_735 + stor5.length.field_1 + _797 + _1296 + 101] = 0
                return 32, mem[_735 + stor5.length.field_1 + _797 + 69 len ceil32(_1296) + 32]
            _1248 = mem[64]
            mem[64] = _735 + stor5.length.field_1 + _797 + 37
            mem[_735 + stor5.length.field_1 + _797 + 37] = 32
            _1312 = mem[_1248]
            mem[_735 + stor5.length.field_1 + _797 + 69] = mem[_1248]
            mem[_735 + stor5.length.field_1 + _797 + 101 len ceil32(_1312)] = mem[_1248 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_735 + stor5.length.field_1 + _797 + _1312 + 101] = 0
            return 32, mem[_735 + stor5.length.field_1 + _797 + 69 len ceil32(_1312) + 32]
        if bool(stor5.length) != 1:
            _808 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_808] = '.json'
            if ceil32(_808) <= _808:
                _1232 = mem[64]
                mem[64] = _808 + 5
                mem[_808 + 5] = 32
                _1297 = mem[_1232]
                mem[_808 + 37] = mem[_1232]
                mem[_808 + 69 len ceil32(_1297)] = mem[_1232 + 32 len ceil32(_1297)]
                if ceil32(_1297) > _1297:
                    mem[_808 + _1297 + 69] = 0
                return 32, mem[_808 + 37 len ceil32(_1297) + 32]
            _1249 = mem[64]
            mem[64] = _808 + 5
            mem[_808 + 5] = 32
            _1313 = mem[_1249]
            mem[_808 + 37] = mem[_1249]
            mem[_808 + 69 len ceil32(_1313)] = mem[_1249 + 32 len ceil32(_1313)]
            if ceil32(_1313) > _1313:
                mem[_808 + _1313 + 69] = 0
            return 32, mem[_808 + 37 len ceil32(_1313) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_735 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1194 = mem[96]
        mem[_735 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + stor5.length.field_1 + _1194 + 32] = '.json'
        if ceil32(_1194) <= _1194:
            _1618 = mem[64]
            mem[64] = _735 + stor5.length.field_1 + _1194 + 37
            mem[_735 + stor5.length.field_1 + _1194 + 37] = 32
            _1650 = mem[_1618]
            mem[_735 + stor5.length.field_1 + _1194 + 69] = mem[_1618]
            mem[_735 + stor5.length.field_1 + _1194 + 101 len ceil32(_1650)] = mem[_1618 + 32 len ceil32(_1650)]
            if ceil32(_1650) > _1650:
                mem[_735 + stor5.length.field_1 + _1194 + _1650 + 101] = 0
            return 32, mem[_735 + stor5.length.field_1 + _1194 + 69 len ceil32(_1650) + 32]
        _1626 = mem[64]
        mem[64] = _735 + stor5.length.field_1 + _1194 + 37
        mem[_735 + stor5.length.field_1 + _1194 + 37] = 32
        _1658 = mem[_1626]
        mem[_735 + stor5.length.field_1 + _1194 + 69] = mem[_1626]
        mem[_735 + stor5.length.field_1 + _1194 + 101 len ceil32(_1658)] = mem[_1626 + 32 len ceil32(_1658)]
        if ceil32(_1658) > _1658:
            mem[_735 + stor5.length.field_1 + _1194 + _1658 + 101] = 0
        return 32, mem[_735 + stor5.length.field_1 + _1194 + 69 len ceil32(_1658) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor5.length):
        mem[mem[64] + 32] = Mask(248, 8, stor5.length)
        _809 = mem[96]
        mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + stor5.length.field_1 + _809 + 32] = '.json'
        if ceil32(_809) <= _809:
            _1233 = mem[64]
            mem[64] = _735 + stor5.length.field_1 + _809 + 37
            mem[_735 + stor5.length.field_1 + _809 + 37] = 32
            _1298 = mem[_1233]
            mem[_735 + stor5.length.field_1 + _809 + 69] = mem[_1233]
            mem[_735 + stor5.length.field_1 + _809 + 101 len ceil32(_1298)] = mem[_1233 + 32 len ceil32(_1298)]
            if ceil32(_1298) > _1298:
                mem[_735 + stor5.length.field_1 + _809 + _1298 + 101] = 0
            return 32, mem[_735 + stor5.length.field_1 + _809 + 69 len ceil32(_1298) + 32]
        _1250 = mem[64]
        mem[64] = _735 + stor5.length.field_1 + _809 + 37
        mem[_735 + stor5.length.field_1 + _809 + 37] = 32
        _1314 = mem[_1250]
        mem[_735 + stor5.length.field_1 + _809 + 69] = mem[_1250]
        mem[_735 + stor5.length.field_1 + _809 + 101 len ceil32(_1314)] = mem[_1250 + 32 len ceil32(_1314)]
        if ceil32(_1314) > _1314:
            mem[_735 + stor5.length.field_1 + _809 + _1314 + 101] = 0
        return 32, mem[_735 + stor5.length.field_1 + _809 + 69 len ceil32(_1314) + 32]
    if bool(stor5.length) != 1:
        _815 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_815] = '.json'
        if ceil32(_815) <= _815:
            _1235 = mem[64]
            mem[64] = _815 + 5
            mem[_815 + 5] = 32
            _1299 = mem[_1235]
            mem[_815 + 37] = mem[_1235]
            mem[_815 + 69 len ceil32(_1299)] = mem[_1235 + 32 len ceil32(_1299)]
            if ceil32(_1299) > _1299:
                mem[_815 + _1299 + 69] = 0
            return 32, mem[_815 + 37 len ceil32(_1299) + 32]
        _1251 = mem[64]
        mem[64] = _815 + 5
        mem[_815 + 5] = 32
        _1315 = mem[_1251]
        mem[_815 + 37] = mem[_1251]
        mem[_815 + 69 len ceil32(_1315)] = mem[_1251 + 32 len ceil32(_1315)]
        if ceil32(_1315) > _1315:
            mem[_815 + _1315 + 69] = 0
        return 32, mem[_815 + 37 len ceil32(_1315) + 32]
    mem[0] = 5
    idx = 0
    s = 0
    while idx < stor5.length.field_1:
        mem[_735 + idx + 32] = stor5[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1195 = mem[96]
    mem[_735 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_735 + stor5.length.field_1 + _1195 + 32] = '.json'
    if ceil32(_1195) <= _1195:
        _1619 = mem[64]
        mem[64] = _735 + stor5.length.field_1 + _1195 + 37
        mem[_735 + stor5.length.field_1 + _1195 + 37] = 32
        _1651 = mem[_1619]
        mem[_735 + stor5.length.field_1 + _1195 + 69] = mem[_1619]
        mem[_735 + stor5.length.field_1 + _1195 + 101 len ceil32(_1651)] = mem[_1619 + 32 len ceil32(_1651)]
        if ceil32(_1651) > _1651:
            mem[_735 + stor5.length.field_1 + _1195 + _1651 + 101] = 0
        return 32, mem[_735 + stor5.length.field_1 + _1195 + 69 len ceil32(_1651) + 32]
    _1627 = mem[64]
    mem[64] = _735 + stor5.length.field_1 + _1195 + 37
    mem[_735 + stor5.length.field_1 + _1195 + 37] = 32
    _1659 = mem[_1627]
    mem[_735 + stor5.length.field_1 + _1195 + 69] = mem[_1627]
    mem[_735 + stor5.length.field_1 + _1195 + 101 len ceil32(_1659)] = mem[_1627 + 32 len ceil32(_1659)]
    if ceil32(_1659) > _1659:
        mem[_735 + stor5.length.field_1 + _1195 + _1659 + 101] = 0
    return 32, mem[_735 + stor5.length.field_1 + _1195 + 69 len ceil32(_1659) + 32]
}



}
