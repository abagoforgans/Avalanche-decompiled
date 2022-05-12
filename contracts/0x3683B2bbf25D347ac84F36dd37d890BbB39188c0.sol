contract main {




// =====================  Runtime code  =====================


#
#  - sub_2825df7b(?)
#  - sub_c6236cb7(?)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
address managerAddress;
array of struct stor5;
array of struct stor6;
array of uint256 stor7;
uint256 _totalSupply;
mapping of struct stor9;
mapping of uint256 sub_d5c12c27;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function _totalSupply() payable {
    return _totalSupply
}

function owner() payable {
    return owner
}

function getManagerAddress() payable {
    return managerAddress
}

function sub_d5c12c27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_d5c12c27[arg1[all]]
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

function setManagerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    managerAddress = arg1
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
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURIPrefix(string arg1) payable {
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
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
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

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
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

function getURI() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() payable {
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

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
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
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg1 == msg.sender:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if ext_code.size(arg2) <= 0:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
                revert with 'NH{q', 65
            mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1245 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1257 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1257)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1257)]
            if ceil32(_1257) <= _1257:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1257) + 32]
            mem[mem[64] + _1257 + 68] = 0
            revert with memory
              from mem[64]
               len _1245 + ceil32(_1257) + -mem[64] + 68
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1250 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1264 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1264)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1264)]
        if ceil32(_1264) <= _1264:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1264) + 32]
        mem[mem[64] + _1264 + 68] = 0
        revert with memory
          from mem[64]
           len _1250 + ceil32(_1264) + -mem[64] + 68
    mem[0] = msg.sender
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) <= 0:
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1247 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1260 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1260)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1260)]
        if ceil32(_1260) <= _1260:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1260) + 32]
        mem[mem[64] + _1260 + 68] = 0
        revert with memory
          from mem[64]
           len _1247 + ceil32(_1260) + -mem[64] + 68
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1252 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1267 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1267)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1267)]
    if ceil32(_1267) <= _1267:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1267) + 32]
    mem[mem[64] + _1267 + 68] = 0
    revert with memory
      from mem[64]
       len _1252 + ceil32(_1267) + -mem[64] + 68
}

function contractURI() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor2.length.field_1
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1144 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1144) > _1144:
                                    mem[_1144 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1144) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1177 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1177) > _1177:
                                mem[_1177 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1177) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1179 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1179) > _1179:
                                    mem[_1179 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1179) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1226 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1226) > _1226:
                                mem[_1226 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1226) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _1148 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1148) > _1148:
                                        mem[_1148 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1148) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1183 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1183) > _1183:
                                    mem[_1183 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1183) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _1185 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1185) > _1185:
                                        mem[_1185 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1185) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1230 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1230) > _1230:
                                    mem[_1230 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1230) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
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
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _2300 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2300) > _2300:
                                        mem[_2300 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2300) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2349 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2349) > _2349:
                                    mem[_2349 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2349) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
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
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2402 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2402) > _2402:
                                    mem[_2402 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2402) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1152 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1152) > _1152:
                                    mem[_1152 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1152) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1189 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1189) > _1189:
                                mem[_1189 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1189) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1191 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1191) > _1191:
                                    mem[_1191 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1191) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1234 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1234) > _1234:
                                mem[_1234 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1234) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _1156 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1156) > _1156:
                                        mem[_1156 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1156) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1195 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1195) > _1195:
                                    mem[_1195 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1195) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _1197 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1197) > _1197:
                                        mem[_1197 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1197) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1238 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1238) > _1238:
                                    mem[_1238 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1238) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
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
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _2312 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2312) > _2312:
                                        mem[_2312 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2312) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2363 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2363) > _2363:
                                    mem[_2363 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2363) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if bool(stor7.length):
                            if bool(stor7.length) == stor7.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor7.length):
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                            else:
                                if bool(stor7.length) != 1:
                                    mem[64] = 0
                                    _2365 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2365) > _2365:
                                        mem[_2365 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2365) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor7.length.field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2406 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2406) > _2406:
                                    mem[_2406 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2406) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if bool(stor7.length):
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1160 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1160) > _1160:
                                mem[_1160 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1160) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor7.length):
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                else:
                    if bool(stor7.length) != 1:
                        mem[64] = 0
                        _1201 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1201) > _1201:
                            mem[_1201 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1201) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor7.length.field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                if bool(stor7.length):
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1203 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1203) > _1203:
                                mem[_1203 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1203) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor7.length):
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                else:
                    if bool(stor7.length) != 1:
                        mem[64] = 0
                        _1242 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1242) > _1242:
                            mem[_1242 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1242) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor7.length.field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1164 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1164) > _1164:
                                    mem[_1164 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1164) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1207 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1207) > _1207:
                                mem[_1207 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1207) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1209 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1209) > _1209:
                                    mem[_1209 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1209) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1246 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1246) > _1246:
                                mem[_1246 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1246) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
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
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2324 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2324) > _2324:
                                    mem[_2324 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2324) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _2377 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2377) > _2377:
                                mem[_2377 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2377) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2379 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2379) > _2379:
                                    mem[_2379 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2379) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _2410 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2410) > _2410:
                                mem[_2410 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2410) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if bool(stor7.length):
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1168 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1168) > _1168:
                                mem[_1168 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1168) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor7.length):
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                else:
                    if bool(stor7.length) != 1:
                        mem[64] = 0
                        _1213 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1213) > _1213:
                            mem[_1213 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1213) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor7.length.field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                if bool(stor7.length):
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1215 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1215) > _1215:
                                mem[_1215 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1215) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor7.length):
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                else:
                    if bool(stor7.length) != 1:
                        mem[64] = 0
                        _1250 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1250) > _1250:
                            mem[_1250 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1250) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor7.length.field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1172 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1172) > _1172:
                                    mem[_1172 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1172) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
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
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _1221 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1221) > _1221:
                                    mem[_1221 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1221) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _1254 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1254) > _1254:
                                mem[_1254 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1254) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
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
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2336 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2336) > _2336:
                                    mem[_2336 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2336) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _2391 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2391) > _2391:
                                mem[_2391 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2391) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if bool(stor7.length):
                        if bool(stor7.length) == stor7.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor7.length):
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                        else:
                            if bool(stor7.length) != 1:
                                mem[64] = 0
                                _2393 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2393) > _2393:
                                    mem[_2393 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2393) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor7.length.field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor7.length):
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor7.length)
                    else:
                        if bool(stor7.length) != 1:
                            mem[64] = 0
                            _2414 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2414) > _2414:
                                mem[_2414 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2414) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor7.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor7[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 160] = 32
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor7.length.field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor2.length.field_1
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1160 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1160) > _1160:
                                    mem[_1160 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1160) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1193 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1193) > _1193:
                                mem[_1193 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1193) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1195 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1195) > _1195:
                                    mem[_1195 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1195) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1242 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1242) > _1242:
                                mem[_1242 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1242) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _1164 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1164) > _1164:
                                        mem[_1164 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1164) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1199 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1199) > _1199:
                                    mem[_1199 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1199) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _1201 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1201) > _1201:
                                        mem[_1201 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1201) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1246 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1246) > _1246:
                                    mem[_1246 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1246) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
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
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _2316 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2316) > _2316:
                                        mem[_2316 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2316) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2365 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2365) > _2365:
                                    mem[_2365 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2365) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _2367 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2367) > _2367:
                                        mem[_2367 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2367) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2418 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2418) > _2418:
                                    mem[_2418 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2418) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1168 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1168) > _1168:
                                    mem[_1168 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1168) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1205 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1205) > _1205:
                                mem[_1205 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1205) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1207 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1207) > _1207:
                                    mem[_1207 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1207) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1250 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1250) > _1250:
                                mem[_1250 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1250) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _1172 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1172) > _1172:
                                        mem[_1172 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1172) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1211 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1211) > _1211:
                                    mem[_1211 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1211) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _1213 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_1213) > _1213:
                                        mem[_1213 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1213) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1254 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1254) > _1254:
                                    mem[_1254 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1254) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
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
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _2328 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2328) > _2328:
                                        mem[_2328 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2328) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2379 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2379) > _2379:
                                    mem[_2379 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2379) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                        if stor9[arg1].field_0:
                            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor9[arg1].field_0:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                            else:
                                if stor9[arg1].field_0 != 1:
                                    mem[64] = 0
                                    _2381 = mem[ceil32(stor2.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                    if ceil32(_2381) > _2381:
                                        mem[_2381 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2381) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9[arg1].field_1:
                                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                            return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2422 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2422) > _2422:
                                    mem[_2422 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2422) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if stor9[arg1].field_0:
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1176 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1176) > _1176:
                                mem[_1176 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1176) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[arg1].field_0:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                else:
                    if stor9[arg1].field_0 != 1:
                        mem[64] = 0
                        _1217 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1217) > _1217:
                            mem[_1217 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1217) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9[arg1].field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                if stor9[arg1].field_0:
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
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
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[arg1].field_0:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                else:
                    if stor9[arg1].field_0 != 1:
                        mem[64] = 0
                        _1258 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1258) > _1258:
                            mem[_1258 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1258) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9[arg1].field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1180 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1180) > _1180:
                                    mem[_1180 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1180) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
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
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1225 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1225) > _1225:
                                    mem[_1225 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1225) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1262 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1262) > _1262:
                                mem[_1262 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1262) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
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
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2340 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2340) > _2340:
                                    mem[_2340 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2340) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _2393 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2393) > _2393:
                                mem[_2393 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2393) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2395 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2395) > _2395:
                                    mem[_2395 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2395) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _2426 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2426) > _2426:
                                mem[_2426 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2426) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if stor9[arg1].field_0:
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1184 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1184) > _1184:
                                mem[_1184 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1184) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[arg1].field_0:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                else:
                    if stor9[arg1].field_0 != 1:
                        mem[64] = 0
                        _1229 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1229) > _1229:
                            mem[_1229 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1229) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9[arg1].field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                if stor9[arg1].field_0:
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
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
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[arg1].field_0:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                else:
                    if stor9[arg1].field_0 != 1:
                        mem[64] = 0
                        _1266 = mem[ceil32(stor2.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(_1266) > _1266:
                            mem[_1266 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1266) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9[arg1].field_1:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1188 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1188) > _1188:
                                    mem[_1188 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1188) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
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
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _1237 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_1237) > _1237:
                                    mem[_1237 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1237) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _1270 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_1270) > _1270:
                                mem[_1270 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1270) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
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
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
                                mem[64] = 0
                                _2352 = mem[ceil32(stor2.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                                if ceil32(_2352) > _2352:
                                    mem[_2352 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2352) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
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
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = 0
                    if stor9[arg1].field_0:
                        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if not stor9[arg1].field_0:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                        else:
                            if stor9[arg1].field_0 != 1:
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
                            while idx < stor9[arg1].field_1:
                                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
                    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor9[arg1].field_0:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 160] = Mask(248, 8, stor9[arg1].field_0)
                    else:
                        if stor9[arg1].field_0 != 1:
                            mem[64] = 0
                            _2430 = mem[ceil32(stor2.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                            if ceil32(_2430) > _2430:
                                mem[_2430 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2430) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9[arg1].field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + idx + 160] = stor9[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 160] = 32
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 192] = mem[ceil32(stor2.length.field_1) + 128]
    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) > mem[ceil32(stor2.length.field_1) + 128]:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = 0
    return Array(len=mem[ceil32(stor2.length.field_1) + 128], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + stor9[arg1].field_1 + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]), 
}



}
