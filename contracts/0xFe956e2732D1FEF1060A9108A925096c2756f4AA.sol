contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint8 stor102;
array of struct stor103;
address owner;
uint256 sub_daaf00bb;
array of struct stor252;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function blockNumber() payable {
    return sub_daaf00bb
}

function owner() payable {
    return owner
}

function sub_daaf00bb(?) payable {
    return sub_daaf00bb
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor102[address(arg1)][address(arg2)])
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
    stor102[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if not stor102[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor103[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor103.length = 0
            idx = 0
            while stor103.length.field_1 + 31 / 32 > idx:
                stor103[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor103[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor103.length = 0
            idx = 0
            while stor103.length.field_1 + 31 / 32 > idx:
                stor103[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor252.length):
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor252[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor252.length = 0
            idx = 0
            while stor252.length.field_1 + 31 / 32 > idx:
                stor252[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor252[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor252.length = 0
            idx = 0
            while stor252.length.field_1 + 31 / 32 > idx:
                stor252[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
        if not stor102[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
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
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 101)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        if not stor102[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 101)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
    mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function initialize(string arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor103[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor103.length = 0
            idx = 0
            while stor103.length.field_1 + 31 / 32 > idx:
                stor103[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor103[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor103.length = 0
            idx = 0
            while stor103.length.field_1 + 31 / 32 > idx:
                stor103[idx].field_0 = 0
                idx = idx + 1
                continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = arg3
    emit OwnershipTransferred(owner, arg3);
    sub_daaf00bb = block.number
    if bool(stor252.length):
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor252[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor252.length = 0
            idx = 0
            while stor252.length.field_1 + 31 / 32 > idx:
                stor252[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor252[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor252.length = 0
            idx = 0
            while stor252.length.field_1 + 31 / 32 > idx:
                stor252[idx].field_0 = 0
                idx = idx + 1
                continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function contractURI() payable {
    if bool(stor252.length):
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor252.length):
            if bool(stor252.length) == stor252.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor252.length.field_1:
                if 31 < stor252.length.field_1:
                    mem[128] = uint256(stor252.field_0)
                    idx = 128
                    s = 0
                    while stor252.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor252[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor252.length.field_1), data=mem[128 len ceil32(stor252.length.field_1)])
                mem[128] = 256 * stor252.length.field_8
        else:
            if bool(stor252.length) == stor252.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor252.length.field_1:
                if 31 < stor252.length.field_1:
                    mem[128] = uint256(stor252.field_0)
                    idx = 128
                    s = 0
                    while stor252.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor252[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor252.length.field_1), data=mem[128 len ceil32(stor252.length.field_1)])
                mem[128] = 256 * stor252.length.field_8
        mem[ceil32(stor252.length.field_1) + 192 len ceil32(stor252.length.field_1)] = mem[128 len ceil32(stor252.length.field_1)]
        if ceil32(stor252.length.field_1) > stor252.length.field_1:
            mem[ceil32(stor252.length.field_1) + stor252.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor252.length.field_1), data=mem[128 len ceil32(stor252.length.field_1)], mem[(2 * ceil32(stor252.length.field_1)) + 192 len 2 * ceil32(stor252.length.field_1)]), 
    if bool(stor252.length) == stor252.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor252.length):
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor252.length.field_1:
            if 31 < stor252.length.field_1:
                mem[128] = uint256(stor252.field_0)
                idx = 128
                s = 0
                while stor252.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor252[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor252.length % 128, data=mem[128 len ceil32(stor252.length.field_1)])
            mem[128] = 256 * stor252.length.field_8
    else:
        if bool(stor252.length) == stor252.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor252.length.field_1:
            if 31 < stor252.length.field_1:
                mem[128] = uint256(stor252.field_0)
                idx = 128
                s = 0
                while stor252.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor252[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor252.length % 128, data=mem[128 len ceil32(stor252.length.field_1)])
            mem[128] = 256 * stor252.length.field_8
    mem[ceil32(stor252.length.field_1) + 192 len ceil32(stor252.length.field_1)] = mem[128 len ceil32(stor252.length.field_1)]
    if ceil32(stor252.length.field_1) > stor252.length.field_1:
        mem[ceil32(stor252.length.field_1) + stor252.length.field_1 + 192] = 0
    return Array(len=stor252.length % 128, data=mem[128 len ceil32(stor252.length.field_1)], mem[(2 * ceil32(stor252.length.field_1)) + 192 len 2 * ceil32(stor252.length.field_1)]), 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor103.length):
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)])
                mem[128] = 256 * stor103.length.field_8
        else:
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)])
                mem[128] = 256 * stor103.length.field_8
        mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
        if ceil32(stor103.length.field_1) > stor103.length.field_1:
            mem[ceil32(stor103.length.field_1) + stor103.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
    if bool(stor103.length) == stor103.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
    if ceil32(stor103.length.field_1) > stor103.length.field_1:
        mem[ceil32(stor103.length.field_1) + stor103.length.field_1 + 192] = 0
    return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 > test266151307() or ceil32(ceil32(arg4.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[floor32(arg2.length) + floor32(arg3.length) + 130 len arg4.length] = arg4[all]
    mem[floor32(arg2.length) + floor32(arg3.length) + arg4.length + 130] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 101)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 163] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 131] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if ext_code.size(arg1) <= 0:
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _617 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _623 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_623)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_623)]
        if ceil32(_623) <= _623:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_623) + 32]
        mem[mem[64] + _623 + 68] = 0
        revert with memory
          from mem[64]
           len _617 + ceil32(_623) + -mem[64] + 68
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 359] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _620 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _627 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_627)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_627)]
    if ceil32(_627) <= _627:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_627) + 32]
    mem[mem[64] + _627 + 68] = 0
    revert with memory
      from mem[64]
       len _620 + ceil32(_627) + -mem[64] + 68
}



}
