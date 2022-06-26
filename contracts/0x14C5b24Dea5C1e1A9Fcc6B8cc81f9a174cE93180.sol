contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const name = 'Pudgy's Jpegs', 0

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of struct stor4;
array of struct stor5;
address sub_934ee661Address;
uint256 sub_9a74381f;
uint256 sub_d8c39d4b;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_54409302(?) payable {
    return sub_9a74381f
}

function sub_82f53c00(?) payable {
    return sub_d8c39d4b
}

function owner() payable {
    return owner
}

function sub_934ee661(?) payable {
    return sub_934ee661Address
}

function sub_9a74381f(?) payable {
    return sub_9a74381f
}

function sub_d8c39d4b(?) payable {
    return sub_d8c39d4b
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isValidTokenId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_d8c39d4b >= arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_78ceba69(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d8c39d4b = arg1
}

function sub_941f3a8e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d8c39d4b = arg1
}

function sub_8e7c5866(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_934ee661Address = address(arg1)
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
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function mintMany(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if sub_d8c39d4b < arg2:
        revert with 0, 'invalid _id'
    if owner != msg.sender:
        revert with 0, 'not allowed'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_d8c39d4b < arg2:
        revert with 0, 'invalid _id'
    if sub_934ee661Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not allowed'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -2:
        revert with 0, 17
    balanceOf[arg2][address(arg1)]++
    emit TransferSingle(arg2, 1, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setContractURI(string arg1) payable {
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
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
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
        if not stor2[address(arg1)][address(msg.sender)]:
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
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 1)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function contractURI() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_3ca4fb76(?) payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_d8c39d4b < arg1:
        revert with 0, 'invalid id'
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                mem[192] = Mask(248, 8, stor4.length)
            else:
                if bool(stor4.length) != 1:
                    mem[64] = 6
                    _123 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_123) > _123:
                        mem[_123 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_123) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 192] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor4.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor4.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor4.length) * 0.5) + 198] = 32
            mem[(uint255(stor4.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor4.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[(uint255(stor4.length) * 0.5) + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor4.length) * 0.5) + 262 len ceil32(mem[160])])
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            mem[192] = Mask(248, 8, stor4.length)
        else:
            if bool(stor4.length) != 1:
                mem[64] = 6
                _125 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_125) > _125:
                    mem[_125 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_125) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor4.length.field_1:
                mem[idx + 192] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor4.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor4.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor4.length.field_1 + 198] = 32
        mem[stor4.length.field_1 + 230] = mem[160]
        mem[stor4.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor4.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor4.length.field_1 + 262 len ceil32(mem[160])])
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
        _358 = mem[64]
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                mem[mem[64] + 32] = Mask(248, 8, stor4.length)
                _384 = mem[96]
                mem[mem[64] + (uint255(stor4.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _594 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 37
                    mem[mem[96] + _358 + (uint255(stor4.length) * 0.5) + 37] = 32
                    _634 = mem[_594]
                    mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 69] = mem[_594]
                    mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_634)] = mem[_594 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_384 + _358 + (uint255(stor4.length) * 0.5) + _634 + 101] = 0
                    return 32, mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_634) + 32]
                _611 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 37
                mem[mem[96] + _358 + (uint255(stor4.length) * 0.5) + 37] = 32
                _642 = mem[_611]
                mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 69] = mem[_611]
                mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_642)] = mem[_611 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_384 + _358 + (uint255(stor4.length) * 0.5) + _642 + 101] = 0
                return 32, mem[_384 + _358 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_642) + 32]
            if bool(stor4.length) != 1:
                _390 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_390] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_390) <= _390:
                    _596 = mem[64]
                    mem[64] = _390 + 5
                    mem[_390 + 5] = 32
                    _635 = mem[_596]
                    mem[_390 + 37] = mem[_596]
                    mem[_390 + 69 len ceil32(_635)] = mem[_596 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_390 + _635 + 69] = 0
                    return 32, mem[_390 + 37 len ceil32(_635) + 32]
                _613 = mem[64]
                mem[64] = _390 + 5
                mem[_390 + 5] = 32
                _643 = mem[_613]
                mem[_390 + 37] = mem[_613]
                mem[_390 + 69 len ceil32(_643)] = mem[_613 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_390 + _643 + 69] = 0
                return 32, mem[_390 + 37 len ceil32(_643) + 32]
            mem[0] = 4
            idx = 0
            s = 0
            while idx < uint255(stor4.length) * 0.5:
                mem[idx + _358 + 32] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _586 = mem[96]
            mem[_358 + (uint255(stor4.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_586) <= _586:
                _784 = mem[64]
                mem[64] = _586 + _358 + (uint255(stor4.length) * 0.5) + 37
                mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 37] = 32
                _814 = mem[_784]
                mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 69] = mem[_784]
                mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_814)] = mem[_784 + 32 len ceil32(_814)]
                if ceil32(_814) > _814:
                    mem[_586 + _358 + (uint255(stor4.length) * 0.5) + _814 + 101] = 0
                return 32, mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_814) + 32]
            _803 = mem[64]
            mem[64] = _586 + _358 + (uint255(stor4.length) * 0.5) + 37
            mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 37] = 32
            _818 = mem[_803]
            mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 69] = mem[_803]
            mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_818)] = mem[_803 + 32 len ceil32(_818)]
            if ceil32(_818) > _818:
                mem[_586 + _358 + (uint255(stor4.length) * 0.5) + _818 + 101] = 0
            return 32, mem[_586 + _358 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_818) + 32]
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            mem[mem[64] + 32] = Mask(248, 8, stor4.length)
            _391 = mem[96]
            mem[mem[64] + stor4.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_391 + _358 + stor4.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_391) <= _391:
                _597 = mem[64]
                mem[64] = _391 + _358 + stor4.length.field_1 + 37
                mem[_391 + _358 + stor4.length.field_1 + 37] = 32
                _636 = mem[_597]
                mem[_391 + _358 + stor4.length.field_1 + 69] = mem[_597]
                mem[_391 + _358 + stor4.length.field_1 + 101 len ceil32(_636)] = mem[_597 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_391 + _358 + stor4.length.field_1 + _636 + 101] = 0
                return 32, mem[_391 + _358 + stor4.length.field_1 + 69 len ceil32(_636) + 32]
            _615 = mem[64]
            mem[64] = _391 + _358 + stor4.length.field_1 + 37
            mem[_391 + _358 + stor4.length.field_1 + 37] = 32
            _644 = mem[_615]
            mem[_391 + _358 + stor4.length.field_1 + 69] = mem[_615]
            mem[_391 + _358 + stor4.length.field_1 + 101 len ceil32(_644)] = mem[_615 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_391 + _358 + stor4.length.field_1 + _644 + 101] = 0
            return 32, mem[_391 + _358 + stor4.length.field_1 + 69 len ceil32(_644) + 32]
        if bool(stor4.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_396] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_396) <= _396:
                _599 = mem[64]
                mem[64] = _396 + 5
                mem[_396 + 5] = 32
                _637 = mem[_599]
                mem[_396 + 37] = mem[_599]
                mem[_396 + 69 len ceil32(_637)] = mem[_599 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_396 + _637 + 69] = 0
                return 32, mem[_396 + 37 len ceil32(_637) + 32]
            _617 = mem[64]
            mem[64] = _396 + 5
            mem[_396 + 5] = 32
            _645 = mem[_617]
            mem[_396 + 37] = mem[_617]
            mem[_396 + 69 len ceil32(_645)] = mem[_617 + 32 len ceil32(_645)]
            if ceil32(_645) > _645:
                mem[_396 + _645 + 69] = 0
            return 32, mem[_396 + 37 len ceil32(_645) + 32]
        mem[0] = 4
        idx = 0
        s = 0
        while idx < stor4.length.field_1:
            mem[idx + _358 + 32] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _587 = mem[96]
        mem[_358 + stor4.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_587 + _358 + stor4.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_587) <= _587:
            _789 = mem[64]
            mem[64] = _587 + _358 + stor4.length.field_1 + 37
            mem[_587 + _358 + stor4.length.field_1 + 37] = 32
            _815 = mem[_789]
            mem[_587 + _358 + stor4.length.field_1 + 69] = mem[_789]
            mem[_587 + _358 + stor4.length.field_1 + 101 len ceil32(_815)] = mem[_789 + 32 len ceil32(_815)]
            if ceil32(_815) > _815:
                mem[_587 + _358 + stor4.length.field_1 + _815 + 101] = 0
            return 32, mem[_587 + _358 + stor4.length.field_1 + 69 len ceil32(_815) + 32]
        _805 = mem[64]
        mem[64] = _587 + _358 + stor4.length.field_1 + 37
        mem[_587 + _358 + stor4.length.field_1 + 37] = 32
        _819 = mem[_805]
        mem[_587 + _358 + stor4.length.field_1 + 69] = mem[_805]
        mem[_587 + _358 + stor4.length.field_1 + 101 len ceil32(_819)] = mem[_805 + 32 len ceil32(_819)]
        if ceil32(_819) > _819:
            mem[_587 + _358 + stor4.length.field_1 + _819 + 101] = 0
        return 32, mem[_587 + _358 + stor4.length.field_1 + 69 len ceil32(_819) + 32]
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
    _359 = mem[64]
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            mem[mem[64] + 32] = Mask(248, 8, stor4.length)
            _386 = mem[96]
            mem[mem[64] + (uint255(stor4.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _600 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 37
                mem[mem[96] + _359 + (uint255(stor4.length) * 0.5) + 37] = 32
                _638 = mem[_600]
                mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 69] = mem[_600]
                mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_638)] = mem[_600 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_386 + _359 + (uint255(stor4.length) * 0.5) + _638 + 101] = 0
                return 32, mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_638) + 32]
            _619 = mem[64]
            mem[64] = mem[96] + mem[64] + (uint255(stor4.length) * 0.5) + 37
            mem[mem[96] + _359 + (uint255(stor4.length) * 0.5) + 37] = 32
            _646 = mem[_619]
            mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 69] = mem[_619]
            mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_646)] = mem[_619 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_386 + _359 + (uint255(stor4.length) * 0.5) + _646 + 101] = 0
            return 32, mem[_386 + _359 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_646) + 32]
        if bool(stor4.length) != 1:
            _392 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_392] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_392) <= _392:
                _602 = mem[64]
                mem[64] = _392 + 5
                mem[_392 + 5] = 32
                _639 = mem[_602]
                mem[_392 + 37] = mem[_602]
                mem[_392 + 69 len ceil32(_639)] = mem[_602 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_392 + _639 + 69] = 0
                return 32, mem[_392 + 37 len ceil32(_639) + 32]
            _621 = mem[64]
            mem[64] = _392 + 5
            mem[_392 + 5] = 32
            _647 = mem[_621]
            mem[_392 + 37] = mem[_621]
            mem[_392 + 69 len ceil32(_647)] = mem[_621 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_392 + _647 + 69] = 0
            return 32, mem[_392 + 37 len ceil32(_647) + 32]
        mem[0] = 4
        idx = 0
        s = 0
        while idx < uint255(stor4.length) * 0.5:
            mem[idx + _359 + 32] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_359 + (uint255(stor4.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_588) <= _588:
            _794 = mem[64]
            mem[64] = _588 + _359 + (uint255(stor4.length) * 0.5) + 37
            mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 37] = 32
            _816 = mem[_794]
            mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 69] = mem[_794]
            mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_816)] = mem[_794 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_588 + _359 + (uint255(stor4.length) * 0.5) + _816 + 101] = 0
            return 32, mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_816) + 32]
        _807 = mem[64]
        mem[64] = _588 + _359 + (uint255(stor4.length) * 0.5) + 37
        mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 37] = 32
        _820 = mem[_807]
        mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 69] = mem[_807]
        mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 101 len ceil32(_820)] = mem[_807 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_588 + _359 + (uint255(stor4.length) * 0.5) + _820 + 101] = 0
        return 32, mem[_588 + _359 + (uint255(stor4.length) * 0.5) + 69 len ceil32(_820) + 32]
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor4.length):
        mem[mem[64] + 32] = Mask(248, 8, stor4.length)
        _393 = mem[96]
        mem[mem[64] + stor4.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_393 + _359 + stor4.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_393) <= _393:
            _603 = mem[64]
            mem[64] = _393 + _359 + stor4.length.field_1 + 37
            mem[_393 + _359 + stor4.length.field_1 + 37] = 32
            _640 = mem[_603]
            mem[_393 + _359 + stor4.length.field_1 + 69] = mem[_603]
            mem[_393 + _359 + stor4.length.field_1 + 101 len ceil32(_640)] = mem[_603 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_393 + _359 + stor4.length.field_1 + _640 + 101] = 0
            return 32, mem[_393 + _359 + stor4.length.field_1 + 69 len ceil32(_640) + 32]
        _623 = mem[64]
        mem[64] = _393 + _359 + stor4.length.field_1 + 37
        mem[_393 + _359 + stor4.length.field_1 + 37] = 32
        _648 = mem[_623]
        mem[_393 + _359 + stor4.length.field_1 + 69] = mem[_623]
        mem[_393 + _359 + stor4.length.field_1 + 101 len ceil32(_648)] = mem[_623 + 32 len ceil32(_648)]
        if ceil32(_648) > _648:
            mem[_393 + _359 + stor4.length.field_1 + _648 + 101] = 0
        return 32, mem[_393 + _359 + stor4.length.field_1 + 69 len ceil32(_648) + 32]
    if bool(stor4.length) != 1:
        _398 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_398] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_398) <= _398:
            _605 = mem[64]
            mem[64] = _398 + 5
            mem[_398 + 5] = 32
            _641 = mem[_605]
            mem[_398 + 37] = mem[_605]
            mem[_398 + 69 len ceil32(_641)] = mem[_605 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_398 + _641 + 69] = 0
            return 32, mem[_398 + 37 len ceil32(_641) + 32]
        _625 = mem[64]
        mem[64] = _398 + 5
        mem[_398 + 5] = 32
        _649 = mem[_625]
        mem[_398 + 37] = mem[_625]
        mem[_398 + 69 len ceil32(_649)] = mem[_625 + 32 len ceil32(_649)]
        if ceil32(_649) > _649:
            mem[_398 + _649 + 69] = 0
        return 32, mem[_398 + 37 len ceil32(_649) + 32]
    mem[0] = 4
    idx = 0
    s = 0
    while idx < stor4.length.field_1:
        mem[idx + _359 + 32] = stor4[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _589 = mem[96]
    mem[_359 + stor4.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_589 + _359 + stor4.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_589) <= _589:
        _799 = mem[64]
        mem[64] = _589 + _359 + stor4.length.field_1 + 37
        mem[_589 + _359 + stor4.length.field_1 + 37] = 32
        _817 = mem[_799]
        mem[_589 + _359 + stor4.length.field_1 + 69] = mem[_799]
        mem[_589 + _359 + stor4.length.field_1 + 101 len ceil32(_817)] = mem[_799 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_589 + _359 + stor4.length.field_1 + _817 + 101] = 0
        return 32, mem[_589 + _359 + stor4.length.field_1 + 69 len ceil32(_817) + 32]
    _809 = mem[64]
    mem[64] = _589 + _359 + stor4.length.field_1 + 37
    mem[_589 + _359 + stor4.length.field_1 + 37] = 32
    _821 = mem[_809]
    mem[_589 + _359 + stor4.length.field_1 + 69] = mem[_809]
    mem[_589 + _359 + stor4.length.field_1 + 101 len ceil32(_821)] = mem[_809 + 32 len ceil32(_821)]
    if ceil32(_821) > _821:
        mem[_589 + _359 + stor4.length.field_1 + _821 + 101] = 0
    return 32, mem[_589 + _359 + stor4.length.field_1 + 69 len ceil32(_821) + 32]
}



}
